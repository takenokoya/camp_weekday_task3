class CalcsController < ApplicationController
  #CommonモジュールのメソッドをculcsControllerで取り込む
  include Common  

  def show
    value1 = params[:value1].to_i  # params[XXX]で受け取った文字列を数字に変換して変数に代入
    value2 = params[:value2].to_i
    operator = params[:operator]
    @result = calculation(value1, operator, value2) #Commonモジュールのculculationメソッドを呼び出す
  end

end

