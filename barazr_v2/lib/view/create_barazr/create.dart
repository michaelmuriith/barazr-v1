import 'package:barazr_v2/constant.dart';
import 'package:flutter/material.dart';

class CreateBarazr extends StatefulWidget {
  const CreateBarazr({ Key? key }) : super(key: key);

  @override
  State<CreateBarazr> createState() => _CreateBarazrState();
}

class _CreateBarazrState extends State<CreateBarazr> {

  final _myFormKey = GlobalKey<FormState>();


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
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      color: pryBlue,
                    ),
                    children: [
                      TextSpan(
                        style: TextStyle(
                          fontSize: 18,
                        ),
                        text: "Create a Barazr",
                      ),
                      TextSpan(
                        style: TextStyle(
                          fontSize: 12,
                        ),
                        text: "\nDiscuss, collaborate, and get public work done in a transparent way. Engage the public for a positive collaboration.",
                      ),
                    ]
                  )           
                ),
                Form(
                  key: _myFormKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        validator: (value){
                          if (value == null || value.isEmpty){
                            return "Please enter name";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          hintText: "Enter Barazr Subject",
                          hintStyle: TextStyle(
                            fontSize: 12,
                          )
                        ),                      
                      ),
                      TextFormField(
                        validator: (value){
                          if (value == null || value.isEmpty){
                            return "Fill in the description";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          hintText: "What the Barazr about ?",
                          hintStyle: TextStyle(
                            fontSize: 12,
                          )                        
                        ),

                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black12,
                              ),
                              child: IconButton(
                                onPressed: (){}, 
                                icon: const Icon(Icons.add_a_photo, color: Colors.black38, size: 16,)
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 10),
                              width: MediaQuery.of(context).size.width*0.6,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  hintText: "Sponsor name & logo ?",
                                  hintStyle: TextStyle(
                                    fontSize: 12,
                                  )                                
                                ),

                              ),
                            ),
                          ]
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black12,
                              ),
                              child: IconButton(
                                onPressed: (){}, 
                                icon: const Icon(Icons.add_moderator, color: Colors.black38, size: 16,)
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 10),
                              width: MediaQuery.of(context).size.width*0.6,
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  hintText: "Add Facilitator's phone",
                                  hintStyle: TextStyle(
                                    fontSize: 12,
                                  )                                  
                                ),

                              ),
                            ),
                          ]
                        ),
                      ),
                      
                      Container(
                        margin: const EdgeInsets.only(top: 6),
                        child: const Text(
                          'Max no. of Members:',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black38,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Row(
                                children: [
                                  Transform.scale(
                                    scale: 0.75,
                                    child: Radio(
                                      value: 1, 
                                      groupValue: 1, 
                                      onChanged: (value){},
                                    ),
                                  ),
                                  const SizedBox(width: 3,),
                                  const Text(
                                    '0 - 100', 
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(width: 10,),
                              Row(
                                children: [
                                  Transform.scale(
                                    scale: 0.75,
                                    child: Radio(
                                      value: 1, 
                                      groupValue: 1, 
                                      onChanged: (value){},
                                    ),
                                  ),
                                  const SizedBox(width: 5,),
                                  const Text(
                                    '200 - 300',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Transform.scale(
                                    scale: 0.75,
                                    child: Radio(
                                      value: 1, 
                                      groupValue: 1, 
                                      onChanged: (value){},
                                    ),
                                  ),
                                  const SizedBox(width: 5,),
                                  const Text(
                                    '100 - 200',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 10,),
                              Row(
                                children: [
                                  Transform.scale(
                                    scale: 0.75,
                                    child: Radio(
                                      value: 0, 
                                      groupValue: 1, 
                                      onChanged: (value){},
                                    ),
                                  ),
                                  const SizedBox(width: 5,),
                                  const Text(
                                    'More than 300',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(value: false, onChanged: (value){},),
                              const Text(
                                'Private',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const Text(
                                '(leave unchecked if public)',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          )
                        ]
                      ),

                      FloatingActionButton(
                        onPressed: () {
                          _myFormKey.currentState!.validate();
                        },
                        child: const Icon(Icons.add),
                      ),
                    ],
                  )
                )
              ],
            ),
          ),
        ),

      ),

    );
  }
}