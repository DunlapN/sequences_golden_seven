class GuessController < ApplicationController

def index
  @list_of_guesses = Guess.all  #can use .limit(#) in place of all to limit number of guesses shown

  render("/guess/index.html.erb")

end

def show

  # @number = params[number].to_i-1
  entry = Guess.find(params[:the_row_id]) #advantage to find versus find_by is that it will throw a 404 Error when there is an invalid entry (id that doesn't exist)

  @first_number = entry.first_number
  @second_number = entry.second_number
  @third_number = entry.third_number

  if @first_number < @second_number && @second_number < @third_number
    @obeys_rule = "Yes!"
  else
    @obeys_rule = "No."
  end
  render("/guess/show.html.erb")


end

def new_form

  render("/guess/new_form.html.erb")

end

def create_row
  guess = Guess.new
  guess.first_number = params[:first_number]
  guess.second_number = params[:second_number]
  guess.third_number = params[:third_number]
  guess.save

  redirect_to("http://localhost:3000/guesses")
end

def edit_form

  the_id = params[:old_row_id]
  @the_guess = Guess.find(the_id)

  # g = Guess.find(the_id)      using the above alternative where you let view deal with shit instead of creating a ton of instance variables
  
  # @first_num = g.first_number
  # @second_number = g.second_number
  # @third_number = g.third_number

  render("guesses/edit_form/html.erb")

end



end
