# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_users_on_email  (email) UNIQUE
#

class User < ApplicationRecord
	has_many :enrollments
  	has_many :events, through: :enrollments

  	validates :name, presence: true, length: {minimum: 2}
  	validates :email, presence: true, uniqueness: true, email: true
end
