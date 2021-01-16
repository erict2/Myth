module PagesHelper

  def sheetsLocked
    next_event = Event.where('startdate > ? AND levelingevent', Time.now).minimum(:startdate)
    if (Setting.sheets_locked) 
      return true
    elsif ((Setting.sheets_auto_lock) and ((next_event - Time.now.to_date).to_i <= Setting.sheets_auto_lock_day))
      return true
    end
  end
  
end