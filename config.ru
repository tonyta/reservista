require_relative "app"

Thread.abort_on_exception = true
Thread.new do
  begin
    Reservista::Bot.run
  rescue Exception => e
    STDERR.puts "ERROR: #{e}"
    STDERR.puts e.backtrace
    raise e
  end
end

run Cuba
