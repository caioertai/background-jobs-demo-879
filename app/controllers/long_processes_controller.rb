class LongProcessesController < ApplicationController
  skip_before_action :authenticate_user!, only: :create

  def create
    LongProcessJob.perform_later(4)

    redirect_to root_path
  end
end
