import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox("BoomBox");
  runApp(MaterialApp(
    home: Hive_crud(),
  ));
}

class Hive_crud extends StatefulWidget {
  @override
  State<Hive_crud> createState() => _Hive_crudState();
}

class _Hive_crudState extends State<Hive_crud> {
  List<Map<String, dynamic>> task = [];
  final mybox = Hive.box('BoomBox');

  @override
  void initState() {
    load_or_read_Task();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To do"),
      ),
      body: task.isEmpty
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: task.length,
              itemBuilder: (ctx, index) {
                return Card(
                  child: ListTile(
                    title: Text(
                      task[index]['taskname'],
                    ),
                    subtitle: Text(task[index]['taskcont']),
                    trailing: Wrap(
                      children: [
                        IconButton(
                            onPressed: () {
                              showTask(context, task[index]['id']);
                            },
                            icon: Icon(Icons.edit)),
                        IconButton(
                            onPressed: () {
                              deleteTask(task[index]['id']);
                            },
                            icon: Icon(Icons.delete))
                      ],
                    ),
                  ),
                );
              }),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showTask(context, null),
        label: Text("Create Task"),
        icon: Icon(Icons.add),
      ),
    );
  }

  final task_controller = TextEditingController();
  final content_controller = TextEditingController();

  void showTask(BuildContext context, int? itemkey) {
    if (itemkey != null) {
      final existingTask =
          task.firstWhere((element) => element['id'] == itemkey);
      task_controller.text = existingTask['taskname'];
      content_controller.text = existingTask['taskcont'];
    }
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.only(
                top: 15,
                left: 15,
                right: 15,
                bottom: MediaQuery.of(context).viewInsets.bottom + 120),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: task_controller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "TaskName"),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: content_controller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Task Content"),
                ),
                ElevatedButton(
                    onPressed: () {
                      if (task_controller.text != "" &&
                          content_controller.text != "") {
                        if (itemkey == null) {
                          createTask({
                            'name': task_controller.text.trim(),
                            'content': content_controller.text.trim()
                          });
                        } else {
                          updateTask(itemkey, {
                            'name': task_controller.text.trim(),
                            'content': content_controller.text.trim()
                          });
                        }
                      }
                      content_controller.text = "";
                      task_controller.text = "";
                      Navigator.of(context).pop();
                    },
                    child:
                        Text(itemkey == null ? 'Create Task' : 'Update Task'))
              ],
            ),
          );
        });
  }

  Future<void> createTask(Map<String, dynamic> task) async {
    await mybox.add(task);
    load_or_read_Task();
  }

  Future<void> updateTask(int? itemkey, Map<String, String> uptask) async {
    await mybox.put(itemkey, uptask);
    load_or_read_Task();

    ///to refresh page ui
  }

  void load_or_read_Task() {
    final tasks_from_hive = mybox.keys.map((key) {
      final value = mybox.get(key);
      return {
        'id': key,
        'taskname': value['name'],
        'taskcont': value['content']
      };
    }).toList();
    setState(() {
      task = tasks_from_hive.reversed.toList();
    });
  }

  Future<void> deleteTask(itemkey) async {
    await mybox.delete(itemkey);
    load_or_read_Task();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.cyan, content: Text("Succefully deleted")));
  }
}
