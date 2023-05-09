const handleCopyright = () => {
  $('.footer-date').html(new Date().getFullYear())
}

const handleListeners = () => {
  $('.stepper').on('click', (e) => {
    window.location.href = `/page-${e.target.dataset.step}`
  })
}

const handleLoader = () => {
  setTimeout(() => $('.loader').addClass('loader--inactive'), 1500)
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
