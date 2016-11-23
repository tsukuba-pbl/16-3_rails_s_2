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
      desc 'Return public articles.',entity: ArticleEntiry
      get :public do
        present Micropost.all , with: ArticleEntiry
      end
      
      desc 'c user'
      params  do
        requires :room_id ,type: String, desc: 'user n'
        requires :layout ,type: Array do
          optional :id, type: String
          optional :left, type: Float
          optional :top, type: Float
          optional :deg, type: Float
        end
      end
      post "aasx" do
        mm = FtLayout.create({:room_id => params[:room_id]})
        aa = params[:layout]
        aa.each do |layout|
          mm.ft_item.create({:item_id => layout[:id],:top => layout[:top] ,:left => layout[:left],:deg => layout[:deg]})
        end
        p params
        mm.id
      end
    end
  end
end