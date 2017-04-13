namespace :robots do
  desc "Set all users' avatars to random"
  task update_avatars: :environment do
    users = User.all
    avatar_urls = AvatarScraperService.fetch_avatar_urls
    UserAvatarService.set_random_user_avatars(users, avatar_urls)
    puts "Avatars updated successfully."
  end
end
