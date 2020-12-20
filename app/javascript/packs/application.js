require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require('jquery')
import 'bootstrap'
import flatpickr from "flatpickr"

document.addEventListener("turbolinks:load", () => {
    flatpickr("[data-behavior = 'flatpickr']")
})