part of 'settings.dart';

enum CherryUserModeSettings {
  giver(
    name: 'Giver',
    type: GiverSettings,
  ),
  receiver(
    name: 'Receiver',
    type: ReceiverSettings,
  ),
  chemistry(
    name: 'Chemistry',
    type: ChemistrySettings,
  );

  final String name;
  final Type type;

  const CherryUserModeSettings({
    required this.name,
    required this.type,
  });

  @override
  String toString() => '$name Settings';
}
