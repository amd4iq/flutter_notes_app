import 'package:flutter/material.dart';

class NoteTile extends StatelessWidget {
  const NoteTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width / 1.2,
        height: MediaQuery.of(context).size.height / 10.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(82, 35, 58, 87),
        ),
        child: Column(
          children: [
            ListTile(
              title: Text(
                'Note Title',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              subtitle: Text(
                'Note Description',
                style: Theme.of(context).textTheme.labelMedium,
              ),
              trailing: Text(
                '11/10/2023',
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
