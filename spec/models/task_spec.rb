require "rails_helper"

RSpec.describe Task, type: :model do
    it "has a title" do
        task = Task.new(title: "Testing task title", description: "Testing task description")
        expect(task.title).to eq("Testing task title")
      end
  end

RSpec.describe Task, type: :model do
    it "has a description" do
        task = Task.new(title: "Testing task title", description: "Testing task description")
        expect(task.description).to eq("Testing task description")
    end
end