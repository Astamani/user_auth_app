require "test_helper"

class Admin::DashboardControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_user = User.create!(
      name: "Admin",
      email: "admin@example.com",
      password: "password",
      role: "admin"
    )

    @normal_user = User.create!(
      name: "Normal",
      email: "user@example.com",
      password: "password",
      role: "user"
    )
  end

  test "should redirect if not logged in" do
    get admin_dashboard_url
    assert_redirected_to new_user_session_url
  end

  test "should allow access to admin user" do
    sign_in @admin_user
    get admin_dashboard_url
    assert_response :success
    assert_select "h2", "All Users"  # or check for any dashboard element
  end

  test "should deny access to non-admin user" do
    sign_in @normal_user
    get admin_dashboard_url
    assert_redirected_to root_url
    follow_redirect!
    assert_match "Access denied", response.body
  end
end
