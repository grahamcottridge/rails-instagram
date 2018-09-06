module ApplicationHelper
  def avatar_url user
    return user.image if user.image
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    avatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
  end
end
