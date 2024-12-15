defmodule MyCalendar.Model.EventStruct do
  defmodule Place do
    @enforce_keys [:office, :room]

    defstruct [:office, :room]
  end

  defmodule Participant do
    @enforce_keys [:name, :role]

    defstruct [
      :name,
      :role
    ]
  end

  defmodule Topic do
    @enforce_keys [:title]

    defstruct [
      :title,
      :description,
      {:priority, :medium}
    ]
  end

  defmodule Event do
    @enforce_keys [:title, :place, :time]

    defstruct [
      :title,
      :place,
      :time,
      {:participants, []},
      {:agenda, []}
    ]
  end
end
