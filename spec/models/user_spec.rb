require 'rails_helper'

describe User do
  describe "validation" do
    it "fail with ununique name" do
      create(:user)
      user = build(:user)

      expect(user).not_to be_valid
    end

    it "fail with invalid name" do
      ["John Doe", "   ", "john-doe"].each do |invalid_name|
        user = build(:user, name: invalid_name)
        expect(user).not_to be_valid
      end
    end
  end
end
