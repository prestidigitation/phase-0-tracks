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

create_best_time_table = <<-SQL
  CREATE TABLE IF NOT EXISTS best_time(
    id INTEGER PRIMARY KEY,
    student_id INT,
    event VARCHAR(255),
    top_time FLOAT,
    FOREIGN KEY (student_id) REFERENCES student(id)
  )
SQL

db.execute(create_student_table)
db.execute(create_best_time_table)

def add_student(db, first_name, last_name, year)
  db.execute("INSERT INTO student (first_name, last_name, year) VALUES (?, ?, ?)", [first_name, last_name, year])
end

def delete_student(db, first_name, last_name)
  db.execute("DELETE FROM student WHERE first_name = ? AND last_name = ?", [first_name, last_name])
end

def add_best_time(db, student_id, event, top_time)
  db.execute("INSERT INTO best_time (student_id, event, top_time) VALUES (?, ?, ?)", [student_id, event, top_time])
end


# Driver code

add_student(db, "Bonnie", "Simpson", "sophomore")
add_student(db, "Carrie", "Campbell", "junior")
add_student(db, "Ada", "Rhodes", "freshman")
add_student(db, "Cecilia", "Day", "freshman")
add_student(db, "Dave", "Burgess", "senior")

add_best_time(db, 1, "200m", 24.13)
add_best_time(db, 1, "400m", 55.21)
add_best_time(db, 2, "200m", 24.82)
add_best_time(db, 5, "400m", 57.09)
add_best_time(db, 3, "400m", 53.74)
add_best_time(db, 4, "400m", 60.15)

students = db.execute("SELECT * FROM student")
students.each do |student|
 puts "#{student['first_name']} #{student['last_name']} is a #{student["year"]}."
end

delete_student(db, "Carrie", "Campbell")
puts db.execute("SELECT * FROM student")
