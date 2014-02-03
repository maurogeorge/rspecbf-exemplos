# -*- encoding : utf-8 -*-
module UploadFileTestHelper
  def uploaded_file(filename, content_type = "text/csv")
    t = Tempfile.new([filename.split("/").last, filename.split(".").last])
    t.binmode
    path = File.join(Rails.root, "spec", "fixtures", filename)
    FileUtils.copy_file(path, t.path)
    ActionDispatch::Http::UploadedFile.new({
      filename: filename,
      head: "Content-Disposition: form-data; name=\"file\"; filename=\"#{filename}\"\r\nContent-Type: #{content_type}\r\n",
      type: content_type,
      tempfile: t
    })
  end
end

RSpec.configure do |config|
  config.include UploadFileTestHelper
end
