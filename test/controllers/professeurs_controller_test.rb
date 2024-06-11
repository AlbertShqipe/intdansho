require "test_helper"

class ProfesseursControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get professeurs_index_url
    assert_response :success
  end
end
