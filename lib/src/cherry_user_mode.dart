part of '../cherry_core.dart';

enum CherryUserMode {
  giver(modeName: 'Giver'),
  receiver(modeName: 'Receiver'),
  chemistry(modeName: 'Chemistry'),
  signUp(modeName: null);

  final String? modeName;

  const CherryUserMode({
    required this.modeName
  });

  @override
  String toString() => this == CherryUserMode.signUp ? 'Sign Up' : '$modeName Mode';
}
