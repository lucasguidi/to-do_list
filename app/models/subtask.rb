class Subtask < ApplicationRecord
  belongs_to :task

  validates :title, presence: true, uniqueness: true

  validates :description, presence: true
end
