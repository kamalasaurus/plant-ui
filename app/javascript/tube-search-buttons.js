void function() {
  const search_bar = document.querySelector('search-bar')

  function criticalButton() {
    search_bar.input.value = 'critical'
    search_bar.input.dispatchEvent(new KeyboardEvent('keyup'))
  }

  function clearButton() {
    search_bar.input.value = ''
    search_bar.input.dispatchEvent(new KeyboardEvent('keyup')) 
  }

  function generateCsvButton() {
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
      redirect: 'follow',
      body: body
    })
  }

  // the rails test environment doesn't generate csrf tokens, so have
  // to guard the query
  function getCSRFToken() {
    const csrfToken = document.querySelector("[name='csrf-token']")
    return csrfToken ? csrfToken.content : null
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
  
  window.criticalButton = criticalButton
  window.clearButton = clearButton
  window.generateCsvButton = generateCsvButton
}()
