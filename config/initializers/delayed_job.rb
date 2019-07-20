Delayed::Worker.queue_attributes = {
  high_priority: { priority: -10 },
  low_priority: { priority: 10 }
}

Delayed::Worker.max_attempts = 10
Delayed::Worker.max_run_time = 5.hours
Delayed::Worker.destroy_failed_jobs = false
Delayed::Worker.default_priority = 1
Delayed::Worker.read_ahead = 10
Delayed::Worker.default_queue_name = "default"
Delayed::Worker.sleep_delay = 60
Delayed::Worker.delay_jobs
Delayed::Worker.logger = Logger.new(File.join(Rails.root, "log", "delayed_job.log"))

# disable all job
# Delayed::Worker.delay_jobs = false
# disable all job on test env
Delayed::Worker.delay_jobs = !Rails.env.test?
# disable all job on disable queue
# Delayed::Worker.delay_jobs = = ->(job) {
#   job.queue != "disable"
# }
