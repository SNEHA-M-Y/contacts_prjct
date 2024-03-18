import 'package:contacts_prjct/newcontact.dart';
import 'package:flutter/material.dart';

class contactlist extends StatefulWidget {
  const contactlist({super.key});

  @override
  State<contactlist> createState() => _contactlistState();
}

class _contactlistState extends State<contactlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
            decoration: InputDecoration(filled: true,
                hintText: "Search contacts",
                hintStyle: TextStyle(color: Colors.black38),
                prefixIcon: Icon(Icons.search,color: Colors.green,),
                suffixIcon: Icon(Icons.mic_none_outlined,color: Colors.green,),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: BorderSide.none)
              )),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
      ),
      floatingActionButton: IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => nwcontact(),));
            },icon: Icon(Icons.person_add_alt_1_rounded,color: Colors.green,),),
      
    body:
     ListView(children: [
      ListTile(title: Text("My Profile"),
                                       trailing: Icon(Icons.arrow_forward_ios),
    ),
    Divider(),
    ListTile(leading: Text("My Favourites"),),
    ListTile(leading: CircleAvatar(backgroundImage: AssetImage("images/contactimage.png"),),
             title: Text("Addai"),
    ),
    ListTile(leading: CircleAvatar(backgroundImage: AssetImage("images/contactimage.png"),),
                                   title: Text("Boampong"),
    ),
    ListTile(leading: CircleAvatar(backgroundImage: AssetImage("images/contactimage.png"),),
             title: Text("Akua"),
    ),
    ListTile(leading: CircleAvatar(backgroundImage: AssetImage("images/contactimage.png"),),
             title: Text("Addai"),
    ),
    ListTile(leading: CircleAvatar(backgroundImage: AssetImage("images/contactimage.png"),),
             title: Text("Adiza Salifu"),),
             ListTile(leading: CircleAvatar(backgroundImage: AssetImage("images/contactimage.png"),),
             title: Text("Akua"),),
             ListTile(leading: CircleAvatar(backgroundImage: AssetImage("images/contactimage.png"),),
             title: Text("Amponash"),),
             ListTile(leading: CircleAvatar(backgroundImage: AssetImage("images/contactimage.png"),),
             title: Text("Bisa K Dei"),),
             ListTile(leading: CircleAvatar(backgroundImage: AssetImage("images/contactimage.png"),),
             title: Text("Boampong"),),
             ListTile(leading: CircleAvatar(backgroundImage: AssetImage("images/contactimage.png"),),
             title: Text("Buabeng"),),
            
    ],)
      
    );
    
    
  }
}
