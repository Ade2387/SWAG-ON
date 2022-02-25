import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "clear", "search"]

  connect() {
    console.log("hello from card_controller!");
  }
  clear() {
    this.searchTarget.value = "";
    this.clearTarget.style.visibility = "hidden";
  }
  search() {
    if(this.searchTarget.value && this.clearTarget.style.visibility != "visible"){
      this.clearTarget.style.visibility = "visible";
    } else if(!this.searchTarget.value) {
      this.clearTarget.style.visibility = "hidden";
    }
  }
}




// const clearIcon = document.querySelector(".clear-icon");
// const searchBar = document.querySelector(".search");

  // searchBar.addEventListener("keyup", () => {
    // if(searchBar.value && clearIcon.style.visibility != "visible"){
    //   clearIcon.style.visibility = "visible";
    // } else if(!searchBar.value) {
    //   clearIcon.style.visibility = "hidden";
    // }
  // });

  // clearIcon.addEventListener("click", () => {
    // searchBar.value = "";
    // clearIcon.style.visibility = "hidden";
  // })
