class Domain < ApplicationRecord
  # ドメイン

  # optional: trueをつけることで、Domain を保存する際に Animal の存在を強制しなくなります。
  belongs_to :animal, foreign_key: :domain_code, primary_key: :code, optional: true
end
