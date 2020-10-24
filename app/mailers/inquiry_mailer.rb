class InquiryMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.inquiry_mailer.received_email.subject
  #
  def received_email(user)
    # @greeting = "Hi"

    # mail to: "to@example.org"
    @user = user
    # to: は送信先のメールアドレス(入力フォームにて記入されたメールアドレス)
    mail to: @user.email, 
    # subject: 件名
         subject: "【#{@user.name}様の社会の窓についてお知らせがあります】"
  end
end
