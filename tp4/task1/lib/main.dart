import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

void main() async {
  // Avoid errors caused by flutter upgrade.
  // Importing 'package:flutter/widgets.dart' is required.
  WidgetsFlutterBinding.ensureInitialized();
  // Open the database and store the reference.
  final database = openDatabase(
    // Set the path to the database. Note: Using the `join` function from the
    // `path` package is best practice to ensure the path is correctly
    // constructed for each platform.
    join(await getDatabasesPath(), 'doggie_database.db'),
    // When the database is first created, create a table to store dogs.
    onCreate: (db, version) {
      // Run the CREATE TABLE statement on the database.
      return db.execute(
        'CREATE TABLE students(id INTEGER PRIMARY KEY, name TEXT, age INTEGER)',
      );
    },
    // Set the version. This executes the onCreate function and provides a
    // path to perform database upgrades and downgrades.
    version: 1,
  );

  // Define a function that inserts dogs into the database
  Future<void> insertstudent(Student student) async {
    // Get a reference to the database.
    final db = await database;

    // Insert the Dog into the correct table. You might also specify the
    // `conflictAlgorithm` to use in case the same dog is inserted twice.
    //
    // In this case, replace any previous data.
    await db.insert(
      'student',
      student.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // A method that retrieves all the students from the student table.
  Future<List<Student>> student() async {
    // Get a reference to the database.
    final db = await database;

    // Query the table for all The Dogs.
    final List<Map<String, dynamic>> maps = await db.query('student');

    // Convert the List<Map<String, dynamic> into a List<Dog>.
    return List.generate(maps.length, (i) {
      return student(
        id: maps[i]['id'],
        name: maps[i]['name'],
        age: maps[i]['age'],
      );
    });
  }

  Future<void> updatestudent(student student) async {
    // Get a reference to the database.
    final db = await database;

    // Update the given Student
    await db.update(
      'student',
      dog.toMap(),
      // Ensure that the student has a matching id.
      where: 'id = ?',
      // Pass the student's id as a whereArg to prevent SQL injection.
      whereArgs: [student.id],
    );
  }

  Future<void> deletestudent(int id) async {
    // Get a reference to the database.
    final db = await database;

    // Remove the student from the database.
    await db.delete(
      'student',
      // Use a `where` clause to delete a specific student.
      where: 'id = ?',
      // Pass the student's id as a whereArg to prevent SQL injection.
      whereArgs: [id],
    );
  }

  // Create a student and add it to the student table
  var Smith = const Student(
    id: 501,
    name: 'Smith',
    age: 20,
  );

  await insertstudent(student);

  // Now, use the method above to retrieve all the student.
  print(await student()); // Prints a list that include smith.

  // Update student's age and save it to the database.
  smith = student(
    id: Smith.id,
    name: smith.name,
    age: smith.age + 2,
  );
  await updatestudent(smith);

  // Print the updated results.
  print(await student()); // Prints smith with age 22.

  // Delete smith from the database.
  await deletesmith(smith.id);

  // Print the list of student (empty).
  print(await smith());
}

class student {
  final int id;
  final String name;
  final int age;

  const student({
    required this.id,
    required this.name,
    required this.age,
  });

  // Convert a student into a Map. The keys must correspond to the names of the
  // columns in the database.
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'age': age,
    };
  }

  // Implement toString to make it easier to see information about
  // each student when using the print statement.
  @override
  String toString() {
    return 'Student{id: $id, name: $name, age: $age}';
  }
}