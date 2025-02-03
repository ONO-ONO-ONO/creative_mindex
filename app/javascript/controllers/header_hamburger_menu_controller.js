import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["menu"]

  toggle() {
    console.log("ハンバーガーメニューがクリックされました！") // ← デバッグ用
    this.menuTarget.classList.toggle("hidden")
  }
}
