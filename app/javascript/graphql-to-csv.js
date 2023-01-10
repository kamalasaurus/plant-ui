import graphqlToCsvRequest from "./graphql-to-csv-request"

function graphqlToCsvButton() {
  const output = document.querySelector('iframe')
    .contentWindow.document.body
    .querySelectorAll('#graphiql-container .CodeMirror-lines')
  
  const response = JSON.parse(
    Array.from(output)
      .map(e => e.textContent.replace(/\s+/g, '').replace(/xxxxxxxxxx/, '')).pop()
  )

  const query = JSON.stringify({
    "query": JSON.parse(document.querySelector('#text').textContent // replace whitespaces here!!!)
  })
  document.querySelector('#text').textContent

  debugger

  graphqlToCsvRequest(response)
}

void function() {
  window.graphqlToCsvButton = graphqlToCsvButton
}()
