require 'rails_helper'

describe Category do
  describe "validation" do
    before :each do
      @john = create(:user, name: "john")
      @alex = create(:user, name: "alex")
    end

    it "fail with ununique names" do
      create(:category, user: @john)
      category = build(:category, user: @john)

      expect(category).not_to be_valid
    end

    it "succeed with ununique names between two users" do
      create(:category, user: @john)
      category = build(:category, user: @alex)

      expect(category).to be_valid
    end

    it "succeed with valid description" do
      ["", nil, "a"*100, "a"*10].each do |desc|
        category = build(:category, description: desc)
        expect(category).to be_valid
      end
    end

    it "fail with long description" do
      category = build(:category, description: "a"*101)
      expect(category).not_to be_valid
    end
  end
end
