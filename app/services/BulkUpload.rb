module BulkUpload
  class OverrideSeedState
    def initialize(file)
      CSV.foreach(file.path, headers: true) do |row|
        # parse bin/seed stuff from csv here
        # if seedbox doesn't exist, create
        # if seed doesn't exist create
        # create bin pointing to seedbox and seed
      end
    end
  end
end