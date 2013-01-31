module SearchMethods
  module Sfx4Ns
    include SearchMethods::Sfx4

    # Class method for the module that gets called by the umlaut:load_sfx_urls task.
    # Determines whether we should attempt to fetch SFX urls.
    # Will probably be deprecated in the near future.
    def self.fetch_urls?
      sfx4_base.connection_configured?
    end

    # Class method for the module that gets called by the umlaut:load_sfx_urls task.
    # Kind of hacky way of trying to extract target URLs from SFX4.
    # Will probably be deprecated in the near future.
    def self.fetch_urls
      sfx4_base.fetch_urls
    end
    
    # Class method for the module.
    # Returns the SFX4 base class in order to establish a connection.
    def self.sfx4_base
      # Need to do this convoluted Module.const_get so that we find the
      # correct class. Otherwise the module looks locally and can't find it.
      Module.const_get(:Sfx4).const_get(:Ns).const_get(:Base)
    end

    # Instance method that returns the SFX4 AzTitle class for this search method.
    # Can be overridden by search methods that want to include this one.
    def az_title_klass
      # Need to do this convoluted Module.const_get so that we find the
      # correct class. Otherwise the module looks locally and can't find it.
      Module.const_get(:Sfx4).const_get(:Ns).const_get(:AzTitle)
    end
    protected :az_title_klass
  end
end