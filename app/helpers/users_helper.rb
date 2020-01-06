module UsersHelper
  # Returns the Gravatar for the given user.
  def gravatar_for(user, options = { size: 80 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end

  # todo Do avatars attributes+change(optional)
  #def avatar_for(user, options = { size: 50 })
  #  if user.nil? or user.avatar.nil?
  #    image_tag('medium/missing.png', :size => 50)
  #  else
  #    image_tag(user.avatar.thumb, :size => :thumb)
  #  end
  #end
end