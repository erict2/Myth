# RailsSettings Model
class Setting < RailsSettings::Base
  cache_prefix { "v1" }

  field :game_name, type: :string, default: 'Larp Maker'
  field :sheets_locked, type: :boolean, default: true
  field :one_level_per_game, type: :boolean, default: true
  field :sheets_auto_lock, type: :boolean, default: true
  field :allow_global_reroll, type: :boolean, default: true
  field :sheets_auto_lock_day, type: :integer, default: 14
  
end
