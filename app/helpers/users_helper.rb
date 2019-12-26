module UsersHelper
  def avatar_image
    if @user.avatar.attached?
      @user.avatar
    else
      image_url("avatar.png")
    end
  end
end
