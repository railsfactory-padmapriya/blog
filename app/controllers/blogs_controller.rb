class BlogsController < ApplicationController

layout 'index1'
  def index
	
  end

  def signin
	
  end

  def signup
	
  end

  def new_post
	
  end

  def show_post
	@posts=Post.find:all
  end

  def expand_post
	@post = Post.find(params[:id])
	@a=@post.comments
#@comments = @post.comments.paginate :page => params[:page],:per_page=>"2"

	@comments=@a.paginate :page=>params[:page],:per_page=>"1"
	@q=@comments.length
  end

  def adding
	 @q=params[:id]
	 @post=Post.find(params[:id])
  end

  def save
	@q=params[:id]
	@post=Comment.new(params[:data])
	if @post.name!="" && @post.comment!=""
		@post.post_id=@q
		@post.save 
	else
		$glo=@q
		redirect_to :action=>"error"
	end
  end

  def show
	@post=Post.new(params[:data])
	if @post.title!="" && @post.description!=""
		@post.save
		redirect_to :action=>"show_post"
	else
		redirect_to :action=>"error1"
	end
  end

  def error
	$glo
	@post = Post.find($glo)
  end

  def error1

  end
  def error2
	
  end

end
