require 'open-uri'

class Student
  def Student.all
    portal_url = "http://portal.starterleague.com/courses/43.json"
    @students ||= JSON.parse(open(portal_url).read)["students"]
    return @students
  end

  def Student.first
    return Student.all.first
  end

  def Student.last
    return Student.all.last
  end

  def Student.find(id)
    return Student.all[id.to_i]
  end

  def Student.order(field_direction)
    field = field_direction.split.first
    direction = field_direction.split.last

    if direction.downcase == "desc"
      return Student.all.sort { |a, b| b[field] <=> a[field] }
    else
      return Student.all.sort { |a, b| a[field] <=> b[field] }
    end
  end
end
