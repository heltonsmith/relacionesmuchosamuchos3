require "test_helper"

class MatriculaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get matricula_index_url
    assert_response :success
  end
end
