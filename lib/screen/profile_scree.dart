import 'package:flutter/material.dart';
import 'package:lesson2/model/user_record.dart';

class ProfileScreen extends StatefulWidget {
  static const routeName = '/profileScreen';
  @override
  State<StatefulWidget> createState() {
    return _ProfileState();
  }
}

class _ProfileState extends State<ProfileScreen> {
  _Controller con;
  UserRecord userRecord;
  bool editMode = false;

  @override
  void initState() {
    super.initState();
    con = _Controller(this);
  }

  void render(fn) {
    setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    userRecord = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          editMode
              ? IconButton(icon: Icon(Icons.check), onPressed: con.update)
              : IconButton(icon: Icon(Icons.edit), onPressed: con.edit)
        ],
      ),
      body: Text('profile'),
    );
  }
}

class _Controller {
  _ProfileState state;
  _Controller(this.state);

  void edit() {
    state.render(() => state.editMode = true);
  }

  void update() {
    state.render(() => state.editMode = false);
  }
}
