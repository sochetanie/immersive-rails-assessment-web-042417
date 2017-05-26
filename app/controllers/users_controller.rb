class UsersController < ApplicationController
    before_action :check_status, only: :show

    def new
        @user = User.new
    end

  def sign_in
  end

end