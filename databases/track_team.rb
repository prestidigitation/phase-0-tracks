require 'sqlite3'

db = SQLite3::Database.new("runners.db")
db.results_as_hash = true

create_student_table = <<-SQL
  CREATE TABLE IF NOT EXISTS student(
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    year VARCHAR(255)
  )
SQL

db.execute(create_student_table)

def create_student(db, first_name, last_name, year)
  db.execute("INSERT INTO student (first_name, last_name, year) VALUES (?, ?, ?)", [first_name, last_name, year])
end

def delete_student(db, first_name, last_name)
  db.execute("DELETE FROM student WHERE first_name = ? AND last_name = ?", [first_name, last_name])
end


# Driver code

create_student(db, "Bonnie", "Simpson", "sophomore")
create_student(db, "Carrie", "Campbell", "junior")
create_student(db, "Ada", "Rhodes", "freshman")
create_student(db, "Cecilia", "Day", "freshman")
create_student(db, "Dave", "Burgess", "senior")

students = db.execute("SELECT * FROM student")
students.each do |student|
 puts "#{student['first_name']} #{student['last_name']} is a #{student["year"]}."
end

delete_student(db, "Carrie", "Campbell")
puts db.execute("SELECT * FROM student")


# create_event_table = <<-SQL
#   CREATE TABLE IF NOT EXISTS event(
#     id INTEGER PRIMARY KEY,
#     first_name VARCHAR(255),
#     last_name VARCHAR(255),
#     year VARCHAR(255)
#   )
# SQL

