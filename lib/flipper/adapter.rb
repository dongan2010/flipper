module Flipper
  # Adding a module include so we have some hooks for stuff down the road
  module Adapter
    # Public: Get multiple features in one call. Defaults to one get per
    # feature. Feel free to override per adapter to make this more efficient and
    # reduce network calls.
    def get_multi(features)
      features.map { |feature| get(feature) }
    end
  end
end
