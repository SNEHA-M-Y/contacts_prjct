import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class nwcontact extends StatefulWidget {
  nwcontact({super.key});

  @override
  State<nwcontact> createState() => _nwcontactState();
}

class _nwcontactState extends State<nwcontact> {
  final firstnamecontroller = TextEditingController();
  final lastnamecontroller = TextEditingController();
  final phonecontroller = TextEditingController();
  final mobilecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final homecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Row(
              children: [
                Text(
                  "Create new contact",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  width: 35,
                ),
                TextButton(
                  onPressed: () {
                    if (firstnamecontroller.text.isNotEmpty &&
                        lastnamecontroller.text.isNotEmpty &&
                        phonecontroller.text.isNotEmpty &&
                        mobilecontroller.text.isNotEmpty &&
                        emailcontroller.text.isNotEmpty &&
                        homecontroller.text.isNotEmpty) {
                      Navigator.pop(context);
                    } else {}
                  },
                  child: Text(
                    "Save",
                    style: TextStyle(color: Colors.green),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            color: Colors.green,
            child: Padding(
              padding: const EdgeInsets.only(left: 110),
              child: Row(
                children: [
                  Icon(
                    Icons.person_outline_outlined,
                    color: Colors.white,
                    size: 200,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 100, 50, 0),
                    child: Icon(
                      Icons.photo_camera_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 200, 20, 0),
            child: ListView(
              children: [
                Container(
                  height: 60,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 2),
                            spreadRadius: 3,
                            color: Colors.black26)
                      ]),
                  child: ListTile(
                    leading: Icon(
                      Icons.sim_card_alert_outlined,
                      color: Colors.green,
                    ),
                    title: Text("Saving to"),
                    subtitle: Text("MTNGH"),
                    trailing: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.green,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 2),
                            spreadRadius: 3,
                            color: Colors.black26)
                      ]),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Icon(
                            Icons.person_outline_outlined,
                            color: Colors.green,size: 30,
                          ),
                          SizedBox(
                            height: 70,
                          ),
                          Icon(
                            Icons.phone,
                            color: Colors.green,
                            size: 30,
                          ),
                          SizedBox(
                            height: 65,
                          ),
                          Icon(
                            Icons.mail_outlined,
                            color: Colors.green,
                            size: 30,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 250,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                    hintText: "Enter your First name "),
                                controller: firstnamecontroller,
                              ),
                              TextField(
                                decoration:
                                    InputDecoration(hintText: "Last name"),
                                controller: lastnamecontroller,
                              ),
                              TextField(
                                decoration: InputDecoration(hintText: "Phone"),
                                controller: phonecontroller,
                              ),
                              SizedBox(
                                  width: 150,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: "Mobile",
                                        suffixIcon:
                                            Icon(Icons.arrow_drop_down_outlined,color: Colors.green,)),
                                    controller: mobilecontroller,
                                  )),
                              TextField(
                                decoration: InputDecoration(hintText: "Email"),
                                controller: emailcontroller,
                              ),
                              SizedBox(width: 150,
                                child: TextField(
                                  decoration: InputDecoration(hintText: "Home",suffixIcon: 
                                  Icon(Icons.arrow_drop_down_outlined,color: Colors.green,)),
                                  controller: homecontroller,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: Colors.green,
                          ),
                          
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(100, 20, 0, 0),
                  child: Text(
                    "MORE FIELDS",
                    style: TextStyle(color: Colors.green, fontSize: 20),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
