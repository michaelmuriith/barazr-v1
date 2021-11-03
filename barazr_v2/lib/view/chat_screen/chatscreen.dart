import 'package:barazr_v2/constant.dart';
import 'package:barazr_v2/controller/chat_controller.dart';
import 'package:barazr_v2/model/message.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

import 'components/message_item.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({ Key? key }) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  Color purple = const Color(0xff6c5ce7);
  Color black = const Color(0xff191919);
  TextEditingController msgInputCotroller = TextEditingController();
  late IO.Socket socket;
  ChatController chatController = ChatController();

  @override

  void initState(){
    socket = IO.io('https://barazr.herokuapp.com', 
    IO.OptionBuilder()
      .setTransports(['websocket']) 
      .disableAutoConnect()  
      .build()
    );
    socket.connect();
    setUpSocketListener();
    super.initState();
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: SizedBox(
          height: 35,
          child: Image.asset('assets/images/logo.png')
        ),
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 8,
            child: Obx(
             () => ListView.builder(
              itemCount: chatController.chatMessages.length,
              itemBuilder: (context, index){
                var currentItem = chatController.chatMessages[index];
                return MessageItem(
                  sentByMe: currentItem.sentByMe == socket.id,
                  message: currentItem.message,
                );
              },
            ),
            )
          ),
          
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                style: TextStyle(color: Colors.white),
                cursorColor: purple,
                controller: msgInputCotroller,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: pryBlue),
                    
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: pryOther),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  suffixIcon: Container(
                    margin: EdgeInsets.only(right: 2),
                    decoration: BoxDecoration(
                      color: pryBlue,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10), 
                        bottomRight: Radius.circular(10), 
                      )
                    ),
                    child: IconButton(onPressed: (){
                      sendMessage(msgInputCotroller.text);
                      msgInputCotroller.text = "";
                    }, 
                    icon: Icon(Icons.send, color: Colors.white),
                    ),
                  )
                ),
              )
            ), 
          )

        ],
      ),
    );
  }
  void sendMessage(String text) {
    var  messageJson = {
      "message": text,
      "sentByMe": socket.id,
    };
    socket.emit('message', messageJson);
    chatController.chatMessages.add(Message.fromJson(messageJson));
  }

  void setUpSocketListener() {
    socket.on('message-receive', (data) {
      print(data); 
      chatController.chatMessages.add(Message.fromJson(data));
    });
  }
}

