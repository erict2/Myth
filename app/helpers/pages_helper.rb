module PagesHelper

  def sheetsLocked
    next_event = Event.where('startdate > ? AND levelingevent', Time.now).minimum(:startdate)
    if (Setting.sheets_locked) 
      return true
    elsif ((Setting.sheets_auto_lock) and ((next_event - Time.now.to_date).to_i <= Setting.sheets_auto_lock_day))
      return true
    end
  end
  
  def checkActiveTab(type, tabName)
    if params[:tab].nil?
      requestedTab = 'skills'
    else
      requestedTab = params[:tab]
    end
    if (tabName == requestedTab and type == 'link')
      return 'active'
    end
    if (tabName == requestedTab and type == 'content')
      return 'show active'
    end
  end

end