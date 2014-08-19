require 'rails_helper'

describe Recording do
  describe "validation" do
    before :each do
      @user     = create(:user)
      @category = create(:category, user: @user)
    end

    it "fail with empty payday" do
      recording = build(:recording, payday: nil)
      expect(recording).not_to be_valid
    end

    it "secceed with valid payday" do
      [Date.today, Time.now].each do |date|
        recording = build(:recording, user: @user,
                          category: @category, payday: date)
        expect(recording).to be_valid
      end
    end
  end
end
