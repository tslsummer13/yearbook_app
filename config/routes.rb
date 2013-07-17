YearbookApp::Application.routes.draw do
  get "/students", :controller => "students", :action => "index"
end
