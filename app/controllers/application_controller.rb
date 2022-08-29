class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/magazines" do
    magazines = Magazine.all
    magazines.to_json
  end

  get "/magazines/:id" do
    magazine = Magazine.find(
    params[:id]
    )
    magazine.to_json
  end

  post "/magazines" do
    magazine = Magazine.create(
      title:params[:title],
      description:params[:description],
      category:params[:category],
      image:params[:image],
      user_id:params[:user_id],
    )
    magazine.to_json
  end

  get "/users" do
    users = User.all
    users.to_json
  end

  get "/users/:id" do
    user = User.find(
    params[:id]
    )
    user.to_json
  end

  get "/users/:name" do
    user = User.find_by(
    params[:name]
    )
    user.to_json
  end

  post "/users" do
    user = User.create(name:params[:name], user_type:params[:user_type], avatar:params[:avatar])
    user.to_json
  end

  delete "/users/:id" do
    user = User.find(
    params[:id]
    )
    user.destroy
  end

end
