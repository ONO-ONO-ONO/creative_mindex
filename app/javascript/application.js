// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails

//= require jquery3
//= require popper
//= require bootstrap
import "@rails/ujs";
import "controllers"
import "@hotwired/turbo-rails"
import "@fortawesome/fontawesome-free";

import { Application } from "@hotwired/stimulus"

const application = Application.start()

// controllers フォルダ内の Stimulus コントローラを自動的にロード
import * as controllers from "./controllers"
for (const name in controllers) {
  application.register(name, controllers[name])
}
