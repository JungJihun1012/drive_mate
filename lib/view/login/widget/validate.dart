import 'package:dirve_mate/view/login/widget/cupertino_switch_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const String userIcon =
''' <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px" fill="#5f6368"> <path d="M480-480q-66 0-113-47t-47-113q0-66 47-113t113-47q66 0 113 47t47 113q0 66-47 113t-113 47ZM160-160v-112q0-34 17.5-62.5T224-378q62-31 126-46.5T480-440q66 0 130 15.5T736-378q29 15 46.5 43.5T800-272v112H160Zm80-80h480v-32q0-11-5.5-20T700-306q-54-27-109-40.5T480-360q-56 0-111 13.5T260-306q-9 5-14.5 14t-5.5 20v32Zm240-320q33 0 56.5-23.5T560-640q0-33-23.5-56.5T480-720q-33 0-56.5 23.5T400-640q0 33 23.5 56.5T480-560Zm0-80Zm0 400Z" /> </svg> ''';
const String lockIcon =
''' <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px" fill="#5f6368"><path d="M240-80q-33 0-56.5-23.5T160-160v-400q0-33 23.5-56.5T240-640h40v-80q0-83 58.5-141.5T480-920q83 0 141.5 58.5T680-720v80h40q33 0 56.5 23.5T800-560v400q0 33-23.5 56.5T720-80H240Zm0-80h480v-400H240v400Zm240-120q33 0 56.5-23.5T560-360q0-33-23.5-56.5T480-440q-33 0-56.5 23.5T400-360q0 33 23.5 56.5T480-280ZM360-640h240v-80q0-50-35-85t-85-35q-50 0-85 35t-35 85v80ZM240-160v-400 400Z"/></svg> ''';


class Validate extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ValidateState();
}
class _ValidateState extends State<Validate> {
  final TextEditingController controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(top: 30),
                child: Column(
                  spacing: 20,
                  children: [
                    SizedBox(
                        width: 400,
                        height: 65,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            child: Row(
                                children: [
                                  SvgPicture.string(
                                    userIcon,
                                    height: 30,
                                    colorFilter: ColorFilter.mode(Colors.grey, BlendMode.srcOut),
                                  ),
                                  SizedBox(
                                    width: 150,
                                    height: double.infinity,
                                    child: Form(
                                      key: _formKey,
                                        child: TextFormField(
                                          controller: controller,
                                          validator: (value) {
                                            if( value == null || value.isEmpty || value.length < 4) {
                                              return '최소 4자 이상 입력해주세요.';
                                            }
                                            return value;
                                          },
                                          onSaved: (newValue) {
                                            print('$newValue');
                                          },
                                          decoration: InputDecoration(
                                              hintText: 'Username',
                                              hintStyle: TextStyle(color: Colors.grey, fontSize: 17),
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide.none
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide.none
                                              )
                                          ),
                                        )
                                    ),
                                  )
                                ]),
                          ),
                        )
                    ),
                    SizedBox(
                        width: 400,
                        height: 65,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            child: Row(
                                children: [
                                  SvgPicture.string(
                                    lockIcon,
                                    height: 30,
                                    colorFilter: ColorFilter.mode(Colors.grey, BlendMode.srcOut),
                                  ),
                                  SizedBox(
                                    width: 150,
                                    height: double.infinity,
                                    child: Form(
                                      key: _formKey,
                                        child: TextFormField(
                                          controller: controller,
                                          validator: (value) {
                                            if(value.toString().length < 4) {
                                              return '최소 4자 이상 입력해주세요.';
                                            }
                                            return value;
                                          },
                                          onSaved: (newValue) {
                                            print('$newValue');
                                          },
                                          decoration: InputDecoration(
                                              hintText: 'Password',
                                              hintStyle: TextStyle(color: Colors.grey, fontSize: 17),
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide.none
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide.none
                                              )
                                          ),
                                        )
                                    ),
                                  )
                                ]),
                          ),
                        )
                    )
                  ],
                )
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, left: 40),
              child: Row(
                spacing: 20,
                children: [
                  CupertinoSwitchButton(),
                  Text('Remember', style: TextStyle(color: Colors.white, fontSize: 20),)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: SizedBox(
                width: 400,
                height: 60,
                child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('${controller.text}'))
                      );
                      // if(_formKey.currentState!.validate()) {
                      //   _formKey.currentState!.save();
                      //   ScaffoldMessenger.of(context).showSnackBar(
                      //       SnackBar(content: Text('유효한 입력값${controller.text}'))
                      //   );
                      // }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red.shade900,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                    child: Text('Sign In', style: TextStyle(color: Colors.white, fontSize: 20),)),
              ),
            )
          ]
      ),
    );
  }
}