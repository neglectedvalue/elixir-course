defmodule GCD do

  @spec gcd(integer(), integer()) ::integer()
  def gcd(a, b) when a < 0, do: gcd(-a, b)

  @spec gcd(integer(), integer()) ::integer()
  def gcd(a, b) when b < 0, do: gcd(a, -b)

  @spec gcd(integer(), 0) ::integer()
  def gcd(a, 0), do: a

  @spec gcd(integer(), integer()) ::integer()
  def gcd(a, b) do
    case rem(a, b)  do
      0 -> b
      c -> gcd(b, c)
    end
  end

end

ExUnit.start()

defmodule GCDTest do
  use ExUnit.Case
  import GCD

  test "gcd base scenario" do
    assert(12, 9) == 3
    assert(9, 12) == 3
    assert(60, 48) == 12
    assert(12, 0) == 12
  end


end
