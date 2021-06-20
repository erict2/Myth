class CharacterMailer < ApplicationMailer

  def send_courier
    @courier = params[:courier]
    @subject = 'Courier From ' + @courier.character.name + ' to ' + @courier.recipient
    mail(from: 'courier@mythlarp.com', to: 'courier@mythlarp.com', subject: @subject)
  end

  def send_prayer
    @courier = params[:courier]
    @subject = 'Prayer From ' + @courier.character.name + ' to ' + @courier.recipient
    mail(from: 'courier@mythlarp.com', to: 'courier@mythlarp.com', subject: @subject)
  end

  def send_oracle
    @courier = params[:courier]
    @subject = 'Oracle From ' + @courier.character.name + ' to ' + @courier.recipient
    mail(from: 'courier@mythlarp.com', to: 'courier@mythlarp.com', subject: @subject)
  end
end
