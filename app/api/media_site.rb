module MediaSite
  class API < Grape::API
    version 'v1', using: :path
    format :json
    prefix :api
    
    resource :articles do
      # descには説明を書く
      desc 'Return public articles.'
      get :public do
        Micropost.all
      end
    end
    
  end
end