create_table :families, force: :cascade, charset: "utf8mb4", collation: "utf8mb4_bin" do |t|
  t.string :name, null: false # 名前
  t.string :code, null: false # コード
end

# 科（か、英: family、羅: familia）は、
# 生物分類のリンネ式階層分類における基本的階級の1つ、
# および、その階級にあるタクソンである。

# 科は、目の下・属の上にある。
# また科の上に上科（じょうか、英: superfamily）、
# 下に亜科（あか、英: subfamily）をおく場合がある。
# 上科は超科（ちょうか）と表記されることもある。
