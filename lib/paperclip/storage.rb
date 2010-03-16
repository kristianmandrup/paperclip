require 'rake'

module Paperclip
  module Storage                      
    FileList['**/storage_systems/*.rb'].each{|f| require f}
  end
end