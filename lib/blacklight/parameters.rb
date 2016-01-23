module Blacklight
  module Parameters
    ##
    # Sanitize the search parameters by removing unnecessary parameters
    # from the provided parameters
    # @param [Hash] source_params parameters
    def self.sanitize(params)
      params
        .reject { |_k, v| v.nil? }
        .except(:action, :controller, :id, :commit, :utf8)
    end
  end
end