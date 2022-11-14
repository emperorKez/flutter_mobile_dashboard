import 'package:flutter/material.dart';

class WithdrawalAccountConfig extends StatefulWidget {
  const WithdrawalAccountConfig({super.key});

  @override
  State<WithdrawalAccountConfig> createState() =>
      _WithdrawalAccountConfigState();
}

class _WithdrawalAccountConfigState extends State<WithdrawalAccountConfig> {
  final _formKey = GlobalKey<FormState>();
  final bankName = TextEditingController();
  final accountHolder = TextEditingController();
  final accountNumber = TextEditingController();

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
            Text('Withdrawal Account Information',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18)),
            SizedBox(
              height: 15,
            ),
            _entryField(
                controller: bankName,
                label: 'Bank Name',
                inputType: TextInputType.name),
            SizedBox(
              height: 5,
            ),
            _entryField(
                controller: accountHolder,
                label: 'Account Holder',
                inputType: TextInputType.name),
            SizedBox(
              height: 5,
            ),
            _entryField(
                controller: accountNumber,
                label: 'Account Number',
                inputType: TextInputType.number)
          ],
        ),
      ),
    );
  }

  Widget selectLogo() {
    return Container(
        padding: EdgeInsets.all(10),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Logo',
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
