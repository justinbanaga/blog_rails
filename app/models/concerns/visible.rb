# frozen_string_literal: true

# The `Visible` module is included in the `Article` and `Comment` models.
#
# Args:
#   self: The class that includes the concern.
# Returns:
#   The number of public questions.
module Visible
  extend ActiveSupport::Concern

  VALIDATE_STATUSES = %w[public private archived].freeze

  included do
    validates :status, inclusion: { in: VALIDATE_STATUSES }
  end

  class_methods do
    def public_count
      where(status: 'public').count
    end
  end

  def archived?
    status == 'archived'
  end
end
