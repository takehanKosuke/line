class Admin::MessagesController < Admin::BaseController
  def index
    @messages = Messages.all
  end

  def show
  end

  def new
    @course = Course.new
    @course.course_images.build
    @course.course_categories.build
  end

  def create
    @course = Course.new(course_params)
    binding.pry
    if @course.save
      redirect_to admin_courses_path, success: "Course created！"
    else
      redirect_to new_admin_course_path
    end
  end

  def edit
  end

  def update
    if @course.update(course_params)
      redirect_to admin_courses_path, flash: {success: "success"}
    else
      render :edit
    end
  end

  def destroy
    @course.destroy
    redirect_to admin_courses_path
  end

  private
  def course_params
    params.require(:course).permit(
      :average_price,
      :contents_cn,
      :contents_en,
      :contents_ja,
      :contents_tw,
      :course_type,
      :is_open,
      :name_cn,
      :name_en,
      :name_ja,
      :name_tw,
      :time,
      course_image_ids:[],
      course_category_ids: []
    )
  end

end
