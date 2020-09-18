import './user.dart';

class Job {
  final String id;
  final String title;
  final String salary;
  final List<String> company;
  final String info;
  final List<String> category;
  final List<String> tags;
  final User publisher;

  Job({
    this.id,
    this.title,
    this.salary,
    this.company,
    this.info,
    this.category,
    this.tags,
    this.publisher,
  });

  factory Job.fromJSON(Map<String, dynamic> json) {
    return Job(
      title: json['title'],
      salary: json['salary'],
      company: json['company'],
      info: json['info'],
      category: json['category'],
      tags: json['tags'],
      publisher: json['publisher'],
    );
  }
}
