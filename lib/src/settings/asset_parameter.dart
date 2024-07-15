part of 'settings.dart';

/// {@template asset_parameter}
///
/// A class which represents a settings parameter which returns an assets
///
/// {@endtemplate}

final class AssetParameter<T extends CherryAsset>
    extends CherrySettingParameter<T> {
  // Constructors

  /// {@macro asset_parameter}
  AssetParameter(
    super._list, {
    super.defaultOption,
    required super.onChangedCallback,
  });

  // Getters & Setters

  /// {@template asset_parameter_previous_assets}
  ///
  /// All assets contained in this which have been added.
  /// Older ones can be accessed if needed.
  ///
  /// {@endtemplate}
  List<T> get previousAssets => List.empty(
        growable: true,
      );

  // Methods

  /// {@template asset_parameter_copy_with}
  ///
  /// Copys this with the additional alternate parameters
  ///
  /// {@endtemplate}
  AssetParameter<T> copyWith({
    ParameterList<T>? list,
    int? defaultOption,
    OnParameterValueChangedCallback<T>? onChangedCallback,
  }) =>
      AssetParameter<T>(
        list ?? _list,
        defaultOption: defaultOption ?? this.defaultOption,
        onChangedCallback: onChangedCallback ?? this.onChangedCallback,
      );

  // Overrides

  @override
  ParameterType get type => ParameterType.asset;
}
