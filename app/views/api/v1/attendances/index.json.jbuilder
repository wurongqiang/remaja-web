  json.attendances @attendances do |a|
    json.id a.id
    json.meeting_name a.session.meeting.name
    json.meeting_date a.session.meeting.date
    json.session_name a.session.name
  end