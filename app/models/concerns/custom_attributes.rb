require 'active_support/concern'

module ClientOne
  extend ActiveSupport::Concern
  included do
    def self.client_one_custom_attributes
      store :attributes, accessors: [ :shoe_size, :nickname ], coder: JSON
    end
  end
end

module CustomAttributes
  extend ActiveSupport::Concern
  include ClientOne

  included do
    self.client_one_custom_attributes
  end
end
