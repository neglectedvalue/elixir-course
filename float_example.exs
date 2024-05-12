defmodule FloatExample do
  
def equal?(f1, f2, precision \\ 0.01) do
  abs(f1 - f2) < precision
end

end

ExUnit.start()

defmodule FloatExampleTest do
  use ExUnit.Case
  import FloatExample
  
  test "equal?" do
    assert(equal?(0.3, 0.2 + 0.1)) 
    refute(equal?(0.3, 0.31))
    assert(equal?(0.3, 0.31, 0.1))
  end

end

