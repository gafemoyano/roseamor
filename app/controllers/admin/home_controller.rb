class Admin::HomeController < Admin::ApplicationController

  def show
    @home = Home.first_or_initialize
  end

  def create_or_update
    @home = Home.first
    if @home.nil?
      @home = Home.new home_params
      if @home.save
        flash[:success] = 'Home was successfully created.'
        redirect_to admin_home_url
      else
        render :new
      end
    else
      if @home.update(product_params)
        flash[:success] = 'Product was successfully updated.'
        redirect_to admin_home_url
      else
        render :edit
      end
    end
  end

  def home_params
    params.require(:home).permit(:gallery_image_1_title,
                                 :gallery_image_1_description,
                                 :gallery_image_2_title,
                                 :gallery_image_2_description,
                                 :gallery_image_3_title,
                                 :gallery_image_3_description,
                                 :gallery_image_4_title,
                                 :gallery_image_4_description,
                                 :gallery_image_5_title,
                                 :gallery_image_5_description,
                                 :gallery_image_6_title,
                                 :gallery_image_6_description,
                                 :gallery_image_1,
                                 :gallery_image_2,
                                 :gallery_image_3,
                                 :gallery_image_4,
                                 :gallery_image_5,
                                 :gallery_image_6,
                                 :slider_image_1,
                                 :slider_image_2,
                                 :slider_image_3,
                                 :slider_image_4)
  end
end
