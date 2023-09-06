class DestroyMailer < ApplicationMailer
  default from: 'from@example.com'

  def destroy_mail(agenda)
    @users = agenda.team.members
    mail to: @users.pluck(:email), subject: I18n.t('views.messages.complete_registration')
  end
end