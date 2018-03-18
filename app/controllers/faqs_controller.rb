class FaqsController < ApplicationController
  def index
    @faqs = Faq.by_priority
  end
end
