class V1::UsersController < V1::BaseController
	def index
		@users = User.all
		data = ActiveModel::Serializer::CollectionSerializer.new(@users, each_serializer: UserSerializer)
		success_response data, "asdasd" 
	end
	def show
		@user = User.find_by id: params[:id]
		success_response @user, "asdasd" 
	end
end
