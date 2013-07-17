module UsersHelper

  # Returns the Gravatar (http://gravatar.com/) for the given user
#  def gravatar_for(user, options = { size: 50 })
#    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
#    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
#    image_tag(gravatar_url, alt: user.name, class: "gravatar")
#  end
  
  def gravatar_for email, options = {}
    options = {:alt => 'avatar', :class => 'avatar', :size => 80}.merge! options
    id = Digest::MD5::hexdigest email.strip.downcase
    url = 'https://secure.gravatar.com/avatar/' + id + '.jpg?s=' + options[:size].to_s
    options.delete :size
    image_tag url, options
  end

end
