module LoginMacros
  def sign_in(user)
    visit root_path
    click_link 'Login'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'
  end

  def sign_out
    visit root_path
    click_link "Logout"
  end

  def controller_sign_in(user)
    post session_path, params: { email: user.email, password: user.password }
  end

  def view_sign_in(user)
    session[:user_id] = user.id
  end


end
