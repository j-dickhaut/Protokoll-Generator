import 'package:flutter/material.dart';
import 'package:protokoll_generator/services/city_validation.dart';
import 'package:protokoll_generator/services/postal_validation.dart';
import 'package:protokoll_generator/services/street_validation.dart';
import 'package:protokoll_generator/shared/theme/styled_text.dart';
import 'package:protokoll_generator/shared/theme/theme.dart';

/*
Card, where user inputs a adress.
Checkbox enables form check for german adresses.  
*/
class LocationCard extends StatefulWidget {
  final String heading;

  const LocationCard({required this.heading, super.key});

  @override
  State<LocationCard> createState() => _LocationCardState();
}

class _LocationCardState extends State<LocationCard> {
  final _formKey = GlobalKey<FormState>();
  bool isGermanAdress = true;
  final TextEditingController _postalCodeController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _streetController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22),
        side: BorderSide(color: AppColor.primaryDark, width: 2),
      ),
      color: AppColor.primaryLight.withAlpha(50),
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            StyledHeading(widget.heading.toUpperCase()),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: isGermanAdress,
                        onChanged: (value) {
                          setState(() {
                            !isGermanAdress;
                          });
                        },
                      ),
                      Text('location is in germany'),
                    ],
                  ),
                  TextFormField(
                    controller: _postalCodeController,
                    validator: (value) {
                      return validatePostalcode(value);
                    },
                    autovalidateMode: AutovalidateMode.onUnfocus,
                    maxLength: 5,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'postal code',
                    ),
                  ),
                  TextFormField(
                    controller: _cityController,
                    validator: (value) {
                      return validateCity(value);
                    },
                    autovalidateMode: AutovalidateMode.onUnfocus,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'city',
                    ),
                  ),
                  TextFormField(
                    controller: _streetController,
                    validator: (value) {
                      return validateStreet(value);
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'street + house number',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
