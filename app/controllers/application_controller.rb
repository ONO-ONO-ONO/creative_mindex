class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  before_action :set_basic_header_visibility

  private

  # デフォルトはヘッダーを表示する
  def set_basic_header_visibility = @show_basic_header = true
end
