defmodule StringExample do
 
  def align_words(words) do
    max_length = max_word_length(words)

    Enum.map(words, fn word -> align_words(word, max_length) end)
  end

  def align_words(word, length) do
    spaces = length - String.length(word)
    add_spaces(word, :right, spaces)
  end

  defp add_spaces(str, _, 0), do: str
  
  defp add_spaces(str, :right, spaces) do
    add_spaces(" " <> str, :left, spaces - 1)
  end

  defp add_spaces(str, :left, spaces) do
    add_spaces(str <> " ", :right, spaces - 1)
  end

  def max_word_length(words) do
    max_word_length(words, 0)
  end

  defp max_word_length([], max_length), do: max_length

  defp max_word_length([word | words], max_length) do
    max_length = max(String.length(word), max_length)
    max_word_length(words, max_length)
  end

end

ExUnit.start()

defmodule StringExampleTest do
  use ExUnit.Case
  import StringExample

  test "max words length" do
    assert max_word_length(["aa", "bbb", "cccc"]) == 4
    assert max_word_length(["aaaa", "bbb", "cccc"]) == 4
    assert max_word_length(["aabbbcccc", "bbb", "cccc"]) == 9
  end

  test "align words" do
    assert align_words(["abc", "abcde", "abcdefg"]) == ["  abc  ", " abcde ", "abcdefg"]
  end

end
