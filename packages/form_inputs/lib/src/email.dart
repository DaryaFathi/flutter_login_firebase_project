import 'package:formz/formz.dart';
// ignore_for_file: public_member_api_docs

enum EmailValidationError { invalid }

// EmailValidationError (for potential validation errors)

class Email extends FormzInput<String, EmailValidationError> {
//Email.pure(): This constructor creates an instance of Email with a pristine
// (pure) state. It calls the superclass constructor super.pure('') to set the
// initial value of the input to an empty string.

  const Email.pure() : super.pure('');

// Email.dirty(): This constructor creates an instance of Email with a dirty
// state. It calls the superclass constructor super.dirty() to indicate that
// the input value has been changed.

  const Email.dirty([super.value = '']) : super.dirty();

  static final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );

  @override
  EmailValidationError? validator(String? value) {
    return _emailRegExp.hasMatch(value ?? '')
        ? null
        : EmailValidationError.invalid;
  }
}
