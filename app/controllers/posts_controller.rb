class PostsController < ApplicationController
  def index
    #우리가 가지고 있는 모든 글을 보여준다.
    @posts = Post.all.reverse
  end

  def new
    #새로운 글을 받을 수 있는 폼을 만든다.
  end

  def create
    #new에서 날아온 data를 저장한다
    @title = params[:title]
    @content = params[:content]
    Post.create(
      :title => params[:title],
      :content => params[:content]
    )
    redirect_to '/posts'
  end

end
