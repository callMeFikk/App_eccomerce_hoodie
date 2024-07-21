import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/fikri.jpg'),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Name',
                hintText: 'Input Name',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Nomor',
                hintText: 'Input Nomor',
              ),
            ),
            DropdownButtonFormField(
              decoration: InputDecoration(labelText: 'Devision'),
              items: ['Mahasiswa'].map((String category) {
                return DropdownMenuItem(
                    value: category,
                    child: Row(
                      children: <Widget>[
                        Text(category),
                      ],
                    ));
              }).toList(),
              onChanged: (newValue) {},
            ),
            DropdownButtonFormField(
              decoration: InputDecoration(labelText: 'District'),
              items: ['Takalar'].map((String category) {
                return DropdownMenuItem(
                    value: category,
                    child: Row(
                      children: <Widget>[
                        Text(category),
                      ],
                    ));
              }).toList(),
              onChanged: (newValue) {},
            ),
            DropdownButtonFormField(
              decoration: InputDecoration(labelText: 'Sub-District'),
              items: ['Sanrobone'].map((String category) {
                return DropdownMenuItem(
                    value: category,
                    child: Row(
                      children: <Widget>[
                        Text(category),
                      ],
                    ));
              }).toList(),
              onChanged: (newValue) {},
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Area',
                hintText: 'Input Area',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Save',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shadowColor: Colors.white,
                minimumSize: Size(double.infinity, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
