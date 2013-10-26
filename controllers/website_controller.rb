class WebsiteController < ApplicationController
  helpers WebsiteHelpers

  before do
    set_active_navigation_link(NavigationLink.news_id)
  end

  get /(^\/$|^\/news$)/ do
    @title = "Liberta"
    erb :'index.html'
  end

  get '/login' do
    @title = "Login"
    erb :'login.html'
  end

  post '/login_user' do
    username = params[:username]
    password = params[:password]
    #Auth logic here, currently we skip it
    session[:user] = username
    @user = username
    erb :'profile.html'
  end
end