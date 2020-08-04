class SchedulesController < ApplicationController
  before_action :set_schedule, only: [:index]
  
  def index
  end

  private
  def set_schedule
    @schedules = Matching.where(host_user_id: current_user.id).or(Matching.where(guest_user_id: current_user.id)).order("scheduled_date ASC")
    @unapproved = @schedules.where('scheduled_date>= ?', Date.today).where(guest_user_id: current_user.id, status: "申込中").order("response_deadline ASC")
    @applying = @schedules.where('scheduled_date>= ?', Date.today).where(host_user_id: current_user.id, status: "申込中")
    @approved = @schedules.where('scheduled_date>= ?',Date.today).where(status: "承認済")
    @finish_match = @schedules.where('scheduled_date < ?', Date.today)
    # where.notが動作しないため手書きで処理する
    @unrating = []
    @finish_match.each do |s|
      if s.completed_host_user_id != current_user.id && s.completed_guest_user_id != current_user.id
        @unrating << s
      end
    end
    @completed = @schedules.where(completed_host_user_id: current_user.id).or(@schedules.where(completed_guest_user_id: current_user.id))
    @expired = @schedules.where('scheduled_date< ?', Date.today).where(host_user_id: current_user.id, status: "申込中")
  end
end
