defmodule MyCalendar do

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

end

