// You are given a list of students. Each student has a name and a list of scores. Your task is to:
// Calculate the average score of each student (rounded to 2 decimal places).
// Store the results in a map, where the student’s name is the key and their average score is the value.
// Sort the map in descending order of average scores and print the final sorted result.
// Sample Input: 
// [
//   {"name": "Alice", "scores": [85, 90, 78]},
//   {"name": "Bob", "scores": [88, 76, 95]},
//   {"name": "Charlie", "scores": [90, 92, 85]}
// ];

// Output: 
// {
//   "Charlie": 89.0,
//   "Bob": 86.33,
//   "Alice": 84.33
// }
import 'dart:collection';

void main() {
  // Sample Input Data
  List<Map<String, dynamic>> students = [
    {"name": "Alice", "scores": [85, 90, 78]},
    {"name": "Bob", "scores": [88, 76, 95]},
    {"name": "Charlie", "scores": [90, 92, 85]}
  ];

  // Map to store the results (student name -> average score)
  Map<String, double> averageScores = {};

  // 1. Calculate the average score for each student
  for (var student in students) {
    String name = student['name'];
    List<int> scores = student['scores'];

    // Calculate the sum of scores using reduce
    int sum = scores.reduce((a, b) => a + b);

    // Calculate the average
    double average = sum / scores.length;

    // Round the average to 2 decimal places
    double roundedAverage = (average * 100).round() / 100;

    // Store the result in the map
    averageScores[name] = roundedAverage;
  }

  // 2. Sort the map in descending order of average scores
  // Get the map entries and convert them to a list
  var sortedEntries = averageScores.entries.toList();

  // Sort the list based on the values (scores) in descending order
  sortedEntries.sort((a, b) => b.value.compareTo(a.value));

  // Create a new LinkedHashMap from the sorted entries to preserve the order
  var sortedMap = LinkedHashMap.fromEntries(sortedEntries);

  // 3. Print the final sorted result
  print('Sorted Student Scores:');
  print(sortedMap);
  // Expected Output:
  // {Charlie: 89.0, Bob: 86.33, Alice: 84.33}
}
