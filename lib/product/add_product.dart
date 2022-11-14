import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobile_dashboard/widgets/bottom_nav.dart';
import 'package:mobile_dashboard/widgets/header.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _productName = TextEditingController();

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  final ImagePicker _picker = ImagePicker();
  List<XFile>? images = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: Header(
        title: 'Add Products',
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          shrinkWrap: true,
          physics: AlwaysScrollableScrollPhysics(),
          padding: EdgeInsets.all(10),
          children: [
            _entryField(
                controller: _productName,
                label: 'Name',
                inputType: TextInputType.name),
            _entryField(
                controller: _productName,
                label: 'price',
                inputType: TextInputType.number),
            _entryField(
                controller: _productName,
                label: 'Quantity',
                inputType: TextInputType.number),
            _entryField(
                controller: _productName,
                label: 'Manufacturer',
                inputType: TextInputType.text),
            _multiLineEntryField(
              controller: _productName,
              label: 'Description',
            ),
            addImage(),
            TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Color.fromARGB(255, 253, 253, 253),
                    padding: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {}
                },
                child: Text(
                  'Save & Submit',
                  style: TextStyle(fontSize: 14),
                ))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(activeIndex: 1),
    ));
  }

  Widget _entryField({required controller, required label, inputType}) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 35,
            child: TextFormField(
              controller: controller,
              keyboardType: inputType,
              scrollPadding: EdgeInsets.all(0),
              style: TextStyle(
                fontSize: 14.0,
              ),
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                filled: true,
                focusColor: Color(0xffe5e5e5),
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter $label';
                }
                return null;
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _multiLineEntryField({required controller, required label}) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          TextFormField(
            controller: controller,
            keyboardType: TextInputType.multiline,
            scrollPadding: EdgeInsets.zero,
            minLines: 7,
            maxLines: 7,
            style: TextStyle(
              fontSize: 14.0,
            ),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              filled: true,
              focusColor: Color(0xffe5e5e5),
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter $label';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }

  addImage() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Product Images',
            textAlign: TextAlign.left,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Center(
            child: IconButton(
                onPressed: () async {
                  images = await _picker.pickMultiImage();
                  print(images);
                },
                icon: Icon(
                  Icons.add_a_photo_sharp,
                  size: 50,
                )),
          ),
        ],
      ),
    );
  }
}
