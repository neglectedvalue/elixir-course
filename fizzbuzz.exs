defmodule Fizzbuzz do

  def main() do
    Enum.each(1..100, &fizzbuzz/1)
  end

def fizzbuzz(number) do
  cond do
    rem(number, 3) == 0 and rem(number, 5) == 0 -> IO.puts("FizzBuzz")
    rem(number, 5) == 0 -> IO.puts("Buzz")
    rem(number, 3) == 0 -> IO.puts("Fizz")
    true -> IO.puts(number)
  end
end

end

