class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def current_user
    @current_user ||= User.find_by_uid(session[:user_uid])
  end

  helper_method :current_user, :signed_in?

  def signed_in?
    !!current_user
  end

  def current_user=(user)
    @current_user = user
    session[:user_uid] = @current_user.uid
    session[:user_name] = @current_user.name
  end

  def authenticate_user
    unless signed_in?
      redirect_to login_path
    end
  end

  def current_manager
    @current_manager ||= Manager.find_by_id(session[:manager_id])
  end

  helper_method :current_manager, :manager_selected?

  def manager_selected?
    !!current_manager
  end

  def current_manager=(manager)
    @current_manager = manager
    session[:manager_id] = @current_manager.id
    session[:manager_name] = @current_manager.name
    session[:manager_title] = @current_manager.title
  end

  def authenticate_manager
    unless manager_selected?
      redirect_to managers_path
    end
  end
end
