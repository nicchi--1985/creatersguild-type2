# encoding: utf-8
class NoticeMailer < ActionMailer::Base
  default :charset => 'ISO-2022-JP'
  default from: "creatersguild2013@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_confirm.subject
  #
  def sendmail_confirm(adopt_id)
    @greeting = "Hi"
    @adopt = Adoption.find(adopt_id)
    mail(to: @adopt.suggestion.user.email, subject: "あなたの提案が採用されました＠Creater'sGuild")
  end
end
