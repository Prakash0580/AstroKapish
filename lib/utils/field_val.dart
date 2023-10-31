// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// //  Selected Date and Time
Future selectDate(BuildContext context) async {
  final DateTime? pickedDate = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(1950),
    lastDate: DateTime.now(),
  );

  if (pickedDate != null) {
    final String formattedDate =
        "${pickedDate.day.toString().padLeft(2, '0')}-${pickedDate.month.toString().padLeft(2, '0')}-${pickedDate.year}";
    return formattedDate;
  }
}

Future selectTime(BuildContext context) async {
  final TimeOfDay? pickedTime = await showTimePicker(
    context: context,
    initialTime: TimeOfDay.now(),
  );

  if (pickedTime != null) {
    return pickedTime.format(context);
  }
}

class TxtField extends StatelessWidget {
  final String? headTxt, labelText, hintText, errorText;
  final TextEditingController? controller;
  final int? maxLines, minLines, maxLength;
  final dynamic onTap;
  final double? cursorHeight;

  final Function? validator;
  final BoxDecoration? decoration;
  final Function(String?)? onSaved, onChanged;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? suffixIcon, prefixIcon;
  final TextAlign? textAlign;
  final EdgeInsets? contentPadding;

  final bool? readOnly, filled, border;
  final Color? fillColor;
  final TextStyle? style;
  final bool? enabled;

  const TxtField(
      {Key? key,
      this.headTxt,
      this.enabled,
      this.cursorHeight,
      this.contentPadding,
      this.textAlign,
      this.decoration,
      this.controller,
      this.labelText,
      this.errorText,
      this.inputFormatters,
      this.keyboardType,
      this.maxLength,
      this.minLines,
      this.maxLines,
      this.onSaved,
      this.onChanged,
      this.readOnly,
      this.onTap,
      this.suffixIcon,
      this.prefixIcon,
      this.hintText,
      this.border = true,
      this.filled,
      this.fillColor,
      this.validator,
      this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        enabled: enabled ?? true,
        onTap: onTap,
        style: style ??
            const TextStyle(
              color: Colors.black,
            ),
        textAlign: textAlign ?? TextAlign.start,
        onChanged: onChanged,
        cursorHeight: cursorHeight ?? 25.0,
        inputFormatters: inputFormatters,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        maxLines: maxLines,
        minLines: minLines,
        maxLength: maxLength,
        controller: controller,
        onSaved: onSaved,
        keyboardType: keyboardType,
        validator: validator != null ? (value) => validator!(value) : null,
        readOnly: readOnly ?? false,
        scrollPadding: EdgeInsets.zero,
        decoration: InputDecoration(
            fillColor: fillColor ?? Colors.white,
            filled: filled ?? true,
            errorStyle: const TextStyle(color: Colors.red),
            errorText: errorText,
           
            counter: const Offstage(),
            labelStyle: const TextStyle(
                fontSize: 18,
                // fontWeight: FontWeight.bold,
                color: Colors.black),
            labelText: labelText,
            border: border == true
                ? OutlineInputBorder(
                    borderRadius: BorderRadius.circular(3),
                  )
                : null,
            hintText: hintText,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            contentPadding: contentPadding));
  }
}

// ! DropDowN Field

class DropDownBtn extends StatefulWidget {
  final String? dName, labelText;
  final dynamic listData;
  String? currentItem;

  TextEditingController? listController = TextEditingController();
  final dynamic onChanged;
  final Function? validator;

  final Color? fillColor;
  final bool? filled, validation;

  DropDownBtn(
      {Key? key,
      this.dName,
      this.listData,
      this.listController,
      this.labelText = '',
      this.validator,
      this.currentItem,
      this.onChanged,
      this.fillColor,
      this.validation = true,
      this.filled})
      : super(key: key);

  @override
  _DropDownBtnState createState() => _DropDownBtnState();
}

class _DropDownBtnState extends State<DropDownBtn> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<dynamic>(
        dropdownColor: Colors.white,
        value: widget.listController!.text.isNotEmpty
            ? widget.listController!.text
            : widget.currentItem,
        validator: widget.validation == false
            ? null
            : widget.validator != null
                ? (value) => widget.validator!(value)
                : (v) {
                    if (v.toString().isEmpty || v == null) {
                      return 'Field is Required';
                    }
                    return null;
                  },
        isExpanded: true,
        icon: const Icon(
          Icons.arrow_drop_down,
          size: 18,
        ),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        alignment: AlignmentDirectional.centerStart,
        iconSize: 18,
        onTap: () {},
        onChanged: widget.onChanged ??
            (dynamic newValue) {
              FocusScope.of(context).requestFocus(FocusNode());
              setState(() {
                widget.currentItem = newValue;
                widget.listController!.text = newValue!;
              });
            },
        items: widget.listData.map<DropdownMenuItem>((dynamic value) {
          return DropdownMenuItem(
            value: value,
            child: Text(
              value,
              // style: smallTextStyle,
              textAlign: TextAlign.start,
            ),
          );
        }).toList(),

        // ! DROP DOWN MENU Dname

        hint: Text(
          widget.currentItem == null
              ? widget.labelText.toString()
              : widget.dName.toString(),
        ),
        decoration: InputDecoration(
            fillColor: widget.fillColor,
            filled: widget.filled ?? true,
            errorStyle: const TextStyle(color: Colors.red),
            counter: const Offstage(),
            labelStyle: const TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
            border: const OutlineInputBorder(),
            contentPadding: const EdgeInsets.symmetric(horizontal: 10.0)));
  }
}

// !Check Box List

class CheckBoxListComp extends StatelessWidget {
  List? prodList, busList;
  final String? title;
  List prod = [];
  CheckBoxListComp(
      {super.key, this.title, required this.prodList, this.busList});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$title',
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        GridView.builder(
            physics: const ScrollPhysics(),
            padding: const EdgeInsets.all(1.0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 6.5,
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 10.0,
            ),
            shrinkWrap: true,
            itemCount: prodList!.length,
            itemBuilder: ((context, i) {
              bool? selectedVal = false;
              return StatefulBuilder(builder: (context, setState) {
                return Row(
                  children: [
                    Checkbox(
                        activeColor: Colors.blue,
                        checkColor: Colors.white,
                        value: selectedVal == true ? true : false,
                        onChanged: (val) {
                          setState(() {
                            if (val == true) {
                              selectedVal = val;
                              busList!.add(prodList![i]['name']);
                            } else {
                              selectedVal = val;
                              busList!.remove(prodList![i]['name']);
                            }
                          });
                        }),
                    Text(
                      "${prodList![i]['name']}",
                      style: const TextStyle(fontSize: 14),
                    ),
                    const SizedBox(height: 0.0)
                  ],
                );
              });
            })),
      ],
    );
  }
}

// ! Two Field in Onw Row
class TwoField extends StatelessWidget {
  const TwoField(
    this.child,
    this.child2, {
    super.key,
  });
  final Widget child, child2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: child),
        const SizedBox(
          width: 2.5,
        ),
        Expanded(child: child2),
      ],
    );
  }
}

// ! Validation For  TextFormField

validateField(String value) {
  if (value.isEmpty) {
    return 'Field is Required.';
  } else {
    return null;
  }
}

validateMobile(String value) {
  if (value.isEmpty) {
    return 'Mobile Number is Required.';
  } else if (value.length < 10) {
    return 'Mobile Number required at least 10 numbers';
  } else if (value.length > 11) {
    return 'Mobile Number required 10 numbers';
  } else {
    return null;
  }
}

validateOTP(String value) {
  if (value.isEmpty) {
    return 'OTP is Required.';
  } else if (value.length < 4) {
    return 'OTP required at least 4 numbers';
  } else if (value.length > 4) {
    return 'OTP required at most 4 numbers';
  } else {
    return null;
  }
}

validateEmail(String value) {
  bool validEmail = RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(value);
  if (value.isEmpty) {
    return 'Email is Required.';
  } else if (validEmail == false) {
    // return null;
    return 'Invalid email address';
  } else {
    return null;
    // return 'Invalid email address';
  }
}

class PickerMethod extends StatefulWidget {
  const PickerMethod({super.key});

  @override
  State<PickerMethod> createState() => _PickerMethodState();
}

class _PickerMethodState extends State<PickerMethod> {
  final TextEditingController _timeController = TextEditingController();

  @override
  void dispose() {
    _timeController.dispose();
    super.dispose();
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (selectedTime != null) {
      final String formattedTime =
          "${selectedTime.hour.toString().padLeft(2, '0')}:${selectedTime.minute.toString().padLeft(2, '0')}";
      setState(() {
        _timeController.text = formattedTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
