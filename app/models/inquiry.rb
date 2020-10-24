class Inquiry < ApplicationRecord
  # validatesメソッド: Railsでバリデーションの設定をしたい際に使用

  # 名前入力必須、1文字以上160字未満
  validates :name, presence: true, length: { in: 1..160 }
  # email入力必須
  validates :email, presence: true
  # 最大255字まで
  validates :content, length: { maximum: 255 }
end
