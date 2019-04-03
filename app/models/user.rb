class User < ApplicationRecord
  validates :phone, numericality: {only_integer: true}

  has_many :houses
  has_many :posts
  has_many :notes
end

### ANTES
#Post.create(title: "titulo")
#Post. create!(title: "titulo")

### DURANTE
#post = Post.new(title: "")
#post.save!


### DESPUES
#post = Post.find(1)
#post.update(title: "")

#post = Post.find(2)
#post.valid? FALSE
#post.invalid? TRUE
