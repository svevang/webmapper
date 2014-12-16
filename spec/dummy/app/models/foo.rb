class Foo < ActiveRecord::Base
  has_many :ows_points, class_name: "OpenWorldServer::OwsPoint", as: :pointable
end
