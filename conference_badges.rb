def badge_maker(speaker)
    "Hello, my name is #{speaker}."
end


# Method 2
def batch_badge_creator(names)
  new_array = []
  names.each do |speaker|
    new_array.push(badge_maker(speaker)) # The argument "speaker" in this method that we invoked from the method 1 should be extracted from the argument of the method from our current method which, in this case, is new_array.push(badge_maker(speaker))
  end
  new_array
end

# Method 2 with map
def batch_badge_creator(names)
  names.map do |speaker|
    badge_maker(speaker)
  end
end

# Method 3
def assign_rooms(names)
  names.map.with_index do |speaker, index|
    "Hello, #{speaker}! You'll be assigned to room #{index + 1}!"
  end
end

# Method 3 can also be done differently without using 'map'

# Method 4
def printer(speaker)
  batch_badge_creator(speaker).each do |attendee|
    puts attendee
  end
  assign_rooms(speaker).each do |attendee|
    puts attendee
  end
end
