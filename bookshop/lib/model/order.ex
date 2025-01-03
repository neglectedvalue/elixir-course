defmodule Bookshop.Model.Order do
  alias Bookshop.Model.Book
  alias Bookshop.Model.Address
  alias Bookshop.Model.Cat
  
  @type t() :: %__MODULE__{
    client: Cat.t(),
    address: Address.t(),
    books: list(Book.t())
  }

  @enforce_keys [:client, :address, :books]

  defstruct [:client, :address, :books] 

  def create(client, address, books) do
    %__MODULE__{
      client: client,
      address: address,
      books: books
    } 
  end
end
