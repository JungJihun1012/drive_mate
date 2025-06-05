import 'package:dirve_mate/Bmodule/view/home/widget/home_page_index.dart';
import 'package:dirve_mate/Bmodule/view/home/widget/home_page_stack.dart';
import 'package:dirve_mate/Bmodule/view/home/widget/home_page_title_widget.dart';
import 'package:dirve_mate/Bmodule/view/home/widget/tab_bar.dart';
import 'package:flutter/material.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey.shade200, width: 2))
            ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HomePageTitle(),
                  Text('Status', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
                  HomeStack()
                ],
              ),
          ),
          Expanded(child: TabBarIndex())
        ],
      ),
    );
  }
}