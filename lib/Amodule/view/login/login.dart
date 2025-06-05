import 'package:dirve_mate/Amodule/view/button_widget.dart';
import 'package:dirve_mate/Amodule/view/header_widget.dart';
import 'package:dirve_mate/Amodule/view/insert_car/insert_car.dart';
import 'package:dirve_mate/Amodule/view/login/widget/cupertino_switch_button.dart';
import 'package:dirve_mate/Amodule/view/login/widget/footer_widget.dart';
import 'package:dirve_mate/Amodule/view/login/widget/login_box.dart';
import 'package:dirve_mate/Amodule/view/login/widget/remember_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const String headerIcon =
    '''<svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px" fill="#5f6368"><path d="M240-40q-50 0-85-35t-35-85q0-50 35-85t85-35q14 0 26 3t23 8l57-71q-28-31-39-70t-5-78l-81-27q-17 25-43 40t-58 15q-50 0-85-35T0-580q0-50 35-85t85-35q50 0 85 35t35 85v8l81 28q20-36 53.5-61t75.5-32v-87q-39-11-64.5-42.5T360-840q0-50 35-85t85-35q50 0 85 35t35 85q0 42-26 73.5T510-724v87q42 7 75.5 32t53.5 61l81-28v-8q0-50 35-85t85-35q50 0 85 35t35 85q0 50-35 85t-85 35q-32 0-58.5-15T739-515l-81 27q6 39-5 77.5T614-340l57 70q11-5 23-7.5t26-2.5q50 0 85 35t35 85q0 50-35 85t-85 35q-50 0-85-35t-35-85q0-20 6.5-38.5T624-232l-57-71q-41 23-87.5 23T392-303l-56 71q11 15 17.5 33.5T360-160q0 50-35 85t-85 35ZM120-540q17 0 28.5-11.5T160-580q0-17-11.5-28.5T120-620q-17 0-28.5 11.5T80-580q0 17 11.5 28.5T120-540Zm120 420q17 0 28.5-11.5T280-160q0-17-11.5-28.5T240-200q-17 0-28.5 11.5T200-160q0 17 11.5 28.5T240-120Zm240-680q17 0 28.5-11.5T520-840q0-17-11.5-28.5T480-880q-17 0-28.5 11.5T440-840q0 17 11.5 28.5T480-800Zm0 440q42 0 71-29t29-71q0-42-29-71t-71-29q-42 0-71 29t-29 71q0 42 29 71t71 29Zm240 240q17 0 28.5-11.5T760-160q0-17-11.5-28.5T720-200q-17 0-28.5 11.5T680-160q0 17 11.5 28.5T720-120Zm120-420q17 0 28.5-11.5T880-580q0-17-11.5-28.5T840-620q-17 0-28.5 11.5T800-580q0 17 11.5 28.5T840-540ZM480-840ZM120-580Zm360 120Zm360-120ZM240-160Zm480 0Z"/></svg>''';
const String userIcon =
''' <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px" fill="#5f6368"> <path d="M480-480q-66 0-113-47t-47-113q0-66 47-113t113-47q66 0 113 47t47 113q0 66-47 113t-113 47ZM160-160v-112q0-34 17.5-62.5T224-378q62-31 126-46.5T480-440q66 0 130 15.5T736-378q29 15 46.5 43.5T800-272v112H160Zm80-80h480v-32q0-11-5.5-20T700-306q-54-27-109-40.5T480-360q-56 0-111 13.5T260-306q-9 5-14.5 14t-5.5 20v32Zm240-320q33 0 56.5-23.5T560-640q0-33-23.5-56.5T480-720q-33 0-56.5 23.5T400-640q0 33 23.5 56.5T480-560Zm0-80Zm0 400Z" /> </svg> ''';
const String lockIcon =
    ''' <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px" fill="#5f6368"><path d="M240-80q-33 0-56.5-23.5T160-160v-400q0-33 23.5-56.5T240-640h40v-80q0-83 58.5-141.5T480-920q83 0 141.5 58.5T680-720v80h40q33 0 56.5 23.5T800-560v400q0 33-23.5 56.5T720-80H240Zm0-80h480v-400H240v400Zm240-120q33 0 56.5-23.5T560-360q0-33-23.5-56.5T480-440q-33 0-56.5 23.5T400-360q0 33 23.5 56.5T480-280ZM360-640h240v-80q0-50-35-85t-85-35q-50 0-85 35t-35 85v80ZM240-160v-400 400Z"/></svg> ''';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});
  @override
  State<StatefulWidget> createState() => _LoginValidateState();
}
class _LoginValidateState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  late bool validationResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black),
      backgroundColor: Colors.black,
      body: SizedBox(
        child: Column(
          children: [
            HeaderWidget(fontSize: 40,headerIcon: headerIcon, height: 60,),
            Image(image: AssetImage('assets/images/red_car.png')),
            Text(
              '로그인 정보를 입력하세요.',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Form(
              key: _formKey,
                child: Padding(
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
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              child: Row(
                                    children: [
                                      SvgPicture.string(userIcon, height: 30, colorFilter: ColorFilter.mode(Colors.grey, BlendMode.srcIn),),
                                      SizedBox(
                                        width: 150,
                                        height: double.infinity,
                                        child: TextFormField(
                                          validator: (value) {
                                            if(value?.isEmpty ?? true && value.toString().length < 4) {
                                              return '4자 이상 입력가능';
                                            }
                                            return null;
                                          },
                                          decoration: InputDecoration(
                                              hintText: 'Username',
                                              hintStyle: TextStyle(color: Colors.grey, fontSize: 17),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide.none,
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide.none
                                              )
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 400,
                          height: 65,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              child: Row(
                                    children: [
                                      SvgPicture.string(lockIcon, height: 30, colorFilter: ColorFilter.mode(Colors.grey, BlendMode.srcIn),),
                                      SizedBox(
                                        width: 150,
                                        height: double.infinity,
                                        child: TextFormField(
                                          validator: (value) {
                                              if(value.toString().length <4) {
                                                return '4자 이상 가능';
                                              }
                                              return null;
                                          },
                                          decoration: InputDecoration(
                                              hintText: 'Password',
                                              hintStyle: TextStyle(color: Colors.grey, fontSize: 17),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide.none,
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide.none
                                              )
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                            ),
                          ),
                        )
                      ],
                    )
                )
            ),
            RememberWidget(),
            Padding(
                padding: EdgeInsets.only(top: 20),
              child: SizedBox(
                width: 400,
                height: 60,
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        validationResult = _formKey.currentState?.validate() ?? false;
                        if(validationResult) {
                          Navigator.push(context, MaterialPageRoute(builder: (_) => Insert()));
                        }
                      });

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red.shade900,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                    child: Text('Sign In', style: TextStyle(color: Colors.white, fontSize: 20),)),
              ),
            ),
            FooterWidget()
          ],
        ),
      ),
    );
  }
}
