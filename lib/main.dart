import 'package:flutter/material.dart';

void main(){
  runApp(const Sufian());
}

class Sufian extends StatelessWidget {
  const Sufian({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

mySnack(message, context){
  ScaffoldMessenger.of
  (context).showSnackBar
  (SnackBar(
    content: Text(message),
    ),
  );
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    int _currentIndex=0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Salman'),
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.shifting,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.amber,
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.contact_mail,
            ),
            label: "Contact",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "User",
          ), 
        ],
        onTap: (index) {
          if(index==0){
            mySnack("Home", context);
          }
          if(index==1){
            mySnack("Contacts", context);
          }
          if(index==2){
            mySnack("User", context);
          }
        },
      ),
      drawer: Drawer(
       child: ListView(
        padding:  const EdgeInsets.all(0),
          children: [
            Center(
              child: DrawerHeader(
                child: UserAccountsDrawerHeader(
                accountName: const Text("Salman Ahmed", 
                style: TextStyle(
                  color: Colors.black),
                ), 
                accountEmail: const Text(
                  "sajoynal17@gmail.com",
                  style: TextStyle(
                    color: Colors.black),
                  ),
                  onDetailsPressed: (() {
                    mySnack("message", context);
                  }),
                decoration: const BoxDecoration(),
                  currentAccountPicture: Image.network(
                    fit: BoxFit.cover,
                    "https://www.facebook.com/photo/?fbid=3560299927531226&set=a.2007548836139684"),
                  ),
              ),
            ),
            ListTile(title: const Text(
              "Home"),
            leading: const Icon(
              Icons.home),
              onTap: (() {
              mySnack("Drawer Home", context);
            }
          ),
         ),
            ListTile(title: const Text(
              "Prfile"),
            leading: const Icon(
              Icons.person_add_alt_1_outlined),
              onTap: (() {
              mySnack("Drawer prfile", context);
            }
          ),
         ),
            ListTile(title: const Text(
              "Email"),
            leading: const Icon(
              Icons.mark_email_read),
              onTap: (() {
              mySnack("Drawer Email", context);
            }
          ),
         ),
        ],
        ),
      ),
      endDrawer: Drawer(
       child: ListView(
        padding:  const EdgeInsets.all(0),
          children: [
            Center(
              child: DrawerHeader(
                child: UserAccountsDrawerHeader(
                accountName: const Text("Salman Ahmed", 
                style: TextStyle(
                  color: Colors.black),
                ), 
                accountEmail: const Text(
                  "sajoynal17@gmail.com",
                  style: TextStyle(
                    color: Colors.black),
                  ),
                  onDetailsPressed: (() {
                    mySnack("message", context);
                  }),
                decoration: const BoxDecoration(),
                  currentAccountPicture: Image.network(
                    fit: BoxFit.cover,
                    "https://www.facebook.com/photo/?fbid=3560299927531226&set=a.2007548836139684"),
                  ),
              ),
            ),
            ListTile(title: const Text(
              "Home"),
            leading: const Icon(
              Icons.home),
              onTap: (() {
              mySnack("Drawer Home", context);
            }
          ),
         ),
            ListTile(title: const Text(
              "Prfile"),
            leading: const Icon(
              Icons.person_add_alt_1_outlined),
              onTap: (() {
              mySnack("Drawer prfile", context);
            }
          ),
         ),
            ListTile(title: const Text(
              "Email"),
            leading: const Icon(
              Icons.mark_email_read),
              onTap: (() {
              mySnack("Drawer Email", context);
            }
          ),
         ),
        ],
        ),
      ),
      body:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            alignment: Alignment.center,
            height: 250,
            width: 250,
            margin: const EdgeInsets.all(0),
            padding: const EdgeInsets.all(0),
            decoration: BoxDecoration(
              border: Border.all(width: 6,
              color: Colors.black),
            ),
            child: Image.network(
              "https://www.facebook.com/photo/?fbid=3560299927531226&set=a.2007548836139684"),
    ),
          Container(
            alignment: Alignment.center,
            height: 250,
            width: 250,
            margin: const EdgeInsets.all(0),
            padding: const EdgeInsets.all(0),
            decoration: BoxDecoration(
              border: Border.all(width: 6,
              color: Colors.black),
            ),
            child: Image.network(
              "https://www.facebook.com/photo/?fbid=3560299927531226&set=a.2007548836139684"),
    ),
          Container(
            alignment: Alignment.center,
            height: 250,
            width: 250,
            margin: const EdgeInsets.all(0),
            padding: const EdgeInsets.all(0),
            decoration: BoxDecoration(
              border: Border.all(width: 6,
              color: Colors.black),
            ),
            child: Image.network(
              "https://www.facebook.com/photo/?fbid=3560299927531226&set=a.2007548836139684"),
    ),
        ],
      ),
    );
  }
}
