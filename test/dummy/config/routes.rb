Rails.application.routes.draw do

  mount OpenWorldServer::Engine => "/open_world_server"
end
