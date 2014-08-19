module AuthHelper
  def login_with(user)
    visit root_path

    fill_in "Name",     with: @user.name
    fill_in "Password", with: @user.password
    click_button "Log in"
  end

  def logout
    page.driver.submit :delete, logout_path, {}
  end
end
