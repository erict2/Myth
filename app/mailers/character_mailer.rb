class CharacterMailer < ApplicationMailer

  def send_courier
    @courier = params[:courier]
    mail(from: 'courier@mythlarp.com', to: 'courier@mythlarp.com', subject: 'SUBJECT GOES HERE')
  end
end
