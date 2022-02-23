import { Controller } from "stimulus"
import flatpickr from "flatpickr"

export default class extends Controller {
  static targets = [ "end", "start" ]

  connect() {
    flatpickr(this.endTarget, {

    })
    flatpickr(this.startTarget, {

    })
  }
}
