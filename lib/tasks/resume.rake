require 'launchy'

GREEN = "\033[32;1m"
RESET = "\033[0m"

task :default => [:spec, "resume:open", "resume:thankyou"]

namespace :resume do
  desc "Open this resume online, running on Heroku."
  task :open do
    puts
    puts ">> Are you ready to see this resume deployed on Heroku? [enter] "
    Launchy.open "http://mnoble-resume.heroku.com/" if $stdin.gets.chomp
  end

  desc "Be polite."
  task :thankyou do
    puts <<-THANKS
      +----------------------------------------------+
      | Thanks for checking out my Rails app resume. |
      | Hope to hear from you soon!                  |
      +----------------------------------------------+
      |                                              |
      |    Matte Noble                               |
      |    github.com/mnoble                         |
      |    me@mattenoble.com                         |
      |                                              |
      +----------------------------------------------+
    
    THANKS
  end
end