import 'package:flutter/material.dart';

class SellerPageConfig extends StatefulWidget {
  const SellerPageConfig({super.key});

  @override
  State<SellerPageConfig> createState() => _SellerPageConfigState();
}

class _SellerPageConfigState extends State<SellerPageConfig> {
  final _formKey = GlobalKey<FormState>();
  final aboutStore = TextEditingController();
  final refundPolicy = TextEditingController();
  final shippingPolicy = TextEditingController();
  final website = TextEditingController();
  final facebook = TextEditingController();
  final twitter = TextEditingController();
  final instagram = TextEditingController();
  final youtube = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: ListView(
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          children: [
            SizedBox(
              height: 10,
            ),
            Text('Seller Page Information',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18)),
            SizedBox(
              height: 15,
            ),
            selectBanner(),
            SizedBox(
              height: 20,
            ),
            _multiLineEntryField(
                controller: aboutStore, label: 'About Your Store', maxLine: 5),
            SizedBox(
              height: 5,
            ),
            _multiLineEntryField(
                controller: shippingPolicy,
                label: 'Shipping Policy',
                maxLine: 5),
            SizedBox(
              height: 5,
            ),
            _multiLineEntryField(
                controller: refundPolicy, label: 'Refund policy', maxLine: 5),
            SizedBox(
              height: 20,
            ),
            Text('Social Accounts',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18)),
            SizedBox(
              height: 10,
            ),
            _entryField(
                controller: website,
                label: 'Website Url',
                inputType: TextInputType.text),
            SizedBox(
              height: 5,
            ),
            _entryField(
                controller: facebook,
                label: 'Facebook Url',
                inputType: TextInputType.text),
            SizedBox(
              height: 5,
            ),
            _entryField(
                controller: twitter,
                label: 'Twitter Url',
                inputType: TextInputType.text),
            SizedBox(
              height: 5,
            ),
            _entryField(
                controller: instagram,
                label: 'Instagram Url',
                inputType: TextInputType.text),
            SizedBox(
              height: 5,
            ),
            _entryField(
                controller: youtube,
                label: 'Youtube Url',
                inputType: TextInputType.text),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }

  Widget selectBanner() {
    return Container(
        padding: EdgeInsets.all(10),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Banner',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(
                height: 5,
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.all(5),
                      backgroundColor: Colors.grey,
                      foregroundColor: Color(0xff333333)),
                  onPressed: () {},
                  child: Text('Choose File')),
              SizedBox(
                height: 5,
              ),
              Text(
                'Allowed file types: PNG, GIF, JPG, JPEG',
              ),
            ]));
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

  Widget _multiLineEntryField(
      {required controller, required label, maxLine = 7}) {
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
            minLines: maxLine,
            maxLines: maxLine,
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
}
