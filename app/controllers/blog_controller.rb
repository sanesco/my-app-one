class BlogController < ApplicationController
  before_action :find_id_blog, only: [:show, :edit, :update, :destroy]
  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end
#title y content se renderizan vacios o nil

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to blog_index_path, notice: "El blog ha sido creado exitosamente"
      #flash[:notice] = "El blog ha sido creado exitosamente"
    else
      flash[:alert] = "El post no ha sido guardado, favor repetir la información"
      render :new
    end
  end
  def show
    #@blog = Blog.find(params[:id])
  end

  def edit
    #@blog = Blog.find(params[:id])
  end
  def update
    #@blog = Blog.find(params[:id])
    if @blog.update(blog_params)
      redirect_to blog_index_path
    else
      render :edit
    end
  end
  def destroy
    #blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to blog_index_path
  end
  private

    def blog_params
      params.require(:blog).permit(:title, :content)
    end
    def find_id_blog
      @blog = Blog.find(params[:id])

    end
end
