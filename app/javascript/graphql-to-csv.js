import graphqlToCsvRequest from "./graphql-to-csv-request.js"

export default function graphqlToCsvButton() {
  const output = document.querySelector('iframe')
    .contentWindow.document.body
    .querySelectorAll('#graphiql-container .CodeMirror-lines')
  
  const response = JSON.parse(
    Array.from(output)
      .map(e => e.textContent.replace(/\s+/g, '').replace(/xxxxxxxxxx/, '')).pop()
  )

  graphqlToCsvRequest(response)
}

void function() {
  window.graphqlToCsvButton = graphqlToCsvButton
}()
