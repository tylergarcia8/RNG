module UsersHelper
  def full_name
    @user.first_name + " " + @user.last_name
  end

  def email
    @user.email
  end
end
