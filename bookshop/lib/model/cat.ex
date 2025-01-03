defmodule Bookshop.Model.Cat do
  
  @type t() :: %__MODULE__ {
    id: integer(),
    name: String.t()
  }

  @enforce_keys [:id, :name]

  defstruct [:id, :name] 

end
