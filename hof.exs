defmodule HOF do

  def test_data do
    [
      {:user, 1, "Bob", 32},
      {:user, 2, "Kyle", 18},
      {:user, 3, "Anna", 20},
      {:user, 4, "Mary", 33},
      {:user, 5, "Bill", 55},
      {:user, 6, "Smith", 16},
      {:user, 7, "Rust", 12},
      {:user, 8, "Mike", 41}
    ]
  end
  
  @type attr_type :: :id | :name | :age
  @type direction :: :asc | :desc
  @type user :: {:user, integer(), String.t(), integer()}

  @spec sort_by_attr([user()], attr_type(), direction()) :: [user()]
  def sort_by_attr(users, attr, direction) do
    sorter =
      case {attr, direction} do
        {:id, :asc} -> &compare_by_id/2
        {:id, :desc} -> invertor(&compare_by_id/2)
        {:name, :asc} -> &compare_by_name/2
        {:age, :asc} -> &compare_by_age/2
        {:name, :desc} -> invertor(&compare_by_name/2)
        {:age, :desc} -> invertor(&compare_by_age/2)
      end

    Enum.sort(users, sorter)
  end

  defp compare_by_id(user1, user2) do
    {:user, id1, _, _} = user1
    {:user, id2, _, _} = user2

    id1 < id2
  end

  defp compare_by_name(user1, user2) do
    {:user, _, name1, _} = user1
    {:user, _, name2, _} = user2

    name1 < name2
  
  end

  defp compare_by_age(user1, user2) do
    {:user, _, _, age1} = user1
    {:user, _, _, age2} = user2

    age1 < age2
  end

  defp invertor(predicate) do
    fn arg1, arg2 -> not predicate.(arg1, arg2)  end
  end

end
