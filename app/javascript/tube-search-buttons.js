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

  window.criticalButton = criticalButton;
  window.clearButton = clearButton;
}()
