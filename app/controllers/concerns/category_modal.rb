module CategoryModal
  extend ActiveSupport::Concern

  # 共通で使いたいメソッド
  def shared_method
    @master_selecta = [
      { name: "ドメイン", value: "Domain" },
      { name: "界", value: "Kingdom" },
      { name: "上門", value: "SuperPhylum" },
      { name: "門", value: "Phylum" },
      { name: "亜門", value: "SubPhylum" },
      { name: "上綱", value: "SuperClasses" },
      { name: "綱", value: "Classes" },
      { name: "亜綱", value: "SubClasses" },
      { name: "下綱", value: "InfraClasses" },
      { name: "上目", value: "SuperOrder" },
      { name: "目", value: "Order" },
      { name: "亜目", value: "SubOrder" },
      { name: "下目", value: "InfraOrder" },
      { name: "上科", value: "SuperFamily" },
      { name: "科", value: "Family" },
      { name: "亜科", value: "SubFamily" },
      { name: "属", value: "Genuses" },
      { name: "亜属", value: "SubGenuses" },
      { name: "種", value: "Species" },
      { name: "亜種", value: "SubSpecies" }
    ].map { |item| OpenStruct.new(item) }
  end

  def category_create(items, master_selecta, set_form_object)
    # master_selectaから、テーブル名と小文字版の文字列をそれぞれ取得
    master = master_selecta.constantize.lower_case_table_name
    master_table = master_selecta

    # 新レコードのcodeとsortを準備
    last_record = master_selecta.constantize.all.last
    last_code = last_record.code
    last_code_initial = last_code[0]
    last_code_not_initial = last_code.gsub(/^./, "")
    new_code = last_code_initial + "#{last_code_not_initial.to_i + 1}"
    items[:code] = new_code
    items[:sort] = last_record.sort.to_i + 1

    # 新規作成 実行
    new_category = master_table.constantize.new(items)
    if new_category.save
      respond_to do |format|
        format.turbo_stream do
          render turbo_stream: turbo_stream.replace(
            "domain-select-frame",
            partial: "domain_select",
            locals: { master: master, master_table: master_table, form_object: set_form_object }
          )
        end
        format.html { redirect_to animals_path, notice: "#{master_table} was successfully created." }
      end
    else
      render :new, status: :unprocessable_entity
    end
  end
end
