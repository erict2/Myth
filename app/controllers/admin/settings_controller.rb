# frozen_string_literal: true

module Admin
  class SettingsController < AdminController
    def create
      setting_params.each_key do |key|
        next if setting_params[key].nil?

        setting = Setting.new(var: key)
        setting.value = setting_params[key].strip
      end

      setting_params.each_key do |key|
        Setting.send("#{key}=", setting_params[key].strip) unless setting_params[key].nil?
      end

      redirect_to admin_settings_path
    end

    private

    def setting_params
      params.require(:setting).permit(:sheets_locked, :one_level_per_game, :sheets_auto_lock, :sheets_auto_lock_day,
                                      :game_name, :allow_global_reroll)
    end
  end
end
