class MessageController < ApplicationController
  skip_before_action :require_login, only: [:create, :new, :show]

  def post
    @message = Message.new
  end
  def create
    @message = Message.new(message_params)
    @message.save
    redirect_to "/"
  end
  def new
    @message = Message.new
  end
  def show
    @messages = Message.all
  end
  private

    def message_params
      params.require(:message).permit(:content)
    end
end
