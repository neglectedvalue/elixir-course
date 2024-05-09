defmodule GDC do

  @spec gdc(integer(), integer()) ::iInteger()
  def gdc(a, b) do
    case rem(a, b)  do
      0 -> b
      c -> gdc(b, c)
    end
  end

end

