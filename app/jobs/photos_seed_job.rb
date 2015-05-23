class PhotoSeedJob < ActiveJob::Base
  queue_as :default

  def perform()
    uploader = PhotoUploader.new
    # photo_file_name = %w{aden, beta, dom, dt, jarod, jaya, jc, jeff, justin, louis, luke, matt, matts, mike, nick, phil}
    # Seeds photos from file structure to something Carrierwave should be able to use
    names = {'matt' => 'Matt Cameron', 'dom' => 'Dom White', 'mike' => 'Mike Goodwin', 'jeff' => 'Jeff Wolff', 'luke' => 'Luke Shillabeer', 'justin' => 'Justin Ward', 'nick' => 'Nick Pateman', 'aden' => 'Aden Margheriti', 'jaya' => 'Jaya Wijono', 'beta' => 'Beta Ngadiman', 'phil' => 'Phillip Castiglione', 'jarod' => %Q{Jarod O'loughlan}, 'jc' => 'JC Lee', 'louis' => 'Louis Moore', 'dt' => 'Daniel Tsui', 'matts' => 'Matt Swann' }
    names.each do |photo_name, full_name|
      user = User.find_by(name: full_name)
      file_name = "./db/photos/" + photo_name + ".jpg"
      the_file = File.open file_name
      unless user == nil # one of the key value pairs must not be returning the correct record because one is nil.
        user.photo = the_file
        user.save!
      end
    end
  end
end