class Application < Sinatra::Base
use Rack::MethodOverride

  get '/' do
    @brands = Brand.all
    erb :index
  end

  get '/new' do
    erb :new
  end


  get '/:id/edit' do
    @brand = Brand.find(params["id"])
    erb :edit
  end

  get "/:id" do
    @brand = Brand.find(params["id"])
    erb :show
  end

  post '/' do
    Brand.create(params)
    redirect '/'
  end

 put "/:id" do
   brand = Brand.find(params["id"])
   brand.update({
     name: params["name"]
   })
   redirect "/"
 end

 delete "/:id" do
   brand = Brand.find(params["id"])
   brand.destroy

   redirect "/"
 end
end
