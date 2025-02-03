import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["tab", "content", "another"]

  connect() {
    this.showTab(0) // 初回ロード時に最初のタブを表示
  }

  change(event) {
    const index = event.currentTarget.dataset.index
    this.showTab(index)
  }

  showTab(index) {
    // 全てのタブボタンから `tab_active` クラスを削除
    this.tabTargets.forEach(tab => tab.classList.remove("tab_active"))

    // クリックされたタブボタンに `tab_active` クラスを追加
    this.tabTargets[index].classList.add("tab_active")

    // // 全てのタブコンテンツを非表示
    // this.contentTargets.forEach(content => content.classList.add("hidden"))

    // // 選択されたタブのコンテンツを表示
    // this.contentTargets[index].classList.remove("hidden")

    // タブ1で表示する物のON/OFFロジック
    if (index == 0) {
      this.anotherTargets.forEach(another => another.classList.remove("hidden"))
      this.anotherTargets.forEach(another => another.classList.add("active"))
    } else {
      this.anotherTargets.forEach(another => another.classList.remove("active"))
      this.anotherTargets.forEach(another => another.classList.add("hidden"))
    }
  }
}
