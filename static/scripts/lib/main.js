const handleCopyright = () => {
  $('.footer-date').html(new Date().getFullYear())
}

const handleListeners = () => {
  $('.interactor__start').on('click', (e) => {
    console.log()
    window.location.href = `/page-${Number(e.target.dataset.step) + 1}`
  })
}

const handleLoader = () => {
  setTimeout(() => $('.loader').removeClass('loader--active'), 1500)
}

const handleParticles = () => {
  Particles.init({
    selector: ".canvas__start",
    color: ["#faebd7", "#2e295e", "#ff0266"],
    connectParticles: true,
  })
}

$(document).ready(() => {
  handleCopyright()
  handleListeners()
  handleLoader()
  handleParticles()
})
