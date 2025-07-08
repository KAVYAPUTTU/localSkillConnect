import 'package:flutter/material.dart';
import 'package:localskillconnect/Screens/Home/mainscreen/main_screen.dart';
import 'package:localskillconnect/Widgets/buttons.dart';

class SubServiceSetup extends StatefulWidget {
  const SubServiceSetup({super.key});

  @override
  State<SubServiceSetup> createState() => _SubServiceSetupState();
}

class _SubServiceSetupState extends State<SubServiceSetup> {
  bool faninstallation = false;
  bool lightrepair = false;
  bool acservices = false;
  bool geyserfitting = false;
  bool watermotorrepair = false;
  bool othersSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 60,
              ),
              const Text('Sub Service Setup',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  )),
             const SizedBox(
                height: 20,
              ),
              Text(
                'Select the services you offer and set your prices',
                style: TextStyle(color: Theme.of(context).colorScheme.secondary),
              ),
              const SizedBox(
                height: 30,
              ),
              ServiceCard(
                title: 'Fan Installation',
                value: faninstallation,
                onChanged: (val) {
                  setState(() => faninstallation = val ?? false);
                },
                showPriceField: faninstallation,
              ),
              const SizedBox(
                height: 10,
              ),
              ServiceCard(
                title: 'Light Repair',
                value: lightrepair,
                onChanged: (val) {
                  setState(() => lightrepair = val ?? false);
                },
                showPriceField: lightrepair,
              ),
              const SizedBox(
                height: 10,
              ),
              ServiceCard(
                title: 'AC Services',
                value: acservices,
                onChanged: (val) {
                  setState(() => acservices = val ?? false);
                },
                showPriceField: acservices,
              ),
              const SizedBox(
                height: 10,
              ),
              ServiceCard(
                title: 'Geyser Fitting',
                value: geyserfitting,
                onChanged: (val) {
                  setState(() => geyserfitting = val ?? false);
                },
                showPriceField: geyserfitting,
              ),
              const SizedBox(
                height: 10,
              ),
              ServiceCard(
                title: 'Water Motor Repair',
                value: watermotorrepair,
                onChanged: (val) {
                  setState(() => watermotorrepair = val ?? false);
                },
                showPriceField: watermotorrepair,
              ),
              const SizedBox(
                height: 20,
              ),
              if (othersSelected)
                OthersServiceCard(
                  value: othersSelected,
                  onChanged: (val) {
                    setState(() {
                      othersSelected = val ?? false;
                    });
                  },
                  showPriceField: othersSelected,
                )
              else
                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 0,
                  child: SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Checkbox(
                          value: othersSelected,
                          onChanged: (val) {
                            setState(() {
                              othersSelected = val ?? false;
                            });
                          },
                          activeColor: Theme.of(context).colorScheme.primary,
                          checkColor: Colors.white,
                        ),
                         Text(
                          'Other',
                          style: TextStyle(
                            fontSize: 14,
                            color: Theme.of(context).colorScheme.secondary
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              const Center(
                  child: Buttons(
                hintText: 'Save',
                navigateName: Mainscreen(),
              ))
            ],
          ),
        ),
      
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String title;
  final bool value;
  final Function(bool?) onChanged;
  final bool showPriceField;

  const ServiceCard({
    super.key,
    required this.title,
    required this.value,
    required this.onChanged,
    required this.showPriceField,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.grey, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0,
      child: SizedBox(
        height: 60,
        width: double.infinity,
        child: Row(
          children: [
            Checkbox(
              value: value,
              onChanged: onChanged,
              activeColor: Theme.of(context).colorScheme.primary,
              checkColor: Colors.white,
            ),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
            if (showPriceField)
              SizedBox(
                width: 100,
                height: 30,
                child: TextField(
                  style: const TextStyle(fontSize: 12),
                  decoration: InputDecoration(
                    hintText: 'Price',
                    hintStyle: const TextStyle(fontSize: 11),
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    prefixIcon: const Padding(
                      padding: EdgeInsets.only(left: 4, right: 4),
                      child: Icon(Icons.currency_rupee_sharp, size: 14),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
            const SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}

class OthersServiceCard extends StatelessWidget {
  final bool value;
  final Function(bool?) onChanged;
  final bool showPriceField;

  const OthersServiceCard({
    super.key,
    required this.value,
    required this.onChanged,
    required this.showPriceField,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.grey, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0,
      child: SizedBox(
        height: 60,
        width: double.infinity,
        child: Row(
          children: [
            Checkbox(
              value: value,
              onChanged: onChanged,
              activeColor: Theme.of(context).colorScheme.primary,
              checkColor: Colors.white,
            ),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 150,
              height: 30,
              child: TextField(
                style: const TextStyle(fontSize: 12),
                decoration: InputDecoration(
                  hintText: 'Service Name',
                  hintStyle: const TextStyle(fontSize: 11),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 25,
            ),
            if (showPriceField)
              SizedBox(
                width: 100,
                height: 30,
                child: TextField(
                  style: const TextStyle(fontSize: 12),
                  decoration: InputDecoration(
                    hintText: 'Price',
                    hintStyle: const TextStyle(fontSize: 11),
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    prefixIcon: const Padding(
                      padding: EdgeInsets.only(left: 4, right: 4),
                      child: Icon(Icons.currency_rupee_sharp, size: 14),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
            const SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}
