import 'package:flutter/material.dart';

class screens2 extends StatefulWidget {
  screens2({super.key});

  @override
  State<screens2> createState() => _screens2State();
}

class _screens2State extends State<screens2> {
  var item = TextEditingController();

  List<String> todoItems = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                      controller: item,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Todo Items'))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          todoItems.add(item.text);
                        });
                      },
                      child: Text('Add')),
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        todoItems.clear();
                      });
                    },
                    child: Text("RESET"))
              ],
            ),
            Expanded(
              // child: ListView(
              //   shrinkWrap: true,
              //   children: todoItems.map((item) => TodoItem(item)).toList(),
              // ),
              child: ListView.builder(
                itemCount: todoItems.length,
                itemBuilder: (context, index) =>
                    TodoItem(index + 1, todoItems[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TodoItem extends StatelessWidget {
  TodoItem(this.index, this.item, {super.key});
  String item;
  int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.amber, Colors.blueAccent]),
      ),
      child: Card(
        color: Color.fromARGB(255, 12, 204, 234),
        elevation: 7,
        child: ListTile(
          title: Text(
            item,
            style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 20,
                fontWeight: FontWeight.w800),
          ),
          leading: CircleAvatar(child: Text('$index')),
          trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete_forever,
                color: Colors.blue,
              )),
        ),
      ),
    );
  }
}
