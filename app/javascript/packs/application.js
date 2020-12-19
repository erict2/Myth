import 'bootstrap'
import flatpickr from "flatpickr"

require("@rails/ujs").start()
require("jquery")
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

document.addEventListener("turbolinks:load", () => {
    flatpickr("[data-behavior = 'flatpickr']")
})