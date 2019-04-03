class City < ApplicationRecord
  validates :name, :country, presence: true
  validates :name, length: { minimum: 3 }
  has_many :houses 
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
