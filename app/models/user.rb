class User < ApplicationRecord
  CONFIRMATION_TOKEN_EXPIRATION = 10.minutes
  has_secure_password
  before_save {self.email = email.downcase}
  has_many :vehicles
  validates :email, format: {with: URI::MailTo::EMAIL_REGEXP}, presence: true, uniqueness: true
  def confirm!
    update_colum(confirmed_at:Time.now)
  end
  def confirmed?
    confirmed_at.present?
  end
  def generate_confirmation_token
    signed_id expires_in: CONFIRMATION_TOKEN_EXPIRATION,purpose: confirm_email
  end
  def unconfirmed?
    !confirmed?
  end
  ...
  MAILER_FROM_EMAIL = "devgupta5552@gmail.com"
  ...
  def send_confirmation_email!
    confirmation_token = generate_confirmation_token
    UserMailer.confirmation(self, confirmation_token).deliver_now
  end
end
