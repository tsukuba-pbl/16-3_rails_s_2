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
    end
    add_swagger_documentation(
      api_version: "v1",
      base_path: "#{ENV['API_BASE_PATH']}",
      hide_documentation_path: true,
      info: {
        title: "APIドキュメント",
        description: "説明です。"
      }
    )
  end
end