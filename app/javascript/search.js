import FlexSearch from "flexsearch";

void function main() {
  const index = new FlexSearch.Index({tokenize: 'full'});

  Promise.resolve(index)
    .then(async index => {
      await Promise.all(
        Array.from(document.querySelectorAll('.tube'))
          .map(async tube => {
            const id = tube.getAttribute('data-id');
            const item = tube.getAttribute('data-item');
            await index.add(id, item);
          })
        );
      return index;
    })
    .then(index => {
      document.querySelector('#search-bar').disabled = false;
      debugger;
    })

  // add input field + trigger with keystroke events + debounce
  // display all tube boxes to none
  index.search();
  // re-display tube boxes where tubes are visible
}();
