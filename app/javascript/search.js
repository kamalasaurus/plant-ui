import FlexSearch from "flexsearch"

class SearchBar extends HTMLElement {
  constructor () {
    super()

    // create input field
    this.shadow = this.attachShadow({mode: 'open'})
    this.input = document.createElement('input')
      this.input.type = 'text'
      this.input.disabled = true
      this.input.style = `display: block; border-radius: 10px; border: solid 1px dimgray; width: 100%; height: 1em; line-height: 2em; padding: 1em;`
    this.shadow.appendChild(this.input)

    // initialize index
    this.index = new FlexSearch.Index({tokenize: 'full'})
  }

  // add data to index and keyup data to input when element attached to DOM
  connectedCallback() {
    this.searchable = this.dataset.searchable
    this.searchables = Array.from(document.querySelectorAll(this.searchable))

    this.searchableparent = this.dataset.searchableparent
    this.searchableparents = Array.from(document.querySelectorAll(this.searchableparent))

    this.input.addEventListener('keyup', this.keyup.bind(this))
    this.fillIndex()
  }

  // keyup event for input field
  keyup(e) {
    if (e.target.value === '')
      this.searchables.forEach(e => e.classList.remove('no-click'))
    else {
      const returns = this.index.search(e.target.value, Infinity)
      this.searchables.forEach(e => e.classList.add('no-click'))
      this.getReturns(returns).forEach(e => e.classList.remove('no-click'))
    }
    this.checkSearchableParents() // this is kind of a shoehorn pattern, just calling it here
  }

  // fill flexsearch index with data from tubes' index.html.erb (.tube element)
  async fillIndex() {
    return await Promise.resolve(this.index)
      .then(async index => {
        await Promise.all(
          this.searchables
            .map(async tube => {
              const id = tube.getAttribute('id')
              const item = tube.getAttribute('data-item')
              return await index.add(id, item)
            })
          )
        return index
      })
      .then(index => {
        this.input.disabled = false
        this.input.focus()
        return index
      });
  }

  // get elements from DOM if search index says they have relevant information
  getReturns(returns) {
    const queryString = returns.map(id => `#${id}`).join()
    return document.querySelectorAll(queryString)
  }

  // show/hide seedbox if they have all hidden or some visible children
  checkSearchableParents() {
    this.searchableparents.forEach(p => {
      p.classList.remove('hidden')
      if (Array.from(p.querySelectorAll(this.searchable)).every(c => c.classList.contains('no-click')))
        p.classList.add('hidden')
    })
  }
}

window.customElements.define('search-bar', SearchBar)

export default SearchBar
