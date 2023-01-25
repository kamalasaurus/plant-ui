export default function blankTubes(json) {
  const csv = Object.keys(json).reduce((arr, seedbox_name) => {
      const tubes = json[seedbox_name]
      tubes.forEach((blank_position) => arr.push([seedbox_name, blank_position]))
      return arr
    }, [['seedbox', 'position']])
    .map((row) => row.join(', '))
    .join('\n')

  const blob = new Blob([csv], {type: 'text/csv'})

  const url = window.URL.createObjectURL(blob, {type: 'text/csv'})
  const a = document.createElement('a')
  a.style.display = 'none'
  a.href = url
  a.download = 'blank_tubes.csv'
  document.body.appendChild(a)
  a.click()
  a.remove()
}