import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

QuillController _controller = QuillController.basic();

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20,left: 10,right: 10date,bottom: 20),
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('https://user-images.githubusercontent.com/10923085/119221946-2de89000-baf2-11eb-8285-68168a78c658.png'),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  Padding(padding: const EdgeInsets.only(top: 0),
                  child:
                  QuillToolbar.basic(controller: _controller),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        boxShadow: [BoxShadow(
                          color: Colors.lightBlueAccent,
                          offset: Offset(5.0, 5.0)    ,
                          blurRadius: 10.0,
                          spreadRadius: 2.0
                        ),
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0
                        )
                        ]
                      ),
                      child:
                      QuillEditor.basic(controller: _controller, readOnly: false),),
                  )
          ],
        ),
      ),
    );
  }
}
