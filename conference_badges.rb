def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  attendees.map do |name|
    badge_maker(name)
  end
end

def assign_rooms(attendees)
  room_assignments = []
  attendees.each_with_index {|name, index| room_assignments << "Hello, #{name}! You'll be assigned to room #{index + 1}!"}
  room_assignments
end

def printer(attendees)
  attendees.map
    puts batch_badge_creator(attendees).to_s
    puts assign_rooms(attendees).to_s
end