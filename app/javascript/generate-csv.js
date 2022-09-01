export default function generateCsv(search_bar) {
  const csrfToken = getCSRFToken()
  const title = search_bar.input.value
  const body = getBody(title)
  
  fetch('/generate_csv', {
    method: 'post',
    credentials: 'same-origin',
    headers: {
      "X-CSRF-Token": csrfToken,
      'Content-Type': 'application/json'
    },
    body: body
  })
  .then(response => response.blob())
  .then(blob => {
    const url = window.URL.createObjectURL(blob, {type: 'text/csv'})
    const a = document.createElement('a')
    a.style.display = 'none'
    a.href = url
    a.download = getFilename(title)
    document.body.appendChild(a)
    a.click()
    a.remove()
  })
}

// the rails test environment doesn't generate csrf tokens, so have
// to guard the query
function getCSRFToken() {
  const csrfToken = document.querySelector("[name='csrf-token']")
  return csrfToken ? csrfToken.content : null
}

function getFilename(title) {
  const [month, day, year] = (new Date).toLocaleDateString().split('/')
  const suffix = title.replace(/' '/g, '_')
  return `${[year, month.padStart(2, '0'), day.padStart(2, '0'), suffix].join('_')}.csv`
}

function getBody(title) {
  const body = Array.from(document.querySelectorAll('.tube:not(.no-click)'))
    .map(tube => {
      return {
        id: tube.id,
        item: tube.getAttribute('data-item')
      }
    })
    .reduce((collection, tube) => {
      return collection['selected_tubes'].push(tube), collection
    }, {
      title,
      selected_tubes: []
    })
  
  return JSON.stringify(body)
}