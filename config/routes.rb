Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # URLは/cals/までは固定。それ以降をパラメータで受け取り
  get 'calcs/:value1/:operator/:value2' => 'calcs#show'

end
