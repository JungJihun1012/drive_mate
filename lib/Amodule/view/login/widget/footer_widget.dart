import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 60),
      child: Column(
        spacing: 20,
        children: [
          SizedBox(
            width: 300,
            height: 50,
            child: ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        backgroundColor: Colors.grey,
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('돌아가기', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                          )
                        ],
                        title: null,
                        content: Text('아직 기능이 추가되지 않았습니다..', style: TextStyle(color: Colors.white, fontSize: 20),),
                      )
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0)
                    )
                ),
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17
                  ),
                )
            ),
          ),
          SizedBox(
            width: 300,
            height: 50,
            child: ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        backgroundColor: Colors.grey,
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('돌아가기', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                          )
                        ],
                        title: null,
                        content: Text('아직 기능이 추가되지 않았습니다..', style: TextStyle(color: Colors.white, fontSize: 20),),
                      )
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0)
                    )
                ),
                child: Text(
                  'Password Reset',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                  ),
                )
            ),
          )
        ],
      ),
    );
  }
}