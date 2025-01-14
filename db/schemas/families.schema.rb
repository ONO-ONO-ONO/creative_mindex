create_table :families, force: :cascade, charset: "utf8mb4", collation: "utf8mb4_bin" do |t|
  t.string :name, null: false # 名前
  t.string :eng_name # 英名
  t.integer :code, null: false # コード
  t.integer :parent_code # 親コード
  t.boolean :major_flg, null: false, default: true # メジャーフラグ
end

# 科（か、英: family、羅: familia）は、
# 生物分類のリンネ式階層分類における基本的階級の1つ、
# および、その階級にあるタクソンである。

# 科は、目の下・属の上にある。
# また科の上に上科（じょうか、英: superfamily）、
# 下に亜科（あか、英: subfamily）をおく場合がある。
# 上科は超科（ちょうか）と表記されることもある。
