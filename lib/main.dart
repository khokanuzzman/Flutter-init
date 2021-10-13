import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "test", 
  home: HomePage(),
  theme: ThemeData(primarySwatch: Colors.purple),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Awsome App'),
      ),
      body: SingleChildScrollView(
        child: Card(
          child: Column(
            children: [
              Image.asset("assets/bg.jpg"),
              SizedBox(
                height: 20,
              ),
              Text("change me"),
              Padding(
                padding: const EdgeInsets.all(8),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "enter your name",
                    labelText: "name",
                    border: OutlineInputBorder()
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Md khokanuzzaman"), 
              accountEmail: Text("khokanuzzamankhokan@gmail.com"),
              currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1531891570158-e71b35a485bc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1964&q=80"),),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("info about accounts"),
              trailing: Icon(Icons.edit),
            ),ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("info about accounts"),
              trailing: Icon(Icons.edit),
            ),ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("info about accounts"),
              trailing: Icon(Icons.edit),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){}, 
        child: Icon(Icons.edit)
      )
    );
  }
}
