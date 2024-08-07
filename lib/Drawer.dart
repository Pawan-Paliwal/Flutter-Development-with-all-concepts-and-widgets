import 'package:flutter/material.dart';

class Drawerwidget extends StatefulWidget {
  const Drawerwidget({super.key});

  @override
  State<Drawerwidget> createState() => _DrawerwidgetState();
}

class _DrawerwidgetState extends State<Drawerwidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: ListView(
            children: [
              DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRazGKny1CSlH3XZGzdceONvBwSZqNVKklLnA&s'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Pawan Paliwal',
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              'Paliwalpawan505@gmail.com',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.black),
                            )
                          ],
                        )
                      ],
                    ),
                  )),
              ListTile(
                leading: Icon(Icons.folder),
                title: Text('My Files'),
              ),
              ListTile(
                leading: Icon(Icons.my_library_add),
                title: Text('Add Files'),
              ),
              ListTile(
                leading: Icon(Icons.legend_toggle_sharp),
                title: Text('Lets Go!'),
              ),
              ListTile(
                leading: Icon(Icons.drive_eta),
                title: Text('Drive Now'),
              ),
              ListTile(
                leading: Icon(Icons.traffic_sharp),
                title: Text('Traffic'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Center(
          child: Row(
            children: [
              Text(
                'Drawer Flutter',
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            child: Text('Swipe left to Right ->'),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
