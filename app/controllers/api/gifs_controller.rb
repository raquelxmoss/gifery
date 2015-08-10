api_gifs GET    /api/gifs(.:format)            api/gifs#index
                      POST   /api/gifs(.:format)            api/gifs#create
          new_api_gif GET    /api/gifs/new(.:format)        api/gifs#new
         edit_api_gif GET    /api/gifs/:id/edit(.:format)   api/gifs#edit
              api_gif GET    /api/gifs/:id(.:format)        api/gifs#show
                      PATCH  /api/gifs/:id(.:format)        api/gifs#update
                      PUT    /api/gifs/:id(.:format)        api/gifs#update
                      DELETE /api/gifs/:id(.:format)        api/gifs#destroy



def index
end

def create
end

def new
end

def show
end

def destroy
end