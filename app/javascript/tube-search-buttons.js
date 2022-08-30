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

  function renderCsvButton() {
    const query = Array.from(document.querySelectorAll('.tube:not(.no-click)'))
      .map() // get the relevant tubes or seeds to look up by?
      .reduce() // convert to xml http request post object, or fetch?
    new XMLHttpRequest(/* */ query)
  }
  
  window.criticalButton = criticalButton
  window.clearButton = clearButton
  window.renderCsvButton = renderCsvButton
}()
