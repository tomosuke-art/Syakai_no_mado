class InquiriesController < ApplicationController
  def new
    @inquiry = Inquiry.new 
    # @インスタンス変数名 = 値
    # Inquiryモデルを参考にインスタンスを作成
  end

  def confirm
    @inquiry = Inquiry.new(inquiry_params)
    # 無事保存できたら確認ページへ遷移
    if @inquiry.save
      render "confirm"
    #バリデーションに引っかかったら再度入力フォームページを表示する処理
    else
      render :new
    end
  end

  # hidden_field
  # 見た目上みえない状態でパラメータとしてデータを渡すことが可能
  # f.hidden_field :page, :set  #＝ <input id="page_set" name="page[set]" type="hidden" />


  def thanks
    # InquiryMailer の received_emailメソッドを呼び出し
    # deliver_nowでメールを即時送信
    @inquiry = Inquiry.new(inquiry_params)
    InquiryMailer.received_email(@inquiry).deliver_now
  end

  # ストロングパラメーター:不正なパラメータの入力を防いでくれる,意図しないデータの登録・更新を防ぐ
  # 構文
  # private
  # def モデル名_params
  #   params.require(:モデル名).permit(:カラム１,：カラム２,・・・)
  # end

  private
    def inquiry_params
      params.require(:inquiry).permit(:name, :email, :relationship, :content)
    end
end
