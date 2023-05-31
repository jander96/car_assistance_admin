import 'package:car_assistance_admin/src/presenter/widget/dropdown.dart';
import 'package:flutter/material.dart';

class EditionPage extends StatelessWidget {
  const EditionPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    final colors = Theme.of(context).colorScheme;
    final String affiliate =
        ModalRoute.of(context)?.settings.arguments as String;
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Affiliate'),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.cloud_upload_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Placeholder(
              fallbackHeight: 200,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.camera_alt_outlined)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.photo_album_outlined))
            ]),
            Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _TextField(
                        label: Text('name'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(flex: 1, child: _TextField(
                            label: Text('open'),
                            prefixIcon: Icon(Icons.access_time_outlined),
                          )),
                          const SizedBox(
                            width: 24,
                          ),
                          Expanded(flex: 1, child: _TextField(
                            label: Text('close'),
                            prefixIcon: Icon(Icons.access_time_outlined),
                          )),
                          const SizedBox(
                            width: 8,
                          ),
                          
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:8.0),
                        child: Row(
                          children: [
                            const Text("24h"),
                                Checkbox(
                                    value: true,
                                    onChanged: (value) {
                                      
                                    }),
                          ],
                        ),
                      ),
                      _TextField(
                        label: Text('phone'),
                        textInputType: TextInputType.phone,
                      ),
                      Row(
                        children: [
                          Expanded(
                              flex: 1, child: _TextField(label: Text('lat'),textInputType: TextInputType.number,)),
                          const SizedBox(
                            width: 32,
                          ),
                          Expanded(
                              flex: 1, child: _TextField(label: Text('long'),textInputType: TextInputType.number)),
                        ],
                      ),
                      _TextField(label: Text('address')),
                      _TextField(label: Text('services')),
                      CustomDropDown(onTap: (value) {}, colors: colors)
                    ],
                  ),
                )),
            Center(child: Text('edition a $affiliate')),
          ],
        ),
      ),
    );
  }
}

class _TextField extends StatelessWidget {
  final Text? label;
  final String? Function(String?)? validator;
  final Icon? prefixIcon;
  final String? errorText;
  final TextInputType? textInputType;
  const _TextField(
      {super.key, this.label, this.validator, this.prefixIcon, this.errorText, this.textInputType});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        keyboardType: textInputType ,
        decoration: InputDecoration(
          filled: true,
          isDense: true,
          label: label,
          prefixIcon: prefixIcon,
          errorText: errorText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        ),
        validator: validator,
      ),
    );
  }
}
