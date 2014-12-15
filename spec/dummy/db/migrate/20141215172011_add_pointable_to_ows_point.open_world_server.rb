# This migration comes from open_world_server (originally 20141215170007)
class AddPointableToOwsPoint < ActiveRecord::Migration
  def change
    add_reference :open_world_server_ows_points, :pointable, polymorphic: true, null: false
  end
end
