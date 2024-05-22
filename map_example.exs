defmodule MapExample do

  def count_words(str), do: str |> String.split() |> count_words(%{})

  defp count_words([], acc), do: acc

  defp count_words([word | words], acc) do
    new_acc = 
      case Map.fetch(acc, word) do
        {:ok, counter} -> %{acc | word => counter + 1}
        :error -> Map.put(acc, word, 1)
      end
    count_words(words, new_acc)
  end
  
end

ExUnit.start()

defmodule MapExampleTest do
  use ExUnit.Case
  import MapExample

  test "simple test" do
    assert count_words("1 2 3 3 4 5") == %{"1" => 1, "2" => 1, "3" => 2, "4" => 1, "5" => 1}
  end
  
end
