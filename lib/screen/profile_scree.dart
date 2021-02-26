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
  UserRecord userRecordOriginal;
  bool editMode = false;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
    userRecordOriginal ??= ModalRoute.of(context).settings.arguments;
    userRecord ??= UserRecord.clone(userRecordOriginal);
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          editMode
              ? IconButton(icon: Icon(Icons.check), onPressed: con.update)
              : IconButton(icon: Icon(Icons.edit), onPressed: con.edit)
        ],
      ),
      body: Form(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      'Name',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: TextFormField(
                      enabled: editMode,
                      initialValue: userRecord.name,
                      validator: null,
                      onSaved: null,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      'Phone',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: TextFormField(
                      enabled: editMode,
                      initialValue: userRecord.phone,
                      validator: null,
                      onSaved: null,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      'Age',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: TextFormField(
                      enabled: editMode,
                      initialValue: userRecord.age.toString(),
                      validator: null,
                      onSaved: null,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Classification',
                style: Theme.of(context).textTheme.headline6,
              ),
              DropdownButtonFormField(
                disabledHint: Text(
                  userRecord.classification.toString().split('.')[1],
                ),
                value: userRecord.classification,
                items: con.getClassificationList(),
                onChanged: editMode ? con.onChangedClassification : null,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Major',
                style: Theme.of(context).textTheme.headline6,
              ),
              Column(
                children: con.getMajorRadioTiles(editMode),
              ),
              SizedBox(height: 20.0),
              Text(
                'Language Proficiency',
                style: Theme.of(context).textTheme.headline6,
              ),
              Column(
                children: con.getLanguageCheckBoxes(editMode),
              ),
            ],
          ),
        ),
      ),
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

  List getClassificationList() {
    return Classification.values
        .map((c) => DropdownMenuItem(
              child: Text(c.toString().split('.')[1]),
              value: c,
            ))
        .toList();
  }

  void onChangedClassification(Classification c) {
    state.render(() => state.userRecord.classification = c);
  }

  List getMajorRadioTiles(bool editMode) {
    return Major.values
        .map(
          (m) => RadioListTile(
            title: Text(m.toString().split('.')[1]),
            dense: true,
            value: m,
            groupValue: state.userRecord.major,
            onChanged: editMode
                ? (Major value) {
                    state.render(() => state.userRecord.major = value);
                  }
                : null,
          ),
        )
        .toList();
  }

  List getLanguageCheckBoxes(bool editMode) {
    return Language.values
        .map((e) => CheckboxListTile(
              value: state.userRecord.languages[e],
              title: Text(e.toString().split('.')[1]),
              onChanged: editMode
                  ? (bool value) {
                      state.render(() => state.userRecord.languages[e] = value);
                    }
                  : null,
            ))
        .toList();
  }
}
