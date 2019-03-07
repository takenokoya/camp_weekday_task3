class CalcsController < ApplicationController
  #CommonモジュールのメソッドをculcsControllerで取り込む
  include Common  

  def show
     calculation  #Commonモジュールのculculationメソッドを呼び出す
  end

end

