module UsersHelper
  def avatar_image
    get_avatar(@user)
  end

  def get_avatar(user)
    if user.avatar.attached?
      user.avatar
    else
      image_url("avatar.png")
    end
  end
end
