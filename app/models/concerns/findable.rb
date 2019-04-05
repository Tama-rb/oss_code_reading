module Findable
  extend ActiveSupport::Concern

  class_methods do
    def in_any_status
      where(status: statuses.keys)
    end
  end
end
