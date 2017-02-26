require 'test_helper'

class PipelineControllerTest < ActionDispatch::IntegrationTest
  test "should get pipeline" do
    get pipeline_pipeline_url
    assert_response :success
  end

end
