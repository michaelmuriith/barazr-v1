import 'package:barazr_v2/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({ Key? key }) : super(key: key);

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        style: TextStyle(
                          color: bText,
                        ),
                        text: "This is a safe environment to provide information about corrupt gov officials \n Your identity will be protected",
                      ),
                      TextSpan(
                        style: TextStyle(
                          color: pryOther,
                        ),
                        text: " Barazr report policy",
                      ),
                    ]
                  )
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:12.0, vertical: 5),
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          validator: (value){
                            if (value == null || value.isEmpty){
                              return "Enter Name of gov Instution";
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            hintText: "Enter Name of gov Instution",
                            hintStyle: TextStyle(
                              fontSize: 12,
                            )
                          ),                      
                        ),
                        TextFormField(
                          validator: (value){
                            if (value == null || value.isEmpty){
                              return "Name the corrupt official/officials";
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            hintText: "Enter Name the corrupt official/officials",
                            hintStyle: TextStyle(
                              fontSize: 12,
                            )
                          ),
                        ),
                        TextFormField(
                          validator: (value){
                            if (value == null || value.isEmpty){
                              return "Enter a description";
                            }
                            return null;
                          },
                          maxLines: 2,
                          decoration: const InputDecoration(
                            hintText: "Describe the corrupt offence committed",
                            hintStyle: TextStyle(
                              fontSize: 12,
                            )
                          ),
                        ),
                        const SizedBox(height:10),
                        Center(
                          child: IconButton(
                            onPressed: (){}, 
                            icon: Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                color: const Color(0xff479AC8),
                                borderRadius: BorderRadius.circular(45)
                              ),
                              child: const Icon(Icons.upload, size: 21,)
                            )
                          ),
                        ),
                        const Center(
                          child: Text(
                            'Upload Photo or Video if any',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xffC6C6C6)
                            ),
                          ),
                        ),
                        const SizedBox(height:20),
                        Center(
                          child: Row(
                            children: [
                              Checkbox(
                                value: false, 
                                onChanged: (value){},
                                focusColor: Colors.white,
                              ),
                              Text(
                                'The information I have provide Is true to the best \n of my knowledge',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.openSans(
                                  color: const Color(0xff201F1F),
                                  fontSize: 10,
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height:20),
                        Center(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.only(
                                  left: 30, right: 30,
                                ),
                                primary: pryBlue,
                                shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),),
                              ),
                              child: const Text(
                                "Send",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontFamily: "Roboto"
                                ),
                              ),
                              onPressed: () =>{},
                          ),
                        ),
                      ]
                    )
                  ),
                )
              ],
            ),
          ),
        ),
      ),  
    );
  }
}