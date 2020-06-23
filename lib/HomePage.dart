import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'DrawerPages.dart';
import 'Inbox.dart';

class myHome extends StatefulWidget {
  @override
  _myHomeState createState() => _myHomeState();
}

class _myHomeState extends State<myHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Gmail"),
          elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 13.0),
              child: Icon(
                Icons.search,
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.edit),
          backgroundColor: Colors.red,
          onPressed: () {},
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Saifulla Ansari",style: TextStyle(fontSize: 17),),
                accountEmail: Text("ansarisaifulla7@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.orangeAccent,
                  child: Text(
                    "S",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 40),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.stay_primary_portrait),
                title: Text("Primary"),
                trailing:
                    Image.asset('assets/google.png', width: 35, height: 35),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext) => drawerPage("primary page")));
                },
              ),
              ListTile(
                leading: Icon(Icons.people),
                title: Text("Social"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext) => drawerPage("Social Page")));
                },
              ),
              Divider(
                color: Colors.black38,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, bottom: 10.0),
                child: Text("ALL LABELS"),
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: Text("Starred"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext) => drawerPage("starred Page")));
                },
              ),
              ListTile(
                leading: Icon(Icons.snooze),
                title: Text("Snoozed"),
                onTap: () {
                  Navigator.of(context).pop();
                  
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext) => drawerPage("Snozzed Page")));
                },
              ),
              ListTile(
                leading: Icon(Icons.label_important),
                title: Text("Important"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext) => drawerPage("Important Page")));
                },
              ),
              ListTile(
                leading: Icon(Icons.send),
                title: Text("Sent"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext) => drawerPage("sent messags")));
                },
              ),
              ListTile(
                leading: Icon(Icons.schedule),
                title: Text("Scheduled"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext) => drawerPage("Scheduled Page")));
                },
              ),
              ListTile(
                leading: Icon(Icons.drafts),
                title: Text("Drafts"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext) => drawerPage("All Drafts")));
                },
              ),
              ListTile(
                leading: Icon(Icons.schedule),
                title: Text("Sent"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext) => drawerPage("Sent messages")));
                },
              ),
              ListTile(
                leading: Icon(Icons.warning),
                title: Text("Spam"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext) => drawerPage("Spam Page")));
                },
              ),
              ListTile(
                leading: Icon(Icons.delete_sweep),
                title: Text("Bin"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext) => drawerPage("Recycle Bin")));
                },
              )
            ],
          ),
        ),
        body: ListView.builder(
            itemCount: inboxList.length,
            itemBuilder: (BuildContext context, int index) {
              Inbox inbox = inboxList[index];

              return InkWell(
                onTap: () {
                  Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text('Tapped'),
                  ));
                },
                child: Padding(
                  padding: EdgeInsets.fromLTRB(8, 20, 10, 1),
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        child: CircleAvatar(
                          child: Text(
                            firstChar(inbox.sender),
                            style: TextStyle(
                                fontSize: 29, fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    inbox.sender,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black87,
                                        fontSize: 17.0),
                                  ),
                                  Text(
                                    inbox.date,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black54,
                                        fontSize: 13.5),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        inbox.subject,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black87,
                                            fontSize: 15.5),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.6,
                                        child: Text(
                                          inbox.desciption,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black54,
                                              fontSize: 15.5),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      )
                                    ],
                                  ),
                                  Icon(Icons.star_border)
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }));
  }

  String firstChar(String s)
  {
      return s.substring(0,1);
  }
}
