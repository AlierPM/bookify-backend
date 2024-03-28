class SessionsController < DeviseTokenAuth::SessionsController
    def create
      super do |resource|
        if resource && response_json[:data]
          response_json[:data][:role] = resource.role
        end
      end
    end
end
  