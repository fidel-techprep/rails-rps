Rails.application.routes.draw do
  get("/", {:controller => "rps", :action => "rules"})

  get("/:play", {:controller => "rps", :action => "play"})

end
