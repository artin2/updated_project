module ApplicationHelper
  def avatar_image(user)
    if user.avatar.attached?
      user.avatar
    else
      image_url("avatar.png")
    end
  end
end
