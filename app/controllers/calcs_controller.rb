class CalcsController < ApplicationController

  def show  # showアクション追加
    @value1 = params[:value1].to_i  # params[XXX]で受け取った文字列を数字に変換
    @value2 = params[:value2].to_i
    @operator = params[:operator]

    case @operator  #case文を用いてparams[:operator]で受け取った値に応じた処理を実施
    when 'addition'
      @result = @value1 + @value2
    when 'subtraction'
      @result = @value1 - @value2
    when 'multiplication'
      @result = @value1 * @value2
    when 'division'
      @result = @value1 / @value2
    end
  end

end
