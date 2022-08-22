class BulkUploadController < ApplicationController
  def upload
    BulkUpload::OverrideSeedState.new()
  end
end
