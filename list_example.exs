defmodule ListExample do
  
  def merge(list1, list2) do
    merge(list1, list2, [])
  end

  defp merge([], list2, acc), do: Enum.reverse(acc) ++ list2
  defp merge(list1, [], acc), do: Enum.reverse(acc) ++ list1

  defp merge(list1, list2, acc) do
    [head1 | tail1] = list1
    [head2 | tail2] = list2

    if head1 < head2 do
      acc = [head1 | acc]
      merge(tail1, list2, acc)
    else
      acc = [head2 | acc]
      merge(list1, tail2, acc)
    end

  end

end

ExUnit.start()

defmodule ListExampleTest do
  use ExUnit.Case
  import ListExample

  test "sorted lists merge" do
    assert merge([1,2,3], [4,5,6]) == [1,2,3,4,5,6]
    assert merge([1,33], [3,4,5]) == [1,3,4,5,33]
    assert merge([], [3,4,5]) == [3,4,5]
  end

  
end
