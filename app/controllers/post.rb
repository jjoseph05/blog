get '/' do
  @posts = Post.all
  erb :index
end

get '/posts/new' do
  # allows user create a new post by showing a form
  erb :new
end

get '/posts/:id' do
  @post = Post.find(params[:id])
  #show user post by specific id
  erb :show
end

get '/posts/:id/edit' do
  # get a user a post by id in order to makes changes on the form
  erb :edit   
end

post '/posts/:id/update' do
  # allows user to update post via form and submit for to database
  erb :show  # look into difference between erb/render and 'redirect to'
end

post '/posts' do
  # allow user to create post via form and sumbit form to the database
  erb :show  # look into difference between erb/render and 'redirect to'
end

post '/posts/:id/delete' do
  # allows user to delete post from database
  erb :index  # look into difference between erb/render and 'redirect to'
end
