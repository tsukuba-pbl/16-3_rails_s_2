module MediaSite
  class API < Grape::API
    version 'v1', using: :path
    format :json
    prefix :api
    
  class ArticleEntiry < Grape::Entity
    expose :id
    expose :created_at
  end
    
    resource :articles do
      # descには説明を書く
      desc 'Return public articles.'
      get :public do
        present Micropost.all , with: ArticleEntiry
      end
    end
    
  end
end