# frozen_string_literal: true

module EventsHelper
  def canUpdateCabin()
    if !sheetsLocked && (@myeventattendance.registrationtype == 'Player') && @myeventattendance.event.startdate > Time.now
      true
    else
      false
    end
  end

  def cabinResident(cabinassignment)
    if (cabinassignment.character) then 
      if cabinassignment.character.alias.present?
        return cabinassignment.character.alias
      else
        return cabinassignment.character.name.partition(" ").first 
      end
    else
      return 'Player: ' + cabinassignment.user.firstname
    end
  end
end