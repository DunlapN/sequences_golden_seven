Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get("/guesses", {:controller => "guess", :action => "index"})

  get("/guesses/new", {:controller => "guess", :action => "new_form"}) #needs to be obove the_row_id so rails catches new first and doesn't think its a row_id

  get("/guesses/:the_row_id", {:controller => "guess", :action => "show"})

  get("/create_guess", { :controller => "guess", :action => "create_row"})

  get("guesses/:old_row_id/edit", {:controller => "guess", :action "edit_form"})

end
