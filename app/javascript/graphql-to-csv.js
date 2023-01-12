import graphqlToCsvRequest from "./graphql-to-csv-request"

function graphqlToCsvButton() {
  const query = {
    "query": window.lastResponse
  }

  graphqlToCsvRequest(JSON.stringify(query))
}

void function() {
  window.lastResponse = {}
  window.graphqlToCsvButton = graphqlToCsvButton
}()
