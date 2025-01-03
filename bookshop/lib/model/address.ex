defmodule Bookshop.Model.Address do
  
  @type t() :: %__MODULE__{
    state: String.t(),
    city: String.t(),
    other: String.t()
  }

  defstruct [:state, :city, :other] 

end
