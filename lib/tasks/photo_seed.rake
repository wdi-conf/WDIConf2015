namespace :photos do

  desc "photo seed"
  task photo_seed: :environment do
    require './app/jobs/photos_seed_job.rb'

    PhotoSeedJob.perform_later

  end

end