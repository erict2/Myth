module ApplicationHelper

  def getGameMonth(month)
    case month
      when 1
        return 'Chillwind'
      when 2
        return 'Snowfell'
      when 3
        return 'Winterwane'
      when 4
        return 'Mistmoot'
      when 5
        return 'Meadowrise'
      when 6
        return 'Greatsun'
      when 7
        return 'Firemeet'
      when 8
        return 'Firewithe'
      when 9
        return 'Softsun'
      when 10
        return 'Leafell'
      when 11
        return 'Snowmoot'
      when 12
        return 'Fellnight'
      else
        "Error"
    end
      
  end
end
