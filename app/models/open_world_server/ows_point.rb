module OpenWorldServer
  class OwsPoint < ActiveRecord::Base

    belongs_to :pointable, polymorphic: true

    def point=(val)
      val = val.deep_stringify_keys if val.class == Hash
      self[:point] = RGeo::GeoJSON.decode(val).to_s
    end

    def point
      RGeo::GeoJSON.encode(self[:point])
    end

  end
end
