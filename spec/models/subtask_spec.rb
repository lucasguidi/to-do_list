require "rails_helper"

RSpec.describe Subtask, type: :model do
    it "has a title" do
        subtask = Subtask.new(title: "Testing subtask title", description: "Testing subtask description")
        expect(subtask.title).to eq("Testing subtask title")
      end
  end

RSpec.describe Subtask, type: :model do
    it "has a description" do
        subtask = Subtask.new(title: "Testing subtask title", description: "Testing subtask description")
        expect(subtask.description).to eq("Testing subtask description")
    end
end