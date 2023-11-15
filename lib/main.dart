
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Fragment/CallFragment.dart';
import 'Fragment/EmailFragment.dart';
import 'Fragment/HomeFragment.dart';
import 'Fragment/MessageFragment.dart';
import 'Fragment/PersonFragment.dart';
import 'Fragment/StoreFragment.dart';

main(){
   runApp(const MyApp());//Apllication
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.amber),
      color: Colors.blue,
      debugShowCheckedModeBanner: false,
      home: HomeActivity()
    );
  }

}

class HomeActivity extends StatelessWidget{
  HomeActivity({super.key});

  MySnackBar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }
  MyAlertDialog(context){
    return showDialog(
        context: context,
        builder: (BuildContext context){
          return Expanded(
            child: AlertDialog(
              title: Text("Alert"),
              content: Text("Do you want to delete?"),
              actions: [
                TextButton(onPressed: (){
                  MySnackBar("Delete Success", context);
                  Navigator.of(context).pop();}, child: Text("Yes")),
                TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("No"))
              ],
            )
          );

        }
    );

  }

  /*var MyItems = [
    {"img":"https://media.licdn.com/dms/image/D4E16AQGKYdgejzINjQ/profile-displaybackgroundimage-shrink_200_800/0/1676747098216?e=2147483647&v=beta&t=WjbAVQBkp26xtvRejJyyBGo7DaZNZa6D_ZMAHNObugE","Title":"Plabon"},
    {"img":"https://media.licdn.com/dms/image/D4E16AQGKYdgejzINjQ/profile-displaybackgroundimage-shrink_200_800/0/1676747098216?e=2147483647&v=beta&t=WjbAVQBkp26xtvRejJyyBGo7DaZNZa6D_ZMAHNObugE","Title":"Turjoy"},
    {"img":"https://media.licdn.com/dms/image/D4E16AQGKYdgejzINjQ/profile-displaybackgroundimage-shrink_200_800/0/1676747098216?e=2147483647&v=beta&t=WjbAVQBkp26xtvRejJyyBGo7DaZNZa6D_ZMAHNObugE","Title":"joy"},
    {"img":"https://media.licdn.com/dms/image/D4E16AQGKYdgejzINjQ/profile-displaybackgroundimage-shrink_200_800/0/1676747098216?e=2147483647&v=beta&t=WjbAVQBkp26xtvRejJyyBGo7DaZNZa6D_ZMAHNObugE","Title":"Shruti"},
    {"img":"https://media.licdn.com/dms/image/D4E16AQGKYdgejzINjQ/profile-displaybackgroundimage-shrink_200_800/0/1676747098216?e=2147483647&v=beta&t=WjbAVQBkp26xtvRejJyyBGo7DaZNZa6D_ZMAHNObugE","Title":"Chaity"},
    {"img":"https://media.licdn.com/dms/image/D4E16AQGKYdgejzINjQ/profile-displaybackgroundimage-shrink_200_800/0/1676747098216?e=2147483647&v=beta&t=WjbAVQBkp26xtvRejJyyBGo7DaZNZa6D_ZMAHNObugE","Title":"Ritu"},
    {"img":"https://media.licdn.com/dms/image/D4E16AQGKYdgejzINjQ/profile-displaybackgroundimage-shrink_200_800/0/1676747098216?e=2147483647&v=beta&t=WjbAVQBkp26xtvRejJyyBGo7DaZNZa6D_ZMAHNObugE","Title":"Aditi"},
    {"img":"https://media.licdn.com/dms/image/D4E16AQGKYdgejzINjQ/profile-displaybackgroundimage-shrink_200_800/0/1676747098216?e=2147483647&v=beta&t=WjbAVQBkp26xtvRejJyyBGo7DaZNZa6D_ZMAHNObugE","Title":"Arpa"},
    {"img":"https://media.licdn.com/dms/image/D4E16AQGKYdgejzINjQ/profile-displaybackgroundimage-shrink_200_800/0/1676747098216?e=2147483647&v=beta&t=WjbAVQBkp26xtvRejJyyBGo7DaZNZa6D_ZMAHNObugE","Title":"Mithi"},
    {"img":"https://media.licdn.com/dms/image/D4E16AQGKYdgejzINjQ/profile-displaybackgroundimage-shrink_200_800/0/1676747098216?e=2147483647&v=beta&t=WjbAVQBkp26xtvRejJyyBGo7DaZNZa6D_ZMAHNObugE","Title":"Kotha"},
    {"img":"https://media.licdn.com/dms/image/D4E16AQGKYdgejzINjQ/profile-displaybackgroundimage-shrink_200_800/0/1676747098216?e=2147483647&v=beta&t=WjbAVQBkp26xtvRejJyyBGo7DaZNZa6D_ZMAHNObugE","Title":"Mithila"}
  ];*/

  @override
  Widget build(BuildContext context) {

    /*ButtonStyle buttonStyle=ElevatedButton.styleFrom(
      padding: EdgeInsets.all(25),
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      minimumSize: Size(double.infinity, 60),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(25))
      )
    );*/
    /*return Scaffold(
      appBar: AppBar(
        title: Text("Inventory App"),
        titleSpacing: 0,
        //centerTitle: true,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 6,
        backgroundColor: Colors.green,
        actions: [
          IconButton(onPressed: (){MySnackBar("I'm Comments",context);},  icon: Icon(Icons.comment)),
          IconButton(onPressed: (){MySnackBar("I'm Search",context);},  icon: Icon(Icons.search)),
          IconButton(onPressed: (){MySnackBar("I'm Settings",context);},  icon: Icon(Icons.settings)),
          IconButton(onPressed: (){MySnackBar("I'm Email",context);},  icon: Icon(Icons.email)),
        ],
      ),
      /*floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        onPressed: (){
          MySnackBar("I'm floating action button", context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message),label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],
        onTap: (int index){
          if
          (index == 0){
            MySnackBar("I'm home bottom menu", context);
          }else if(index == 1){
            MySnackBar("I'm contact bottom menu", context);
          }else{
            MySnackBar("I'm profile bottom menu", context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.white60),
                  accountName: Text("Turjoy Banik",style: TextStyle(color: Colors.black)),
                  accountEmail: Text("info@Turjoy.com",style: TextStyle(color: Colors.black)),
                  currentAccountPicture: Image.network("https://media.licdn.com/dms/image/D5603AQHqn3v6opoPWQ/profile-displayphoto-shrink_200_200/0/1685320961788?e=1700092800&v=beta&t=wvkgJFst_e-CVSJ2RtPcGdkhJg2YF8RsgpFHBVowZ04"),
                  onDetailsPressed: (){MySnackBar("This is Profile",context);},
                )
            ),

            ListTile(leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: (){MySnackBar("I'm Home", context);},),
            ListTile(leading: Icon(Icons.contact_mail),
              title: Text("Contact"),
              onTap: (){MySnackBar("I'm Contact", context);},),
            ListTile(leading: Icon(Icons.person),
                title: Text("Profile"),
              onTap: (){MySnackBar("I'm Profile", context);},),
            ListTile(leading: Icon(Icons.email),
                title: Text("Email"),
              onTap: (){MySnackBar("I'm Email", context);},),
            ListTile(leading: Icon(Icons.phone),
                title: Text("Phone"),
              onTap: (){MySnackBar("I'm Phone", context);},),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.white60),
                  accountName: Text("Turjoy Banik",style: TextStyle(color: Colors.black)),
                  accountEmail: Text("info@Turjoy.com",style: TextStyle(color: Colors.black)),
                  currentAccountPicture: Image.network("https://media.licdn.com/dms/image/D5603AQHqn3v6opoPWQ/profile-displayphoto-shrink_200_200/0/1685320961788?e=1700092800&v=beta&t=wvkgJFst_e-CVSJ2RtPcGdkhJg2YF8RsgpFHBVowZ04"),
                  onDetailsPressed: (){MySnackBar("This is Profile",context);},
                )
            ),

            ListTile(leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: (){MySnackBar("I'm Home", context);},),
            ListTile(leading: Icon(Icons.contact_mail),
              title: Text("Contact"),
              onTap: (){MySnackBar("I'm Contact", context);},),
            ListTile(leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: (){MySnackBar("I'm Profile", context);},),
            ListTile(leading: Icon(Icons.email),
              title: Text("Email"),
              onTap: (){MySnackBar("I'm Email", context);},),
            ListTile(leading: Icon(Icons.phone),
              title: Text("Phone"),
              onTap: (){MySnackBar("I'm Phone", context);},),
          ],
        ),
      ),
      body: Center(
        //child: Text("This is Body part"),
        child: Image.network("https://media.licdn.com/dms/image/D5603AQHqn3v6opoPWQ/profile-displayphoto-shrink_200_200/0/1685320961788?e=1700092800&v=beta&t=wvkgJFst_e-CVSJ2RtPcGdkhJg2YF8RsgpFHBVowZ04"),
      ),*/
      /*body: Container(
        height: 250,
        width: 250,
        alignment: Alignment.topCenter,
        margin: EdgeInsets.all(40),
        padding: EdgeInsets.all(40),

        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(color: Colors.black, width: 6)
        ),
        child: Image.network("https://media.licdn.com/dms/image/D5603AQHqn3v6opoPWQ/profile-displayphoto-shrink_200_200/0/1685320961788?e=1700092800&v=beta&t=wvkgJFst_e-CVSJ2RtPcGdkhJg2YF8RsgpFHBVowZ04"),
      ),*/
      /*body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(height: 100,width: 100,child: Image.network("https://media.licdn.com/dms/image/D5603AQHqn3v6opoPWQ/profile-displayphoto-shrink_200_200/0/1685320961788?e=1700092800&v=beta&t=wvkgJFst_e-CVSJ2RtPcGdkhJg2YF8RsgpFHBVowZ04")),
          Container(height: 100,width: 100,child: Image.network("https://media.licdn.com/dms/image/D5603AQHqn3v6opoPWQ/profile-displayphoto-shrink_200_200/0/1685320961788?e=1700092800&v=beta&t=wvkgJFst_e-CVSJ2RtPcGdkhJg2YF8RsgpFHBVowZ04")),
          Container(height: 100,width: 100,child: Image.network("https://media.licdn.com/dms/image/D5603AQHqn3v6opoPWQ/profile-displayphoto-shrink_200_200/0/1685320961788?e=1700092800&v=beta&t=wvkgJFst_e-CVSJ2RtPcGdkhJg2YF8RsgpFHBVowZ04"))
        ],
      ),*/
      /*body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(height: 100,width: 100,child: Image.network("https://media.licdn.com/dms/image/D5603AQHqn3v6opoPWQ/profile-displayphoto-shrink_200_200/0/1685320961788?e=1700092800&v=beta&t=wvkgJFst_e-CVSJ2RtPcGdkhJg2YF8RsgpFHBVowZ04")),
          Container(height: 100,width: 100,child: Image.network("https://media.licdn.com/dms/image/D5603AQHqn3v6opoPWQ/profile-displayphoto-shrink_200_200/0/1685320961788?e=1700092800&v=beta&t=wvkgJFst_e-CVSJ2RtPcGdkhJg2YF8RsgpFHBVowZ04")),
          Container(height: 100,width: 100,child: Image.network("https://media.licdn.com/dms/image/D5603AQHqn3v6opoPWQ/profile-displayphoto-shrink_200_200/0/1685320961788?e=1700092800&v=beta&t=wvkgJFst_e-CVSJ2RtPcGdkhJg2YF8RsgpFHBVowZ04"))
        ],
      ),*/
      /*body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
            TextButton(onPressed: (){MySnackBar("I'm text button", context);}, child: Text('Text Button')),
            ElevatedButton(onPressed: (){MySnackBar("I'm Elevated button", context);}, child: Text('Elevated Button'), style: buttonStyle),
            OutlinedButton(onPressed: (){MySnackBar("I'm Outline button", context);}, child: Text('Outline Button'))
          ],
      ),*/
      /*body: Center(
        child: ElevatedButton(child: Text('Delete'), onPressed:(){MyAlertDialog(context);},),
      )*/
      /*body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(padding:EdgeInsets.all(10),child: TextField(decoration: InputDecoration(border: OutlineInputBorder(), labelText: "First Name")),),
          Padding(padding:EdgeInsets.all(10),child: TextField(decoration: InputDecoration(border: OutlineInputBorder(), labelText: "Last Name")),),
          Padding(padding:EdgeInsets.all(10),child: TextField(decoration: InputDecoration(border: OutlineInputBorder(), labelText: "Email Address")),),
          Padding(padding:EdgeInsets.all(10),child: ElevatedButton(onPressed: (){},child: Text("Submit"),style: buttonStyle),)
        ],
      ),*/
      /*body: ListView.builder(
        itemCount: MyItems.length,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){MySnackBar(MyItems[index]['Title'],context);},
            child: Container(
              margin: EdgeInsets.all(10),
              height: 220,
              width: double.infinity,
              child: Image.network(MyItems[index]["img"]!,fit: BoxFit.fill,),
            ),
          );
        },
      ),*/
      /*body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 1,
          childAspectRatio: 1.5
        ),
        itemCount: MyItems.length,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){MySnackBar(MyItems[index]['Title'],context);},
            child: Container(
              margin: EdgeInsets.all(10),
              height: 220,
              width: double.infinity,
              child: Image.network(MyItems[index]["img"]!,fit: BoxFit.fill,),
            ),
          );
        },
      ),*/


    );*/
    /*return DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            title: Text("My App"),
            bottom: TabBar(
              isScrollable:true,
              tabs:[
                Tab(icon: Icon(Icons.home),text: "Home",),
                Tab(icon: Icon(Icons.person),text: "Profile",),
                Tab(icon: Icon(Icons.call),text: "Call",),
                Tab(icon: Icon(Icons.message),text: "Message",),
                Tab(icon: Icon(Icons.store),text: "Shop",),
                Tab(icon: Icon(Icons.email),text: "Email",)
              ],
            ),
          ),
          body: TabBarView(
            children: [
              HomeFragment(),
              PersonFragment(),
              CallFragment(),
              MessageFragment(),
              StoreFragment(),
              EmailFragment()
            ],
          ),
        ),
    );*/

    return Scaffold(
        appBar: AppBar(
        title: Text("Home"),
        ),
        /*body: Column(
         mainAxisAlignment: MainAxisAlignment.start, 
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity1("This is from home to Activity 1")));
            }, child: Text("Go Activity1")),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity2("This is from home to Activity 2")));
            }, child: Text("Go Activity2"))
          ],
        ),*/
      body: Center(
        child: Card(
          elevation: 50,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          color: Color.fromRGBO(33, 191, 115, 1),
          shadowColor: Color.fromRGBO(33, 191, 115, 1),
          child: SizedBox(
            height: 200,
            width: 200,
            child: Center(child: Text("This is Card"),),
          ),
        ),
      ),
    );
  }

}

/*class Activity1 extends StatelessWidget{
  String msg;
   Activity1(
      this.msg,
      {super.key}
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(msg),
        ),
      body: Center(
        child: ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity2("This is from Activity 1 to Activity 2")));
          }, child: Text("Go Activity 2")),
      ),
    );
  }
}*/

/*class Activity2 extends StatelessWidget{
  String msg;
   Activity2(
       this.msg,
       {super.key}
       );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(msg),
        ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity1("This is from home Activity 2 to Activity 1")));
          }, child: Text("Go Activity1")),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeActivity()));
          }, child: Text("Go Home"))
        ],
      ),
    );
  }
}*/