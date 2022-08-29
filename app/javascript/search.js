import FlexSearch from "flexsearch";

void function main() {
  const index = new FlexSearch.Index({tokenize: 'full'});

  Promise.resolve(index)
    .then(index => {
      Array.from(document.querySelectorAll('.tube'))
        .forEach(tube => {
          const id = tube.getAttribute('data-id');
          const item = tube.getAttribute('data-item');
          index.add(id, item);
         });
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
