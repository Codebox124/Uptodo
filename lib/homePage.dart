import 'package:flutter/material.dart';
import 'package:todo_list/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentTab = 0;
  final List<Widget> screens = [ProfilePage()];
  final TextEditingController _textFieldController = TextEditingController();
  final List<String> _todoList = <String>[];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomePage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 146, 119, 245),
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
              shape: BeveledRectangleBorder(),
              backgroundColor: Color.fromARGB(252, 43, 41, 41),
              context: context,
              builder: (context) {
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Add Task",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: _textFieldController,
                        keyboardType: TextInputType.text,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(252, 43, 41, 41),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 3,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Description",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 224, 219, 219)),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.watch_later_outlined,
                                  color: Colors.white),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.wb_twilight_sharp,
                                  color: Colors.white),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.flag, color: Colors.white)
                            ],
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                                _addTodoItem(_textFieldController.text);
                              },
                              icon: Icon(Icons.send, color: Color.fromARGB(255, 152, 78, 250),))
                        ],
                      )
                    ],
                  ),
                );
              });
        },
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(137, 119, 116, 116),
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  minWidth: 100,
                  onPressed: () {
                    setState(() {
                      currentTab = 0;
                      currentScreen = HomePage();
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home,
                        size: 30,
                        color: currentTab == 0 ? Colors.white : Colors.grey,
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 100,
                  onPressed: () {
                    setState(() {
                      currentTab = 1;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfilePage()));
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        size: 30,
                        Icons.calendar_month,
                        color: currentTab == 1 ? Colors.white : Colors.grey,
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  minWidth: 100,
                  onPressed: () {
                    setState(() {
                      currentTab = 2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.notifications,
                        size: 30,
                        color: currentTab == 2 ? Colors.white : Colors.grey,
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 100,
                  onPressed: () {
                    setState(() {
                      currentTab = 3;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        size: 30,
                        Icons.person,
                        color: currentTab == 3 ? Colors.white : Colors.grey,
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(
          Icons.filter_alt,
          color: Colors.white,
        ),
        centerTitle: true,
        title: Text(
          "Index",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: CircleAvatar(
              child: Image.asset("assets/imgs/ff.png"),
            ),
          )
        ],
      ),
      body: ListView(children: _getItems()),
      backgroundColor: Colors.black,
    );
  }

  void _addTodoItem(String title) {
    //  a set state will notify the app that the state has changed
    setState(() {
      _todoList.add(title);
    });
    _textFieldController.clear();
  }

  // populate the listview
  Widget _buildTodoItem(String title) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(255, 80, 78, 78),
        ),
        child: ListTile(
          leading: Icon(Icons.book,color: Colors.white,),
          title: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top:10),
            child: Text("Today", style: TextStyle(color: const Color.fromARGB(255, 173, 171, 171)),),
          ),
          trailing: Icon(Icons.delete, color:Colors.white ,),
        ),
      ),
    );
  }

  List<Widget> _getItems() {
    final List<Widget> _todoWidgets = <Widget>[];
    for (String title in _todoList) {
      _todoWidgets.add(_buildTodoItem(title));
    }
    return _todoWidgets;
  }
}
