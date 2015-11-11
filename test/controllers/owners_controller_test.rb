require 'test_helper'

class OwnersControllerTest < ActionController::TestCase
  setup do
    @owner = owners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:owners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create owner" do
    assert_difference('Owner.count') do
      post :create, owner: { alt_phone: @owner.alt_phone, email: @owner.email, emergency_contact_name: @owner.emergency_contact_name, emergency_contact_phone: @owner.emergency_contact_phone, evac_waiver: @owner.evac_waiver, first_name: @owner.first_name, last_name: @owner.last_name, phone: @owner.phone }
    end

    assert_redirected_to owner_path(assigns(:owner))
  end

  test "should show owner" do
    get :show, id: @owner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @owner
    assert_response :success
  end

  test "should update owner" do
    patch :update, id: @owner, owner: { alt_phone: @owner.alt_phone, email: @owner.email, emergency_contact_name: @owner.emergency_contact_name, emergency_contact_phone: @owner.emergency_contact_phone, evac_waiver: @owner.evac_waiver, first_name: @owner.first_name, last_name: @owner.last_name, phone: @owner.phone }
    assert_redirected_to owner_path(assigns(:owner))
  end

  test "should destroy owner" do
    assert_difference('Owner.count', -1) do
      delete :destroy, id: @owner
    end

    assert_redirected_to owners_path
  end
end
