class Relationship < ApplicationRecord
  
  #class_name: "User"でUserモデルを参照
  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User"
  #本来フォローしたユーザーとフォローされたユーザーは同じUserからもってきたいが
  # blings_to :userとするとどっちがどっちのユーザーかわからなくなるので、分けている
  
  
end
