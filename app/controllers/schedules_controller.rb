class SchedulesController < ApplicationController
  before_action :set_schedule, only: [:index]
  
  def index
  end

  private
  def set_schedule
    @schedules = Matching.where(host_user_id: current_user.id).or(Matching.where(guest_user_id: current_user.id)).order("scheduled_date ASC")
    @unapproved = @schedules.where(guest_user_id: current_user.id).where(status: "申込中").where('scheduled_date>= ?', Date.today).order("response_deadline ASC")
    @applying = @schedules.where(host_user_id: current_user.id).where(status: "申込中").where('scheduled_date>= ?', Date.today)
    @approved = @schedules.where(status: "承認済").where('scheduled_date>= ?',Date.today)
    @unrating = @schedules.where('scheduled_date > ?', Date.today).where.not(status: "完了").where.not(status:"申込中")
    @completed = @schedules.where(status: "完了")
    @expired = @schedules.where(host_user_id: current_user.id).where(status: "申込中").where('scheduled_date< ?', Date.today)
  end
end
