if Rails.env.development? && File.exists?(File.join(Rails.root, 'tmp', 'debug.txt'))
  require 'byebug'
  File.delete(File.join(Rails.root, 'tmp', 'debug.txt'))
  Byebug.wait_connection = true
  Byebug.start_server
end