class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
          validates :firstname, presence: true, length: {maximum: 65}
          validates :lastname, presence: true, length: {maximum: 65}

	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, 
	:default_url => "/assets/default_image.png"
	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/


end
