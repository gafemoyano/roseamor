class Admin::HomeController < Admin::ApplicationController

  def index
    @home = Home.first_or_create
    redirect_to edit_admin_home_url @home
  end

  def edit
    @home = Home.first
  end

  def update
    @home = Home.first
    if @home.update(home_params)
      flash[:success] = 'Home was successfully updated.'
      redirect_to edit_admin_home_url
    else
      render :edit
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
