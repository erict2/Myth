# frozen_string_literal: true

module PagesHelper
  def sheetsLocked
    next_event = Event.where('startdate > ? AND levelingevent', Time.now).minimum(:startdate)
    if Setting.sheets_locked
      true
    elsif Setting.sheets_auto_lock && ((next_event - Time.now.to_date).to_i <= Setting.sheets_auto_lock_day)
      true
    end
  end

  def checkActiveTab(type, tabName)
    requestedTab = if params[:tab].nil?
                     'skills'
                   else
                     params[:tab]
                   end
    return 'active' if (tabName == requestedTab) && (type == 'link')

    'show active' if (tabName == requestedTab) && (type == 'content')
  end
end
