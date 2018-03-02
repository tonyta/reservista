workers Integer(ENV["WEB_CONCURRENCY"] || 3)
min_threads = Integer(ENV["MIN_THREADS"] || ENV["RUBY_THREADS"] || 2)
max_threads = Integer(ENV["MAX_THREADS"] || min_threads)
threads min_threads, max_threads

preload_app!

rackup      DefaultRackup

port        ENV["PORT"]     || 5000
environment ENV["RACK_ENV"] || "development"

on_worker_boot do
end
