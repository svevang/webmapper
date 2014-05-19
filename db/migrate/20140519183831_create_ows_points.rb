class CreateOwsPoints < ActiveRecord::Migration
  def change
    create_table :ows_points do |t|
      t.geom :point, :srid => 4326
      t.timestamps
    end
  end
end
