require 'active_record'

module Refinery
  module Core
    class BaseModel < ActiveRecord::Base
      establish_connection "#{Rails.env}.sqlite3"
      self.abstract_class = true

    end
  end
end
