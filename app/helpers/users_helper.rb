module UsersHelper


  def dispatcher
    current_user.dispatcher?
  end
end
