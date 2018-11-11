class Admin::DashboardsController < Admin::BaseController
  def index
    @count_rooms = Room.all.count
    @count_users = User.all.count
    @count_inappropriate = InappropriateWord.all.count
  end
end
