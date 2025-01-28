import 'package:bmi_calculator/constans.dart';
import 'package:bmi_calculator/widgets/todo_tile_widgets.dart';
import 'package:flutter/material.dart';

import 'data/todo.dart';

class TodoHomeScreen extends StatefulWidget {
  const TodoHomeScreen({super.key});

  @override
  State<TodoHomeScreen> createState() => _TodoHomeScreenState();
}

class _TodoHomeScreenState extends State<TodoHomeScreen> {
  List<Todo> _todos = [];
  int _selectedIndex = 0;

  String? _title;
  String? _description;

  @override
  void initState() {
    super.initState();

    _todos = [
      Todo(title : "Task 1", description : "belajar dart"),
      Todo(title : "Task 2", description : "belajar flutter"),
      Todo(title : "Task 3", description : "belajar python"),
      Todo(title : "Task 4", description : "belajar flask"),
      Todo(title : "Task 5", description : "belajar golang"),
      Todo(title : "Task 6", description : "belajar swift"),
      Todo(title : "Task 7", description : "belajar kotlin"),
      Todo(title : "Task 8", description : "belajar php"),
      Todo(title : "Task 9", description : "belajar javascript"),
      Todo(title : "Task 10", description : "belajar typescript"),
      Todo(title : "Task 11", description : "belajar r lang"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPallete.black,
      appBar: AppBar(
        backgroundColor: ColorPallete.black,
        scrolledUnderElevation: 0,
        elevation: 0,
        actions: const [
          Icon(
            Icons.more_horiz_outlined,
            color: ColorPallete.red,
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            child: Text(
              "Today",
              style: TextStyle(
                fontSize: 36.0,
                color: ColorPallete.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            child: Text(
              "27 Jan - Sunday",
              style: TextStyle(
                fontSize: 16.0,
                color: ColorPallete.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Divider(
            thickness: 0.1,
            color: ColorPallete.grey,
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    TodoTileWidgets(todo: _todos[index]),
                    const SizedBox( height: 16.0),
                    const Divider(
                      thickness: 0.1,
                      color: ColorPallete.grey,
                      indent: 40,
                    )
                  ],
                );
              },
              itemCount: _todos.length,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorPallete.red,
        onPressed: () {
          _showAddTaskModalBottomSheet(context);
        },
        tooltip: 'Add Task',
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
          color: ColorPallete.white,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorPallete.blackLight,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today,
              color: ColorPallete.white,
            ),
            label: "Today",
            activeIcon: Icon( 
              Icons.calendar_today,
              color: ColorPallete.red,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.inbox,
              color: ColorPallete.white,
            ),
            label: "Inbox",
            activeIcon: Icon( 
              Icons.inbox,
              color: ColorPallete.red,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: ColorPallete.white,
            ),
            label: "Search",
            activeIcon: Icon( 
              Icons.search,
              color: ColorPallete.red,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.article,
              color: ColorPallete.white,
            ),
            label: "Browse",
            activeIcon: Icon( 
              Icons.article,
              color: ColorPallete.red,
            ),
          ),
        ],
        selectedItemColor: ColorPallete.red,
        unselectedItemColor: ColorPallete.white,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  void _addTodo() {
    if (_title != null && _description != null) {
      var todo = Todo(
        title: _title!,
        description: _description!,
      );
    }
  }

  void _showAddTaskModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: ColorPallete.black,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
      ), 
      isScrollControlled: true,
      builder: (context) {
        return Padding(
          padding:EdgeInsets.only(
            top: 8.0,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                onChanged: (value) {
                  _title = value;
                },
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16.0,
                  ),
                  hintText: 'Task Name',
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    color: ColorPallete.grey,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                  )
                ),
                style: const TextStyle(
                  color: ColorPallete.grey,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  decorationThickness: 0,
                ),
                cursorColor: ColorPallete.red,
                autofocus: true,
              ),
               TextField(
                onChanged: (value) {
                  _description = value;
                },
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16.0,
                  ),
                  hintText: 'Description',
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    color: ColorPallete.grey,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                  )
                ),
                style: const TextStyle(
                  color: ColorPallete.grey,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  decorationThickness: 0,
                ),
                cursorColor: ColorPallete.red,
              ),
              const Divider(
                thickness: 0.1,
                color: ColorPallete.grey,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.inbox,
                      color: ColorPallete.white,
                    ),
                    IconButton(
                      onPressed: () {
                        _addTodo();
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_circle_right,
                        color: ColorPallete.red,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
} 