class ApplicationMailer < ActionMailer::Base
  # メール送信の設定
  # 送信側は自身のメールアドレスを設定
  default from: ENV["LOGIN_NAME"]
  layout 'mailer'
end
