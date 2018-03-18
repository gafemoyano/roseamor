class Admin::FaqsController < Admin::ApplicationController
  def index
    @faqs = Faq.by_priority
  end

  def new
    @faq = Faq.new
  end

  def edit
    @faq = Faq.find(params[:id])
  end

  def create
    @faq = Faq.new(faq_params)
    if @faq.save
      flash[:success] = 'Faq successfully created'
      redirect_to admin_faqs_url
    else
      render 'new'
    end
  end

  def update
    @faq = Faq.find(params[:id])
    if @faq.update(faq_params)
      flash[:success] = 'Faq successfully updated'
      redirect_to admin_faqs_url
    else
      flash[:warning] = @faq.errors.full_messages.to_sentence
      render :edit
    end
  end

  # DELETE /colors/1
  # DELETE /colors/1.json
  def destroy
    @faq = Faq.find params[:id]
    @faq.destroy
    flash[:success] = 'Faq was successfully destroyed'
    redirect_to admin_faq_url
  end

  private

  def faq_params
    params.require(:faq).permit(:question, :answer, :order)
  end
end
