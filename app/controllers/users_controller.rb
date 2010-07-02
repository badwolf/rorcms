class UsersController < ApplicationController
  deny :exec => "!logged_in?" ,:except=> :new #登录可以访问
  allow :user => :is_admin? ,:except=> [:new,:create]#管理员可以访问
  def index    
    @users = User.paginate(:page=>params[:page] || 1, :per_page=>20,:order=>"id desc")

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @articles }
    end
  end

   def new  
       @user = User.new  
   end  
     
   def create  
     @user = User.new(params[:user])  
     if @user.save  
       flash[:notice] = "Registration successful."  
       redirect_to root_url  
     else  
       render :action => 'new'  
     end  
   end  

  def edit 
   @user = current_user  
  end  

  def gedit 
   @user = User.find(params[:id])
  end  

  def update  
    @user = current_user  
    if @user.update_attributes(params[:user])  
      flash[:notice] = "Successfully updated profile."  
      redirect_to root_url  
    else  
     render :action => 'edit'  
    end  
  end  

  def gupdate
    @user = User.find(params[:id])

    respond_to do |format|
      if @article.update_attributes(params[:user])
        flash[:notice] = 'User was successfully updated.'
        format.html { redirect_to(@user) }
        format.xml  { head :ok }
      else
        format.html { render :action => "gedit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

end
