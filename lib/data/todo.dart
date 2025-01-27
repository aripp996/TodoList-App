class Todo {
  final String title;
  final String description;
  final bool isChecked;

  const Todo({
    required this.title,
    required this.description,
    this.isChecked = false,
  });

  Todo copywith({
    String? title,
    String? description,
    bool? isChecked,
  }) {
    return Todo(
      title: title ?? this.title, 
      description: description ?? this.description,
      isChecked: isChecked ?? this.isChecked,
      );
  }
}