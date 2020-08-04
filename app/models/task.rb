class Task < ApplicationRecord
  belongs_to :list

  has_many :subtasks

  validates :title, presence: true, uniqueness: true
end
