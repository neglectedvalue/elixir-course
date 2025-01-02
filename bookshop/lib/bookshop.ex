defmodule Bookshop do

  def test_date do
    %{
      "cat" => "Knopa",
      "address" => "Coolcat str 123 apt. 9",
      "books" => [
        %{"title" => "Domain Model Made Functional", "author" => "Scott Wlaschin"},
        %{"title" => "Pleasure from X", "author" => "Steave Strogats"},
        %{"title" => "Distributed systems for fun and profit", "author" => "Mikito Takada"}
      ]
    }
  end

end
