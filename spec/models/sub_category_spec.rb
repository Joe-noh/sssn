require 'rails_helper'

describe SubCategory do
  describe "validation" do
    before :each do
      user = create(:user)
      @category1 = create(:category, user: user, name: "食費")
      @category2 = create(:category, user: user, name: "光熱費")
    end

    it "fail with ununique name" do
      create(:sub_category, category: @category1)
      sub_category = build(:sub_category, category: @category1)

      expect(sub_category).not_to be_valid
    end

    it "succeed with ununique name between two users" do
      create(:sub_category, category: @category1)
      sub_category = build(:sub_category, category: @category2)

      expect(sub_category).to be_valid
    end

    it "succeed with valid description" do
      ["", nil, "a"*100, "a"*10].each do |desc|
        sub_category = build(:sub_category, description: desc)
        expect(sub_category).to be_valid
      end
    end

    it "fail with invalid description" do
      sub_category = build(:sub_category, description: "a"*101)
      expect(sub_category).not_to be_valid
    end
  end
end
