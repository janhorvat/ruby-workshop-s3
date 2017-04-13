class UserAvatarService
  def self.set_random_user_avatars(users, avatar_urls)
    users.each do |user|
      avatar_url = avatar_urls.sample
      user.update(avatar_url: avatar_url)
    end
  end
end