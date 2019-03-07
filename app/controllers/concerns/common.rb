# 課題3:一連の値操作と計算ロジックをActiveSupport::Concernに切り出し
# モジュール名は "Common"
# メソッド名は "culculation"
module Common
  extend ActiveSupport::Concern

  def calculation
    @value1 = params[:value1].to_i  # params[XXX]で受け取った文字列を数字に変換して変数に代入
    @value2 = params[:value2].to_i
    @operator = params[:operator]
    @result = case @operator  #case文を用いてparams[:operator]で受け取る値に応じた処理を@resultに代入
              when 'addition'
                @value1 + @value2
              when 'subtraction'
                @value1 - @value2
              when 'multiplication'
                @value1 * @value2
              when 'division'
                # 課題2:ZeroDivisionErrorをresqueを用いて補足し、変数eに例外オブジェクトを格納
                # 例外が起きた場合は変数eを@resultに代入
                begin
                  "#{@value1 / @value2}..#{@value1 % @value2}" #課題1:余りも出力するよう追加
                rescue ZeroDivisionError => e
                  e
                end
              end
  end
end