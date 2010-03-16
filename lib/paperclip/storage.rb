require 'rake'

module Paperclip
  module Storage 
    module Base
      include Paperclip::RailsHelper
    end                         
    FileList['**/storage_systems/*.rb'].each{|f| require f}
  end
end