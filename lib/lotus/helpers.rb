require 'lotus/helpers/version'
require 'lotus/helpers/html_helper'
require 'lotus/helpers/escape_helper'
require 'lotus/helpers/routing_helper'
require 'lotus/helpers/link_to_helper'

module Lotus
  # View helpers for Ruby applications
  #
  # @since 0.1.0
  module Helpers
    # Override for Module.included
    #
    # It injects all the available helpers.
    #
    # @since 0.1.0
    # @api private
    #
    # @see http://www.ruby-doc.org/core/Module.html#method-i-included
    def self.included(base)
      base.class_eval do
        include Lotus::Helpers::HtmlHelper
        include Lotus::Helpers::EscapeHelper
        include Lotus::Helpers::RoutingHelper
        include Lotus::Helpers::LinkToHelper
      end
    end
  end
end
