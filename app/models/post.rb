class Post < ActiveRecord::Base
has_many :comments
validates :title, :presence=>true
validates :description, :presence=>true
end
