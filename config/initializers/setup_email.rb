ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "127.0.0.1",
  :user_name            => "mr.alvarado@gmail.com",
  :password             => "*89IOkl0p",
  :authentication       => "plain",
  :enable_starttls_auto => true
}
