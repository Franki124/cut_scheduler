import 'package:flutter/material.dart';

class SubjectTile extends StatelessWidget {
  const SubjectTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blueAccent, borderRadius: BorderRadius.circular(16)),
      child: const ListTile(
        leading: CircleAvatar(),
        title: Text('John Doe',
            style: TextStyle(fontSize: 14, color: Colors.black)),
        subtitle:
        Text('Hello', style: TextStyle(fontSize: 12, color: Colors.grey)),
        trailing: Text('12:45 am', style: TextStyle(color: Colors.black)),
      ),
    );
  }
}

