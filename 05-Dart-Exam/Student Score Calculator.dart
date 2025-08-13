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

//INFO: LinkedHashMap ব্যবহার করে আইটেমের ক্রম (order) ঠিক রাখার জন্য 'dart:collection' লাইব্রেরিটি import করতে হয়।
import 'dart:collection';

void main() {
  //SECTION: TypeScript Code:
    // interface Student {
    //   name: string;
    //   scores: number[];
    // }
    // const students: Student[] = [
    //   { name: "Alice", scores: [85, 90, 78] },
    //   { name: "Bob", scores: [88, 76, 95] },
    //   { name: "Charlie", scores: [90, 92, 85] }
    // ];

  //Dart Code:
  List<Map<String, dynamic>> students = [
    {"name": "Alice", "scores": [85, 90, 78]},
    {"name": "Bob", "scores": [88, 76, 95]},
    {"name": "Charlie", "scores": [90, 92, 85]}
  ];
  //EXPLAIN: Dart কোডের ব্যাখ্যা:
  // 'List<Map<String, dynamic>>' দিয়ে ডেটার গঠন বলা হয়েছে। 'List' হলো অ্যারে এবং 'Map' হলো অবজেক্ট।
  // '<String, dynamic>' দিয়ে বলা হয়েছে Map-এর key হবে String এবং value হবে যেকোনো কিছু (dynamic)।
  
  // TypeScript-এর 'scores: number[]' এর মতো হুবহু টাইপ-সেফ নয়, কারণ 'dynamic' যেকোনো কিছু হতে পারে।
  //TODO: TypeScript-এর interface-এর মতো হুবহু টাইপ-সেফ কোড লিখতে হলে, Dart-এ একটি 'class' তৈরি করতে হতো। যেমন:
  
  // class Student {
  //   String name;
  //   List<int> scores;
  //   Student(this.name, this.scores);
  // }
  
  // এবং লিস্টটি হতো: List<Student> students = [ Student("Alice", [85, 90, 78]), ... ];

  // TypeScript Code:
  // const averageScores: { [key: string]: number } = {};

  // Dart Code:
  Map<String, double> averageScores = {};
  // EXPLAIN: Dart কোডের ব্যাখ্যা:
  //INFO: 'Map<String, double>' দিয়ে একটি খালি ম্যাপ তৈরি করা হয়েছে।
  // এখানে key হবে String (ছাত্রের নাম) এবং value হবে double (গড় নম্বর)।

  //SECTION: TypeScript Code:
  // for (const student of students) {
  //   const sum = student.scores.reduce((a, b) => a + b, 0);
  //   const average = sum / student.scores.length;
  //   averageScores[student.name] = Math.round(average * 100) / 100;
  // }

  // Dart Code:
  for (var student in students) {
    String name = student['name'];
    List<int> scores = student['scores'];
    int sum = scores.reduce((a, b) => a + b);
    double average = sum / scores.length;
    double roundedAverage = (average * 100).round() / 100;
    averageScores[name] = roundedAverage;
  }
  // // Dart কোডের ব্যাখ্যা:
  // // 'for...in' লুপটি TypeScript-এর 'for...of' লুপের মতোই কাজ করে।
  // // ভেতরের গণনার পদ্ধতি (reduce, ভাগ, রাউন্ড) দুটো ল্যাঙ্গুয়েজেই প্রায় একই।

  //SECTION: TypeScript Code:
  // const sortedEntries = Object.entries(averageScores);
  // sortedEntries.sort(([, scoreA], [, scoreB]) => scoreB - scoreA);
  // const sortedMap = Object.fromEntries(sortedEntries);

  // Dart Code:
  var sortedEntries = averageScores.entries.toList();
  sortedEntries.sort((a, b) => b.value.compareTo(a.value));
  var sortedMap = LinkedHashMap.fromEntries(sortedEntries);
  //EXPLAIN: Dart কোডের ব্যাখ্যা:
  // ম্যাপকে সরাসরি সর্ট করা যায় না, তাই প্রথমে '.entries.toList()' দিয়ে তাকে লিস্টে পরিণত করা হয়।
  // তারপর '.sort()' দিয়ে লিস্টটিকে ভ্যালুর ওপর ভিত্তি করে সাজানো হয়।
  // শেষে 'LinkedHashMap.fromEntries()' ব্যবহার করে সাজানো লিস্ট থেকে একটি নতুন ম্যাপ তৈরি করা হয়, যা ক্রম ঠিক রাখে।

  //SECTION: TypeScript Code:
  // console.log('Sorted Student Scores:');
  // console.log(sortedMap);

  // Dart Code:
  print('Sorted Student Scores:');
  print(sortedMap);
  // // Dart কোডের ব্যাখ্যা:
  // // 'print()' ফাংশনটি TypeScript-এর 'console.log()'-এর মতোই কাজ করে।
}
