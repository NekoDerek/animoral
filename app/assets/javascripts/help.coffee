acc = document.getElementsByClassName('accordion')
i = undefined
i = 0
while i < acc.length
  acc[i].addEventListener 'click', =>
    @classList.toggle 'active'
    panel = @nextElementSibling
    if panel.style.maxHeight
      panel.style.maxHeight = null
    else
      panel.style.maxHeight = panel.scrollHeight + 'px'
    return
  i++
