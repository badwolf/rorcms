require 'test_helper'

class UserRanksControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => UserRank.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    UserRank.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    UserRank.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to user_rank_url(assigns(:user_rank))
  end
  
  def test_edit
    get :edit, :id => UserRank.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    UserRank.any_instance.stubs(:valid?).returns(false)
    put :update, :id => UserRank.first
    assert_template 'edit'
  end
  
  def test_update_valid
    UserRank.any_instance.stubs(:valid?).returns(true)
    put :update, :id => UserRank.first
    assert_redirected_to user_rank_url(assigns(:user_rank))
  end
  
  def test_destroy
    user_rank = UserRank.first
    delete :destroy, :id => user_rank
    assert_redirected_to user_ranks_url
    assert !UserRank.exists?(user_rank.id)
  end
end
