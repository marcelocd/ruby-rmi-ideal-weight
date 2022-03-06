require 'drb/drb'
DRb.start_service
remote_object = DRbObject.new_with_uri('druby://localhost:9999')

gender = 'm'
height = 1.76

ideal_weight = remote_object.ideal_weight(gender, height)

puts "Ideal weight (gender: '#{gender}', height: #{height} m) = #{ideal_weight}"