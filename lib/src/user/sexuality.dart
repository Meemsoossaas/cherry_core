part of 'user.dart';

/// {@template sexuality}
///
/// An enumeration which handles sexualities.
/// The user will assign one of the values, when he/she is creating his/her account.
/// Not all sexualities can be listed which is why it is intended to utilize [Sexuality.other] or [Sexuality.undefined], if unknown.
///
/// {@endtemplate}

enum Sexuality
    with CherryDataFetcher<Sexuality>
    implements Comparable<Sexuality> {
  // Values

  /// {@template sexuality_hetero}
  ///
  /// The user states that he/she is heterosexual.
  ///
  /// {@endtemplate}
  hetero(
    displayName: 'Heterosexual',
  ),

  /// {@template sexuality_alloromantic}
  ///
  /// The user states that he/she is alloromantic.
  ///
  /// {@endtemplate}
  alloromantic(
    displayName: 'Alloromantic',
  ),

  /// {@template sexuality_allo}
  ///
  /// The user states that he/she is allosexual.
  ///
  /// {@endtemplate}
  allo(
    displayName: 'Allosexual',
  ),

  /// {@template sexuality_androsexual}
  ///
  /// The user states that he/she is androsexual.
  ///
  /// {@endtemplate}
  andro(
    displayName: 'Androsexual',
  ),

  /// {@template sexuality_aromantic}
  ///
  /// The user states that he/she is aromantic.
  ///
  /// {@endtemplate}
  aromantic(
    displayName: 'Aromantic',
  ),

  /// {@template sexuality_asexual}
  ///
  /// The user states that he/she is asexual.
  ///
  /// {@endtemplate}
  asexual(
    displayName: 'Asexual',
  ),

  /// {@template sexuality_autoromantic}
  ///
  /// The user states that he/she is autoromantic.
  ///
  /// {@endtemplate}
  autoromantic(
    displayName: 'Autoromantic',
  ),

  /// {@template sexuality_auto}
  ///
  /// The user states that he/she is autosexual.
  ///
  /// {@endtemplate}
  auto(
    displayName: 'Autosexual',
  ),

  /// {@template sexuality_bicurious}
  ///
  /// The user states that he/she is bicurious.
  ///
  /// {@endtemplate}
  bicurious(
    displayName: 'Bicurious',
  ),

  /// {@template sexuality_biromantic}
  ///
  /// The user states that he/she is biromantic.
  ///
  /// {@endtemplate}
  biromantic(
    displayName: 'Biromantic',
  ),

  /// {@template sexuality_bi}
  ///
  /// The user states that he/she is bisexual.
  ///
  /// {@endtemplate}
  bi(
    displayName: 'Bisexual',
  ),

  /// {@template sexuality_demiromantic}
  ///
  /// The user states that he/she is demiromantic.
  ///
  /// {@endtemplate}
  demiromantic(
    displayName: 'Demiromantic',
  ),

  /// {@template sexuality_demisexual}
  ///
  /// The user states that he/she is demisexual.
  ///
  /// {@endtemplate}
  demi(
    displayName: 'Demisexual',
  ),

  /// {@template sexuality_gay}
  ///
  /// The user states that he/she is gay.
  ///
  /// {@endtemplate}
  gay(
    displayName: 'Gay',
  ),

  /// {@template sexuality_gyno}
  ///
  /// The user states that he/she is gynosexual.
  ///
  /// {@endtemplate}
  gyno(
    displayName: 'Gynosexual',
  ),

  /// {@template sexuality_heteroromantic}
  ///
  /// The user states that he/she is heteroromantic.
  ///
  /// {@endtemplate}
  heteroromantic(
    displayName: 'Heteroromantic',
  ),

  /// {@template sexuality_homoromantic}
  ///
  /// The user states that he/she is homoromantic.
  ///
  /// {@endtemplate}
  homoromantic(
    displayName: 'Homoromantic',
  ),

  /// {@template sexuality_homo}
  ///
  /// The user states that he/she is homosexual.
  ///
  /// {@endtemplate}
  homo(
    displayName: 'Homosexual',
  ),

  /// {@template sexuality_lesbian}
  ///
  /// The user states that he/she is lesbian.
  ///
  /// {@endtemplate}
  lesbian(
    displayName: 'Lesbian',
  ),

  /// {@template sexuality_mono}
  ///
  /// The user states that he/she is monosexual.
  ///
  /// {@endtemplate}
  mono(
    displayName: 'Monosexual',
  ),

  /// {@template sexuality_multi}
  ///
  /// The user states that he/she is multisexual.
  ///
  /// {@endtemplate}
  multi(
    displayName: 'Multisexual',
  ),

  /// {@template sexuality_pan}
  ///
  /// The user states that he/she is pansexual.
  ///
  /// {@endtemplate}
  pan(
    displayName: 'Pansexual',
  ),

  /// {@template sexuality_panromantic}
  ///
  /// The user states that he/she is panromantic.
  ///
  /// {@endtemplate}
  panromantic(
    displayName: 'Panromantic',
  ),

  /// {@template sexuality_poly}
  ///
  /// The user states that he/she is polysexual.
  ///
  /// {@endtemplate}
  poly(
    displayName: 'Polysexual',
  ),

  /// {@template sexuality_queer}
  ///
  /// The user states that he/she is queer.
  ///
  /// {@endtemplate}
  queer(
    displayName: 'Queer',
  ),

  /// {@template sexuality_fluid}
  ///
  /// The user states that he/she is fluid.
  ///
  /// {@endtemplate}
  fluid(
    displayName: 'Fluid',
  ),

  /// {@template sexuality_skolio}
  ///
  /// The user states that he/she is skoliosexual.
  ///
  /// {@endtemplate}
  skolio(
    displayName: 'Skoliosexual',
  ),

  /// {@template sexuality_spectra}
  ///
  /// The user states that he/she is spectrasexual.
  ///
  /// {@endtemplate}
  spectra(
    displayName: 'Spectrasexual',
  ),

  /// {@template sexuality_other}
  ///
  /// The user's wanted gender is not listed.
  ///
  /// {@endtemplate}
  other(
    displayName: 'Other',
  ),

  /// {@template sexuality_hetero}
  ///
  /// The user is unsure about his/her sexuality.
  ///
  /// {@endtemplate}
  undefined(
    displayName: 'I\'m unsure',
  );

  // Properties

  /// {@template sexuality_hetero}
  ///
  /// The display name of this, when it appears on the UI.
  ///
  /// {@endtemplate}
  final String displayName;

  // Constructor

  /// {@macro sexuality}
  const Sexuality({
    required this.displayName,
  });

  // Overrides

  @override
  int compareTo(Sexuality other) => index - other.index;

  @override
  Sexuality? fromDisplayName(String displayName) {
    for (final sexuality in Sexuality.values) {
      if (sexuality.displayName == displayName) return sexuality;
    }
    return null;
  }
}
