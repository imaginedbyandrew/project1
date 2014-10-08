# module ApplicationHelper
#   def intellinav
#     nav = ''
#     if @current_user.present?
#       nav += "<li>Hello #{ @current_user.name }</li> "
#       nav += "<li>" + link_to('All users', users_path) + "</li> "
#       nav += "<li>" + link_to('Edit profile', edit_user_path(@current_user)) + "</li> "
#       nav += "<li>#{ link_to('Sign out', login_path, :method => :delete, :data => {:confirm => 'Are you sure?'}) }</li>"
#     else
#       nav += "<li>#{ link_to('Sign up', new_user_path) }</li> "
#       nav += "<li>#{ link_to('Sign in', login_path) }</li>"
#     end
#     nav
#   end
# end

module ApplicationHelper
  def intellinav
    nav = ''
    if @current_user.present?
      nav += "<p> Welcome to Binger, #{ @current_user.name }! </p>"
      nav += link_to('All users', users_path,:class => "signup") 
      nav += link_to('Edit profile', edit_user_path(@current_user),:class => "signup")
      nav += "#{ link_to('Sign out', login_path, :method => :delete, :data => {:confirm => 'Are you sure?'},:class => "signup") }"
    else
      nav += "#{ link_to('Sign up', new_user_path,:class => "signup") }"
      nav += "#{ link_to('Sign in', login_path,:class => "signup") }"
      
    end
    nav
  end
end