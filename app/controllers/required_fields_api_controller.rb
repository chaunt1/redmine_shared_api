class RequiredFieldsApiController < ApplicationController

  before_action :require_login
  accept_api_auth :index

  def index
    required_fields = Issue.required_attribute_names(user: User.current)
    render json: { required_fields: required_fields }
  end

end
