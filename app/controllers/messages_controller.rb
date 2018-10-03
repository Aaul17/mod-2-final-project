class MessagesController < ApplicationController
  before_action :find_conversation

  def index
    @messages = @conversation.messages
    @message = @conversation.messages.new
  end

  def new
    @message = @conversation.messages.new
  end

  def create
    @message = @conversation.messages.create(message_params)
    if @message.valid?
      redirect_to conversation_messages_path(@conversation)
    end
  end

  private

    def message_params
      params.require(:message).permit(:body, :conversation_id, :user_id)
    end

    def find_conversation
      @conversation = Conversation.find_by(id: params[:conversation_id])
    end

end
