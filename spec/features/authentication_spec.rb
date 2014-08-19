describe "authentication" do
  before :each do
    activate_authlogic
    @user = FactoryGirl.create(:user)
    UserSession.create(@user)
  end

  describe "login" do
    before :each do
      visit root_path
    end

    it "succeed with valid name and password" do
      fill_in "Name",     with: @user.name
      fill_in "Password", with: @user.password
      click_button "Log in"

      expect(page).to have_content "Book"
    end

    it "fail with invalid name and password" do
      fill_in "Name",     with: @user.name
      fill_in "Password", with: "oh_my_god"
      click_button "Log in"

      expect(page).not_to have_content "Book"
    end
  end

  describe "signup" do
    before :each do
      visit signup_path
    end

    it "succeed with valid params" do
      fill_in "Name",                  with: "john_black"
      fill_in "Password",              with: "secret"
      fill_in "Password confirmation", with: "secret"
      click_button "Sign up"

      expect(page).to have_content "Book"
    end

    it "fail with different pass and confirmation" do
      fill_in "Name",                  with: "john_smith"
      fill_in "Password",              with: "secret"
      fill_in "Password confirmation", with: "oh_my_god"
      click_button "Sign up"

      expect(page).to have_content "Sign up"
    end

    it "fail with invalid name" do
      fill_in "Name",                  with: "John Doe"
      fill_in "Password",              with: "secret"
      fill_in "Password confirmation", with: "secret"
      click_button "Sign up"

      expect(page).to have_content "Sign up"
    end
  end
end
