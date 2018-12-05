module TemplateResponse
	def success_response(data, message = '', status= 200)
	  render json: {data: data, status: status, message: message} 
	end

	def error_response(data, message = '', status= 500)
	 	render json: {data: data, status: status, message: message} 
	end
end