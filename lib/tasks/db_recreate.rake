namespace :db do
  desc "This task runs rails db:drop rails db:create rails db:migrate rails db:seed"

  task :recreate do
    %w[db:drop db:create db:migrate db:seed].each do |cmd|
      Rails::Command.invoke(cmd)
    end
    puts "Recreated database!"
  end
end
