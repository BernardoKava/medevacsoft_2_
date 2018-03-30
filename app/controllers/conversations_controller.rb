class ConversationsController < ApplicationController
  def index
    @conversations = current_user.mailbox.conversations.paginate(:page => params[:page], :per_page => 4)
  end

  def inbox
    @conversations = current_user.mailbox.inbox.paginate(:page => params[:page], :per_page => 4)
    render action: :index
  end

  def sent
    @conversations = current_user.mailbox.sentbox.paginate(:page => params[:page], :per_page => 4)
    render action: :index
  end

  def trash
    @conversations = current_user.mailbox.trash.paginate(:page => params[:page], :per_page => 4)
    render action: :index
  end

  def show
    @conversation = current_user.mailbox.conversations.find(params[:id])
    @conversation.mark_as_read(current_user)
    @message = Mailboxer::Message.new
  end

  def create
    @recipient = User.where(id: params[:user_ids])
    receipt = current_user.send_message(@recipient, params[:body], params[:subject])
    redirect_to conversation_path(receipt.conversation)
  end

  def new
    @recipients = User.all - [current_user]
    @conversation = Mailboxer::Conversation.new
  end
end