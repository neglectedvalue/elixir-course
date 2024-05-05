defmodule Fizzbuzz do

  def main() do
    1..100
    |> Enum.map(&fizzbuzz/1) 
    |> Enum.join(" ")
    |> IO.puts()
  end

  @spec fizzbuzz(integer()) :: String.t()
  def fizzbuzz(number) do
    
    divisible_by_3 = rem(number, 3) == 0
    divisible_by_5 = rem(number, 5) == 0

    cond do
      divisible_by_3 and divisible_by_5 -> "FizzBuzz"
      divisible_by_5 -> "Buzz"
      divisible_by_3 -> "Fizz"
      true -> to_string(number)
    end
  end

end

ExUnit.start()

defmodule FizzBuzzTest do
  use ExUnit.Case
  import Fizzbuzz

  test "fizzbuzz 1-10" do
    assert fizzbuzz(1) == "1"
    assert fizzbuzz(2) == "2"
    assert fizzbuzz(3) == "Fizz"
    assert fizzbuzz(4) == "4"
    assert fizzbuzz(5) == "Buzz"
    assert fizzbuzz(6) == "Fizz"
    assert fizzbuzz(7) == "7"
    assert fizzbuzz(8) == "8"
    assert fizzbuzz(9) == "Fizz"
    assert fizzbuzz(10) == "Buzz"
  end

 end

