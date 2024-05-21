// Import Stimulus for JavaScript controllers
import { Application } from "@hotwired/stimulus"

// Start Stimulus
const application = Application.start()
application.debug = false
window.Stimulus = application

// Import Chartkick and Chart.js
import Chartkick from "chartkick"
import Chart from "chart.js"
import "chartkick/chart.js"


// Configure Chartkick to use Chart.js
Chartkick.use(Chart)

// Export application
export { application }
