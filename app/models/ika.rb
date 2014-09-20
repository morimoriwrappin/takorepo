class Ika < ActiveRecord::Base
  belongs_to :user
  has_many :takos

  has_attached_file :background
  validates_attachment_content_type :background, :content_type => /\Aimage\/.*\Z/
end
