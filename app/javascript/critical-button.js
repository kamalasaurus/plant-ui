void function() {
  function criticalButton() {
    search_bar = document.querySelector('search-bar')
    search_bar.input.value = 'critical'
    search_bar.input.dispatchEvent(new KeyboardEvent('keyup'))
  }

  window.criticalButton = criticalButton;
}()
