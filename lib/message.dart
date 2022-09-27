import 'package:flutter/material.dart';
import 'package:faso/custom_text.dart';
import 'package:faso/inbox.dart';

class Message extends StatefulWidget {
  @override
  _MessageState createState() => new _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Mes messages',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            TextField(
              maxLines: 1,
              decoration: InputDecoration(
                fillColor: Colors.transparent,
                filled: true,
                hintStyle: TextStyle(
                    color: Colors.black.withOpacity(.4),
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0),
                prefixIcon:
                    Icon(Icons.search, color: Colors.black.withOpacity(.6)),
                hintText: 'Rechercher un utilisateur.....',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
                contentPadding: EdgeInsets.zero,
              ),
            ),

            // ElevatedButton
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              width: double.infinity,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(30)),
                      textStyle: MaterialStateProperty.all(const TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 254, 255, 255)))),
                  onPressed: (() {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return IChatList();
                      }));
                    });
                  }),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.account_circle,
                        color: Colors.black,
                      ),
                      Text(
                        '  BAKO Maxime',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
            ),
            const SizedBox(
              height: 2.0,
            ),

            // ElevatedButton
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              width: double.infinity,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(30)),
                      textStyle: MaterialStateProperty.all(const TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 254, 255, 255)))),
                  onPressed: (() {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return IChatList();
                      }));
                    });
                  }),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.account_circle,
                        color: Colors.black,
                      ),
                      Text(
                        '  DIALLO Fadilatou',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
            ),
            const SizedBox(
              height: 2.0,
            ),

            // ElevatedButton
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              width: double.infinity,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(30)),
                      textStyle: MaterialStateProperty.all(const TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 254, 255, 255)))),
                  onPressed: (() {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return IChatList();
                      }));
                    });
                  }),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.account_circle,
                        color: Colors.black,
                      ),
                      Text(
                        '  NANA Elodie',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
            ),
            const SizedBox(
              height: 2.0,
            ),

            // ElevatedButton
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              width: double.infinity,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(30)),
                      textStyle: MaterialStateProperty.all(const TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 254, 255, 255)))),
                  onPressed: (() {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return IChatList();
                      }));
                    });
                  }),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.account_circle,
                        color: Colors.black,
                      ),
                      Text(
                        '  SAWADOGO Haida',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
            ),
            const SizedBox(
              height: 2.0,
            ),

            // ElevatedButton
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              width: double.infinity,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(30)),
                      textStyle: MaterialStateProperty.all(const TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 254, 255, 255)))),
                  onPressed: (() {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return IChatList();
                      }));
                    });
                  }),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.account_circle,
                        color: Colors.black,
                      ),
                      Text(
                        '  ROUAMBA Waly',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
            ),
            const SizedBox(
              height: 2.0,
            ),

            // ElevatedButton
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              width: double.infinity,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(30)),
                      textStyle: MaterialStateProperty.all(const TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 254, 255, 255)))),
                  onPressed: (() {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return IChatList();
                      }));
                    });
                  }),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.account_circle,
                        color: Colors.black,
                      ),
                      Text(
                        '  BADO Roch',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
            ),
            const SizedBox(
              height: 2.0,
            ),

                        // ElevatedButton
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              width: double.infinity,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(30)),
                      textStyle: MaterialStateProperty.all(const TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 254, 255, 255)))),
                  onPressed: (() {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return IChatList();
                      }));
                    });
                  }),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.account_circle,
                        color: Colors.black,
                      ),
                      Text(
                        '  Ouedraogo Isaac',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
