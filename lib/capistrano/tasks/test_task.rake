namespace :test_task do

  desc "hello"
  task :hello do
    puts "Hello"
  end

  desc "goodbye"
  task :goodbye do
    puts "Goodbye"
  end

  after :hello, :goodbye

  desc "hello_remote"
  task :hello_remote do
    on roles(:all) do |host|
      execute "echo 'Hello in VPS'"
    end
  end
end
