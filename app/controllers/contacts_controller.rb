class ContactsController < ApplicationController

  def index
    @contacts = Contact.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def show
    @contacts = Contact.find(params[:id])
    render "show.html.erb"
  end

  def create
    @contacts = Contact.new(
      first_name: params[:first_name],
      middlename: params[:middlename],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      bio: params[:bio],
      latitude: params[:latitude],
      longitude: params[:longitude]
    )
    @contacts.save
    redirect_to "/contacts/#{@contacts.id}"
  end

  def edit
    @contacts = Contact.find(params[:id])
    render "edit.html.erb"
  end


end
