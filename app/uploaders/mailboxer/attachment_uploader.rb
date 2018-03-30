class Mailboxer::AttachmentUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  storage :file

end