import 'package:uuid/uuid.dart';

class Todo {
  final String id;
  final String title;
  final String description;
  final bool isChecked;

  Todo({
    String? id,
    required this.title,
    required this.description,
    this.isChecked = false,
  }) : id = id ?? const Uuid().v4();

  Todo copywith({
    String? id,
    String? title,
    String? description,
    bool? isChecked,
  }) {
    return Todo(
      id : id ?? this.id,
      title: title ?? this.title, 
      description: description ?? this.description,
      isChecked: isChecked ?? this.isChecked,
      );
  }
}