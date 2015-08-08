class CommentsController < ApplicationController
	load_and_authorize_resource
	def create
		@product = Product.find(params[:product_id])
		@comment = @product.comments.new(comment_params)
		@comment.user = current_user
		respond_to do |format|
			if @comment.save
				format.html { redirect_to @product, notice: 'Thanks for your review' }
			else
				format.html {redirect_to @product, notice: 'Your review could not be saved'}
			end
		end
	end

	def destroy
		@comment = Comment.find(params[:id])
		product = @comment.product
		@comment.destroy
		redirect_to product
	end

	private
		def comment_params
			params.require(:comment).permit(:user_id, :body, :rating)
		end
end
