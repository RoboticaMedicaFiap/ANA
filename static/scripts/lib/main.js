const handleCopyright = () => {
  $('.footer-date').html(new Date().getFullYear())
}

const handleListeners = () => {
  $('.canvas__start').on('click', () => {
    window.location.href = '/page-1'
  })
}

const handleLoader = () => {
  setTimeout(() => $('.loader').removeClass('loader--active'), 1500)
}

const handleParticles = () => {
  Particles.init({
    selector: ".canvas__start",
    sizeVariations: 5,
    speed: 1,
    color: ["#0c5f91", "#242424", "#ff0266"],
    connectParticles: true,
  })
}

$(document).ready(() => {
  handleCopyright()
  handleListeners()
  handleLoader()
  handleParticles()
})
