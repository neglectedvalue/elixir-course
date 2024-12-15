defmodule MyCalendar do
  alias Mix.SCM
  def sample_event_tuple() do
    alias MyCalendar.Model.EventTuple, as: T

    place = T.Place.new("Office #1", "Room 42")
    time = ~U[2024-07-05 15:00:00Z]

    participants = [
      T.Participant.new("Bob", :projectmanager),
      T.Participant.new("Petr", :developer),
      T.Participant.new("Kate", :qa),
      T.Participant.new("Helen", :devops)
    ]

    agenda = [
      T.Topic.new("Interview", "Candidate for developer position"),
      T.Topic.new("Weather", "Discuss weather"),
      T.Topic.new("Cookies", "Discuss what to buy")
    ]

    T.Event.new("weakly teeam meeting", place, time, participants, agenda)
  end

  def sample_event_map() do
    alias MyCalendar.Model.EventMap, as: M

    place = M.Place.new("Office #1", "Room 42")
    time = ~U[2024-07-05 15:00:00Z]

    participants = [
      M.Participant.new("Bob", :projectmanager),
      M.Participant.new("Petr", :developer),
      M.Participant.new("Kate", :qa),
      M.Participant.new("Helen", :devops)
    ]

    agenda = [
      M.Topic.new("Interview", "Candidate for developer position"),
      M.Topic.new("Weather", "Discuss weather"),
      M.Topic.new("Cookies", "Discuss what to buy")
    ]

    M.Event.new("weakly teeam meeting", place, time, participants, agenda)
  end

  def sample_event_struct() do
    alias MyCalendar.Model.EventStruct, as: S

    place = %S.Place{office: "Office #1", room: "Room 42"}
    time = ~U[2024-12-15 14:00:00Z]
    participants = [
      %S.Participant{name: "Bob", role: :developer},
      %S.Participant{name: "Bill", role: :developer},
      %S.Participant{name: "Kate", role: :qa},
    ]
    agenda = [
      %S.Topic{title: "Interview", description: "New developer"},
      %S.Topic{title: "Cookies", description: "What to buy"},
    ]

    %S.Event{
      title: "Weekly meeting",
      place: place,
      time: time,
      participants: participants,
      agenda: agenda
    }
  end


end
