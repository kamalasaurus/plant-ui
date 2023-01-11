export default function graphqlToCsvRequest(body) {
  const csrfToken = getCSRFToken()

  fetch('/graph_query', {
    method: 'post',
    credentials: 'same-origin',
    headers: {
      "X-CSRF-Token": csrfToken,
      'Content-Type': 'application/json'
    },
    body: body
  })
  .then(response => {
    return Promise.all([getFilename(response), response.blob()])
  })
  .then(([filename, blob]) => {
    const url = window.URL.createObjectURL(blob, {type: 'text/csv'})
    const a = document.createElement('a')
    a.style.display = 'none'
    a.href = url
    a.download = filename
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

function getFilename(response) {
  return response.headers.get('Content-Disposition').match(/'(\d.*$)/).pop()
}
