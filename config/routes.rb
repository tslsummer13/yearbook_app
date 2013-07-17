YearbookApp::Application.routes.draw do
  get "/students", :controller => "students", :action => "index"
  get "/students/:id", :controller => "students", :action => "show"
end
