module CategoryModal
  extend ActiveSupport::Concern

  # 共通で使いたいメソッド
  def shared_method
    @message = "これはconcernsで定義されたメソッドです"
    @aaa = "aaaaa"
  end

  def category_create(items, master_selecta)
    # ToDo: 各カテゴリー事に受け取ることを想定とした作りに直す
    # binding.pry
    master_selecta
    master = "domain"
    master_table = "Domain"

    new_category = master_table.constantize.new(items)

    if new_category.save
      respond_to do |format|
        format.turbo_stream do
          render turbo_stream: turbo_stream.replace(
            "domain-select-frame",
            # partial: "/component/collection_select",
            partial: "domain_select",
            locals: { master: master, master_table: master_table, form_object: Animal.new }
            # ToDo: editでも使用する想定に作り替える
          )
        end
        format.html { redirect_to animals_path, notice: "#{master_table} was successfully created." }
      end
    else
      render :new, status: :unprocessable_entity
    end
  end
end
