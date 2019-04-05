module Draftable
  extend ActiveSupport::Concern

  included do
    before_save { check_and_change_status }
  end

  def check_and_change_status
    self.status = 'draft' if self.title.include?('::draft')
  end
end
