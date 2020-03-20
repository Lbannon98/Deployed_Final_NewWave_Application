require 'news-api'
require 'open-uri'
require 'open_weather'

class PagesController < ApplicationController
  before_action :set_breadcrumbs

  def index

    @topHeadlines = newsApiHeadlines()
    @weather = weatherApi()

    set_cookie()
    show_cookie()

    if !current_user && !current_editor
      reset()
    end

  end

  def newsApiHeadlines

    newsApi = News.new("a28f25dce0fd4cdeb9513908b17f4d4c")
    headlines = newsApi.get_top_headlines(country: 'ie')

  end

  def weatherApi

    options = { units: "metric", APPID: "e70cadf7fe0bb13f9ba7f1f1ead47aff" }
    request = OpenWeather::Current.city("Dublin, IE", options)

    temp = request['main']['temp']

  end

  def reset
      reset_session
      @breadcrumbs = nil
  end

  def set_cookie
    if current_user
      cookies[:user_name] = current_user.name
    elsif current_editor
      cookies[:user_name] = current_editor.name
    else
      cookies[:user_name] = nil
    end
  end

  def show_cookie
    @user_name = cookies[:user_name]
  end

  def delete_cookie
    cookie.delete :user_name
  end

  private
  def set_breadcrumbs
    if session[:breadcrumbs]
      @breadcrumbs = session[:breadcrumbs]
    else
      @breadcrumbs = Array.new
    end

    @breadcrumbs.push(request.base_url)

    if @breadcrumbs.count > 1
      @breadcrumbs.shift
    end

    session[:breadcrumbs] = @breadcrumbs

  end

end
