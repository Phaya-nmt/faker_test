class Product < ActiveRecord::Base
  paginates_per 10
end
# 各モデルごとに1ページ当たりの表示件数を設定できる
