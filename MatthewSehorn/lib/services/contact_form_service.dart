import 'package:flutter/Material.dart';
import 'package:riverpod/riverpod.dart';

final contactFormKey = GlobalKey<FormState>();

class ContactFormData {
  ContactFormData({
    this.name,
    this.subject,
    this.email,
    this.message,
  });

  final String name;
  final String subject;
  final String email;
  final String message;
}

class ContactFormNotifier extends StateNotifier<ContactFormData> {
  ContactFormNotifier() : super(new ContactFormData(name: '', subject: '', email: '', message: ''));

  Future<void> reset() async {
    print('In the void');
    state = new ContactFormData(
      name: '',
      subject: '',
      email: '',
      message: '',
    );

    state = state;

    print('state.name');
    print(state.name);
  }

  void updateName(String name) {
    state = ContactFormData(
      name: name,
      subject: state.subject,
      email: state.email,
      message: state.message,
    );
  }

  void updateSubject(String subject) {
    state = ContactFormData(
      name: state.name,
      subject: subject,
      email: state.email,
      message: state.message,
    );
  }

  void updateEmail(String email) {
    state = ContactFormData(
      name: state.name,
      subject: state.subject,
      email: email,
      message: state.message,
    );
  }

  void updateMessage(String message) {
    state = ContactFormData(
      name: state.name,
      subject: state.subject,
      email: state.email,
      message: message,
    );
  }
}

final formDataProvider = StateNotifierProvider.autoDispose<ContactFormNotifier>((ref) => new ContactFormNotifier());
