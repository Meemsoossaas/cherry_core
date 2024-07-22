part of 'user.dart';

/// {@template gender}
///
/// An enumeration which takes care of the genders.
/// The user will assign it while creating his/her account.
/// Not all genders can be listed which is why it is intended to utilize [Gender.other] or [Gender.undefined], if unknown.
///
/// {@endtemplate}

enum Gender with CherryDataFetcher<Gender> implements Comparable<Gender> {
  // Values

  /// {@template gender_male}
  ///
  /// The user states that he/she is a male.
  ///
  /// {@endtemplate}
  male(
    displayName: 'Male',
    common: true,
  ),

  /// {@template gender_female}
  ///
  /// The user states that he/she is a female.
  ///
  /// {@endtemplate}
  female(
    displayName: 'Female',
    common: true,
  ),

  /// {@template gender_transgender}
  ///
  /// The user states that he/she is a transgender.
  ///
  /// {@endtemplate}
  transgender(
    displayName: 'Transgender',
    common: true,
  ),

  /// {@template gender_gender_neutral}
  ///
  /// The user states that he/she is a gender-neutral.
  ///
  /// {@endtemplate}
  genderNeutral(
    displayName: 'Gender-neutral',
    common: false,
  ),

  /// {@template gender_non_binary}
  ///
  /// The user states that he/she is a non-binary.
  ///
  /// {@endtemplate}
  nonBinary(
    displayName: 'Non-binary',
    common: true,
  ),

  /// {@template gender_agender}
  ///
  /// The user states that he/she is a agender.
  ///
  /// {@endtemplate}
  agender(
    displayName: 'Agender',
    common: false,
  ),

  /// {@template gender_pangender}
  ///
  /// The user states that he/she is a pangender.
  ///
  /// {@endtemplate}
  pangender(
    displayName: 'Pangender',
    common: false,
  ),

  /// {@template gender_genderqueer}
  ///
  /// The user states that he/she is a genderqueer.
  ///
  /// {@endtemplate}
  genderqueer(
    displayName: 'Genderqueer',
    common: false,
  ),

  /// {@template gender_two_spirit}
  ///
  /// The user states that he/she is a two-spirit.
  ///
  /// {@endtemplate}
  twoSpirit(
    displayName: 'Two-spirit',
    common: false,
  ),

  /// {@template gender_other}
  ///
  /// The user states that his/her gender has not been listed.
  ///
  /// {@endtemplate}
  other(
    displayName: 'Other',
    common: null,
  ),

  /// {@template gender_undefined}
  ///
  /// The user is unsure about his/her gender.
  ///
  /// {@endtemplate}
  undefined(
    displayName: 'I\'m unsure',
    common: null,
  );

  // Properties

  /// {@template gender_display_name}
  ///
  /// The display name of this, when it appears on the UI.
  ///
  /// {@endtemplate}
  final String displayName;

  /// {@template gender_common}
  ///
  /// States if many people are familiar or identify with that gender.
  ///
  /// {@endtemplate}
  final bool? common;

  // Constructor

  /// {@macro gender}
  const Gender({
    required this.displayName,
    required this.common,
  });

  // Overrides

  @override
  int compareTo(Gender other) => index - other.index;

  @override
  Gender? fromDisplayName(String displayName) => _fromDisplayName(displayName);

  Gender? _fromDisplayName(String displayName) {
    for (final gender in Gender.values) {
      if (gender.displayName == displayName) return gender;
    }
    return null;
  }
}
