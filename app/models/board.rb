# == Schema Information
#
# Table name: boards
#
#  id         :integer          not null, primary key
#  comment    :text(65535)
#  name       :string(255)
#  title      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Board < ApplicationRecord
  validates :name, presence: true, length: { maximum: 10 }
  validates :title, presence: true, length: { maximum: 30 }
  validates :comment, presence: true, length: { maximum: 1000 }
end
