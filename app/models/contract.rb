class Contract < ApplicationRecord
	validates :emailid, email_format: { message: "doesn't look like an email address" }, presence: true, uniqueness: true
	validates :title, :ownername ,:nameofretail, :addofretail, :image, :iproof, :contactno, presence: true
	validates :title, length: {maximum: 3}
	validates :ownername, length: {minimum: 5}
	validates :nameofretail, length: {minimum: 3}
	validates :addofretail, length: {maximum: 300}, uniqueness: true
	validates :contactno, numericality: { only_integer: true }, uniqueness: true, length: {is: 10}


	mount_uploader :image, ImageUploader
	mount_uploader :iproof, IproofUploader



end
 