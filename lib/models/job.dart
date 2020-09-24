import './user.dart';

class Job {
  final String id;
  final String title;
  final List<String> base;
  final String education;
  final String experience;
  final String salary;
  final List<String> company;
  final List<String> category;
  final List<String> tags;
  final User publisher;

  Job({
    this.id,
    this.title,
    this.base,
    this.education,
    this.experience,
    this.salary,
    this.company,
    this.category,
    this.tags,
    this.publisher,
  });

  factory Job.fromJSON(Map<String, dynamic> json) {
    return Job(
      title: json['title'],
      base: new List<String>.from(json['base']),
      education: json['education'],
      experience: json['experience'],
      salary: json['salary'],
      company: new List<String>.from(json['company']),
      category: new List<String>.from(json['category']),
      tags: new List<String>.from(json['tags']),
      publisher: User.fromJSON(json['publisher']),
    );
  }
}
