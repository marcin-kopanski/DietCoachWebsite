class ContactFormsController < ApplicationController
  def new
    @contact = ContactForm.new
  end

  def create
    begin
      @contact = ContactForm.new(params[:contact_form])
      # @contact.request = request
      if @contact.deliver
        flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
      else
        flash.now[:error] = 'Cannot send message.'
      end
    rescue ScriptError
      flash[:error] = 'Sorry, this message appears to be spam and was not delivered.'
    end
  end
end
