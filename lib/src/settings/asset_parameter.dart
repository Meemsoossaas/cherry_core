part of 'settings.dart';

final class AssetParameter<T extends CherryAsset>
    extends CherrySettingParameter<T> {
  AssetParameter(
    super._list, {
    super.defaultOption,
    required super.onChangedCallback,
  });

  @override
  ParameterType get type => ParameterType.asset;

  List<T> get assets => List.empty(
        growable: true,
      );
}
