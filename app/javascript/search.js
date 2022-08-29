import FlexSearch from "flexsearch"

class SearchBar extends HTMLInputElement {
  constructor () {
    super()
    this.setAttribute('type', 'text')
    this.setAttribute('id', 'search-bar')
    this.disabled = true

    this.index = new FlexSearch.Index({tokenize: 'full'})
    this.indexed = new window.Event('indexed')

    this.addEventListener('keydown', (e) => {
      let returns = this.index.search(e.value)
      this.searchables.forEach(e => e.classList.add('hidden'))
      this.getReturns(returns).forEach(e => e.classList.remove('hidden'))
      // hide seedboxes by id and reveal if they have tubes available
    })
  }

  connectedCallback() {
    const searchable = this.getData('searchable')
    this.searchables = Array.from(document.querySelectorAll(searchable))
    this.fillIndex()
  }

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
        this.disabled = false;
        return index
      });
  }

  getReturns(returns) {
    const queryString = returns.map(id => `#${id}`).join()
    return document.querySelectorAll(queryString)
  }
}

window.customElements.define('search-bar', SearchBar, {extends: 'input'})

// void function main() {
//   window.customElements.define('search-bar', SearchBar, {extends: 'input'})
// }

// void function main() {
//   const index = new FlexSearch.Index({tokenize: 'full'});

//   Promise.resolve(index)
//     .then(async index => {
//       await Promise.all(
//         Array.from(document.querySelectorAll('.tube'))
//           .map(async tube => {
//             const id = tube.getAttribute('data-id');
//             const item = tube.getAttribute('data-item');
//             return await index.add(id, item);
//           })
//         );
//       return index;
//     })
//     .then(index => {
//       document.querySelector('#search-bar').disabled = false;
//     });

//   // add input field + trigger with keystroke events + debounce
//   // display all tube boxes to none
//   index.search();
//   // re-display tube boxes where tubes are visible
// }();
