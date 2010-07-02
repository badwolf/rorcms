class RolesController < ApplicationController
  deny :exec => "!logged_in?" #登录可以访问
  allow :user => :is_admin? #管理员可以访问
  def index
    @roles = Role.all
  end
  
  def show
    @role = Role.find(params[:id])
  end
  
  def new
    @role = Role.new
  end
  
  def create
    @role = Role.new(params[:role])
    if @role.save
      flash[:notice] = "Successfully created user rank."
      redirect_to @role
    else
      render :action => 'new'
    end
  end
  
  def edit
    @role = Role.find(params[:id])
  end
  
  def update
    @role = Role.find(params[:id])
    if @role.update_attributes(params[:role])
      flash[:notice] = "Successfully updated user rank."
      redirect_to @role
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @role = Role.find(params[:id])
    flash[:notice] = '鄙视!别删除!还没弄好呢!'
    #@role.destroy
    redirect_to roles_url
  end
end
