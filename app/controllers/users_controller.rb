class UsersController < ApplicationController
  skip_before_action :authorize_request, only: :create

  # POST /register
  # return authenticated token upon signup

  def create
    company = Company.create!(name: "My Company")
    company_division = CompanyDivision.create!(name: "My Company", company: company)
    user = User.create!(**user_params, company: company)

    # rescue ActiveRecord::RecordNotUnique
    #   raise raise(ExceptionHandler::EmailTaken, Message.email_taken)

    auth_token = AuthenticateUser.new(user.email, user.password).call
    response = { message: Message.account_created, auth_token: auth_token }
    json_response(response, :created)
  end

  private

  def user_params
    params.permit(
      :first_name,
      :last_name,
      :email,
      :password,
      :password_confirmation
    )
  end
end