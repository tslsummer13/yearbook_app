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
end
