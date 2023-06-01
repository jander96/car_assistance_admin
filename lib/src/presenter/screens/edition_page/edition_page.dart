import 'package:car_assistance_admin/src/presenter/widget/dropdown.dart';
import 'package:flutter/material.dart';

class EditionPage extends StatelessWidget {
  const EditionPage({super.key});

  void autocomplete(String? field, TextEditingController controller) {
    if (field == null) return;
    controller.text = field;
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final String? affiliate =
        ModalRoute.of(context)?.settings.arguments as String?;
    final formKey = GlobalKey<FormState>();
    final nameController = TextEditingController();
    final openController = TextEditingController();
    final closeController = TextEditingController();
    final phoneController = TextEditingController();
    final latController = TextEditingController();
    final longController = TextEditingController();
    final addressController = TextEditingController();
    final servicesController = TextEditingController();
    final stateController = TextEditingController();

    autocomplete(affiliate, nameController);

    String name = "";
    String? opentime;
    String? closeTime;
    bool isFullTime = false;
    String phone = "";
    String lat = "";
    String long = "";
    String address = "";
    String services = "";
    String state = "";

    return Scaffold(
      appBar: AppBar(
        title: const Text('Affiliate'),
        actions: [
          IconButton(
              onPressed: () {
                final isValid = formKey.currentState!.validate();
                if (isValid) return;
              },
              icon: const Icon(Icons.cloud_upload_outlined)),
          IconButton(icon: const Icon(Icons.delete_outline), onPressed: (){
            
          }),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, 'log', arguments: affiliate);
              },
              icon: const Icon(Icons.receipt_long_outlined))
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
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _TextField(
                        controller: nameController,
                        label: Text('name'),
                        onChanged: (value) {
                          name = value;
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Campo requerido";
                          }
                          if (value.trim().isEmpty || value.isEmpty) {
                            return "Campo requerido";
                          }
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                              onPressed: () async {
                                showTimePicker(
                                        context: context,
                                        initialTime: TimeOfDay.now())
                                    .then((timeOfDay) {
                                  if (timeOfDay != null) {
                                    openController.text =
                                        timeOfDay.format(context);
                                  }
                                });
                              },
                              icon: const Icon(Icons.access_time_outlined)),
                          Expanded(
                              flex: 1,
                              child: _TextField(
                                controller: openController,
                                enabled: false,
                                label: const Text('open'),
                              )),
                          IconButton(
                              onPressed: () {
                                showTimePicker(
                                        context: context,
                                        initialTime: TimeOfDay.now())
                                    .then((timeOfDay) {
                                  if (timeOfDay != null) {
                                    closeController.text =
                                        timeOfDay.format(context);
                                  }
                                });
                              },
                              icon: const Icon(Icons.access_time_outlined)),
                          Expanded(
                              flex: 1,
                              child: _TextField(
                                controller: closeController,
                                enabled: false,
                                label: const Text('close'),
                              )),
                          const SizedBox(
                            width: 8,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          children: [
                            const Text("24h"),
                            Checkbox(value: true, onChanged: (value) {}),
                          ],
                        ),
                      ),
                      _TextField(
                        controller: phoneController,
                        label: Text('phone'),
                        textInputType: TextInputType.phone,
                        onChanged: (value) {
                          phone = value;
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Campo requerido";
                          }
                          if (value.trim().isEmpty || value.isEmpty) {
                            return "Campo requerido";
                          }
                        },
                      ),
                      Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: _TextField(
                                controller: latController,
                                label: Text('lat'),
                                textInputType: TextInputType.number,
                                onChanged: (value) {
                                  lat = value;
                                },
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Campo requerido";
                                  }
                                  if (value.trim().isEmpty || value.isEmpty) {
                                    return "Campo requerido";
                                  }
                                },
                              )),
                          const SizedBox(
                            width: 32,
                          ),
                          Expanded(
                              flex: 1,
                              child: _TextField(
                                controller: longController,
                                label: Text('long'),
                                textInputType: TextInputType.number,
                                onChanged: (value) {
                                  long = value;
                                },
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Campo requerido";
                                  }
                                  if (value.trim().isEmpty || value.isEmpty) {
                                    return "Campo requerido";
                                  }
                                },
                              )),
                        ],
                      ),
                      _TextField(
                        controller: addressController,
                        label: Text('address'),
                        onChanged: (value) {
                          address = value;
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Campo requerido";
                          }
                          if (value.trim().isEmpty || value.isEmpty) {
                            return "Campo requerido";
                          }
                        },
                      ),
                      _TextField(
                        controller: servicesController,
                        label: Text('services'),
                        onChanged: (value) {
                          services = value;
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Campo requerido";
                          }
                          if (value.trim().isEmpty || value.isEmpty) {
                            return "Campo requerido";
                          }
                        },
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: CustomDropDown(
                                  onTap: (value) {
                                    if (value != null) {
                                      stateController.text = value;
                                    }
                                  },
                                  colors: colors)),
                          Expanded(
                              child: _TextField(
                            label: Text('state'),
                            enabled: false,
                            controller: stateController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Campo requerido";
                              }
                              if (value.trim().isEmpty || value.isEmpty) {
                                return "Campo requerido";
                              }
                            },
                          )),
                        ],
                      )
                    ],
                  ),
                )),
            Center(child: affiliate == null ? const Text('new affiliate'): Text('editing to $affiliate')),
          ],
        ),
      ),
    );
  }
}

class _TextField extends StatelessWidget {
  final Text? label;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final Icon? prefixIcon;
  final String? errorText;
  final TextInputType? textInputType;
  final bool? enabled;
  final void Function()? onTap;
  final TextEditingController? controller;
  const _TextField(
      {super.key,
      this.label,
      this.validator,
      this.prefixIcon,
      this.errorText,
      this.textInputType,
      this.enabled,
      this.onTap,
      this.controller,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: controller,
        keyboardType: textInputType,
        enabled: enabled,
        onTap: onTap,
        decoration: InputDecoration(
          filled: true,
          isDense: true,
          label: label,
          prefixIcon: prefixIcon,
          errorText: errorText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        ),
        validator: validator,
        onChanged: onChanged,
      ),
    );
  }
}
