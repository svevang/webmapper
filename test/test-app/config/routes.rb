Rails.application.routes.draw do

  mount OpenWorldServer::Engine, at: "/ows"

end
