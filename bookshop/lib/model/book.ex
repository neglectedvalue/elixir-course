defmodule Bookshop.Model.Book do

  @type t() :: %__MODULE__{
    title: String.t(),
    author: String.t()
  }

  @enforce_keys [:title, :author]

  defstruct [:title, :author]  

end
