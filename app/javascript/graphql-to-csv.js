export default function graphqlToCsvButton() {
  const output = document.querySelector('iframe')
    .contentWindow.document.body
    .querySelectorAll('#graphiql-container .CodeMirror-lines')
  
  const response = JSON.parse(
    Array.from(output)
      .map(e => e.textContent.replace(/\s+/g, '').replace(/xxxxxxxxxx/, '')).pop()
  )
  // const responseNode = document.querySelector("#graphiql-container > div > div > div.editorBar > div.resultWrap > section > div > div.CodeMirror-scroll > div.CodeMirror-sizer > div > div > div")
  // const responseString = JSON.parse(
  //   Array.from(response.children)
  //     .filter(el => el.style.display !== 'none')
  //     .map(e => e.textContent.replace(/\s+/g, ''))
  //     .join('')
  // )
}

void function() {
  window.graphqlToCsvButton = graphqlToCsvButton
}()
