# RailsSettings Model
class Setting < RailsSettings::Base
  cache_prefix { "v1" }

  field :sheets_locked, type: :boolean, default: true
end
