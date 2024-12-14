defmodule MyCalendar.Model.EventStruct do
  
  defmodule Place do
    defstruct [:office, :room]     
  end

  defmodule Topic do
     defstruct [
      :title,
      :description,
      {:priority, :medium}
    ] 
   end 

end
