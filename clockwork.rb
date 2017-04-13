require 'clockwork'
require_relative './config/boot'
require_relative './config/environment'

include Clockwork

handler do |job|
  puts "Running #{job}"
end

every(10.seconds, "Update avatars") do
  users = User.all
  avatar_urls = AvatarScraperService.fetch_avatar_urls
  UserAvatarService.set_random_user_avatars(users, avatar_urls)
end