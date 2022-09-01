import generateCsv from "./generate-csv.js"

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

  function csvButton() {
    generateCsv(search_bar)
  }
  
  window.criticalButton = criticalButton
  window.clearButton = clearButton
  window.csvButton = csvButton
}()
