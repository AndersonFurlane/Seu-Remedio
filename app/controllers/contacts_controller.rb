class ContactsController < BaseController

  before_filter :authenticate_user!

  def index
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    if @contact.valid?
      ContactMailer.contact_message(params[:contact]).deliver
      flash[:notice] = "Mensagem Enviada"
      redirect_to new_contact_path
    else
      render :action => 'new'
    end
  end

end
