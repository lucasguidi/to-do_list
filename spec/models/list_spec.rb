require "rails_helper"

RSpec.describe List, type: :model do
    it "has a title" do
        list = List.new(title: "Testing list title", description: "Testing list description")
        expect(list.title).to eq("Testing list title")
      end
  end

RSpec.describe List, type: :model do
    it "has a description" do
        list = List.new(title: "Testing list title", description: "Testing list description")
        expect(list.description).to eq("Testing list description")
    end
end