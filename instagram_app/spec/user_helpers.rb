  def sign_up
    visit('/users/sign_up')
    fill_in 'user_email', with: 'user@gmail.com'
    fill_in 'user_password', with: '123456abc.'
    fill_in 'user_password_confirmation', with: '123456abc.'
    click_button 'Sign up'
  end

  def login(user)
    visit("/users/sign_in")
    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'Log in'
  end
