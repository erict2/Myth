# frozen_string_literal: true

class Explog < ApplicationRecord
  belongs_to :user

  belongs_to :grantedby, class_name: 'User'

  default_scope { order(acquiredate: :desc) }
end
