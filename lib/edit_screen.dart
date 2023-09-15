import 'package:cv_app/cv_screen.dart';
import 'package:flutter/material.dart';

//ignore: must_be_immutable
class EditingScreen extends StatefulWidget {
  EditingScreen(
      {super.key,
      required this.userBio,
      required this.userLocation,
      required this.userName,
      required this.userRole,
      required this.userSkills});

  String userName;
  String userRole;
  String userLocation;
  String userBio;
  String userSkills;

  @override
  State<EditingScreen> createState() => _EditingScreenState();
}

class _EditingScreenState extends State<EditingScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _roleController = TextEditingController();
  final _locationController = TextEditingController();
  final _bioController = TextEditingController();
  final _skillsController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameController.text = widget.userName;
    _roleController.text = widget.userRole;
    _locationController.text = widget.userLocation;
    _bioController.text = widget.userBio;
    _skillsController.text = widget.userSkills;
  }

  @override
  void dispose() {
    _bioController.dispose();
    _nameController.dispose();
    _locationController.dispose();
    _roleController.dispose();
    _skillsController.dispose();
    super.dispose();
  }

  void saveValues() {
    Navigator.of(context).pop();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => CvScreen(
            userBio: _bioController.text,
            userLocation: _locationController.text,
            userName: _nameController.text,
            userRole: _roleController.text,
            userSkills: _skillsController.text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  label: Text('Name'),
                  labelStyle: TextStyle(color: Color(0xffF5F5F5)),
                  filled: true,
                  fillColor: Color(0xff345083),
                ),
                style: const TextStyle(color: Color(0xffF5F5F5)),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _roleController,
                decoration: const InputDecoration(
                  label: Text('Role'),
                  labelStyle: TextStyle(color: Color(0xffF5F5F5)),
                  filled: true,
                  fillColor: Color(0xff345083),
                ),
                style: const TextStyle(color: Color(0xffF5F5F5)),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _locationController,
                decoration: const InputDecoration(
                  label: Text('Location'),
                  labelStyle: TextStyle(color: Color(0xffF5F5F5)),
                  filled: true,
                  fillColor: Color(0xff345083),
                ),
                style: const TextStyle(color: Color(0xffF5F5F5)),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _bioController,
                decoration: const InputDecoration(
                  label: Text('Bio'),
                  labelStyle: TextStyle(color: Color(0xffF5F5F5)),
                  filled: true,
                  fillColor: Color(0xff345083),
                ),
                style: const TextStyle(color: Color(0xffF5F5F5)),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _skillsController,
                decoration: const InputDecoration(
                  label: Text('Skills'),
                  labelStyle: TextStyle(color: Color(0xffF5F5F5)),
                  filled: true,
                  fillColor: Color(0xff345083),
                ),
                style: const TextStyle(color: Color(0xffF5F5F5)),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff345083),
                        foregroundColor: const Color(0xffF5F5F5)),
                    onPressed: saveValues,
                    child: const Text('Save')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
