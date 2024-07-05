part of 'settings.dart';

/// {@template cherry_setting_parameter}
///
/// A class which declares the parameters basis for all it's descendants
///
/// {@endtemplate}

sealed class CherrySettingParameter<T> extends CherryCore {
  // Properties

  /// {@template cherry_setting_parameter_list}
  ///
  /// The starting list of values (Type: [T])
  /// (During initialization, it will be asserted.)
  ///
  /// {@endtemplate}
  final ParameterList<T> _list;

  /// {@template cherry_setting_parameter_default_option}
  ///
  /// The index of the default value.
  /// (During initialization, it will be asserted.)
  ///
  /// {@endtemplate}
  final int defaultOption;

  /// {@template cherry_setting_parameter_on_changed_callback}
  ///
  /// The function to be executed if the parameter value has been changed
  ///
  /// {@endtemplate}
  final OnParameterValueChangedCallback<T> onChangedCallback;

  /// {@template cherry_setting_parameter_parameter_list_builder}
  ///
  /// The function which will be called when [CherrySettingParameter.builder] is being initialized.
  /// This will return per iteration a [ParameterCore].
  /// At the end, [_list] will contain similar values like being initialized normally
  ///
  /// {@endtemplate}
  final ParameterListBuilder? parameterListBuilder;

  // Constructors

  /// {@macro cherry_setting_parameter}
  CherrySettingParameter(
    this._list, {
    required this.onChangedCallback,
    this.defaultOption = 0,
  })  : parameterListBuilder = null,
        assert(
          (defaultOption >= 0) && (defaultOption <= _list.length - 1),
          "'defaultOption' must be in relation of the size of the 'options' list",
        ),
        assert(
          _list.isNotEmpty,
          "'list' must have at least one value.",
        );

  /// {@template cherry_setting_parameter_builder}
  ///
  /// Builds [_list] from scratch
  /// [abbrevationList] being the list of abbreviations
  /// [nameList] being the display names
  /// [valueList] being the values of [T]
  /// Make sure these list are correctly indexed to avoid future issues
  ///
  /// {@endtemplate}
  CherrySettingParameter.builder(
    List<String> abbrevationList,
    List<String> nameList,
    List<T> valueList,
    this.defaultOption,
    this.onChangedCallback,
    this.parameterListBuilder,
  )   : _list = List.empty(growable: true),
        assert(
          parameterListBuilder != null,
          '',
        ) {
    assert(
      (defaultOption >= 0) && (defaultOption <= _list.length - 1),
      "'defaultOption' must be in relation of the size of the 'options' list",
    );
    assert(
      (abbrevationList.length == nameList.length) ||
          (abbrevationList.length == valueList.length) ||
          (nameList.length == valueList.length),
      '',
    );
    for (int i = 0; i < valueList.length; i++) {
      _list.add(
        (
          abbrevation: abbrevationList[i],
          name: nameList[i],
          value: valueList[i],
        ),
      );
    }
  }

  // Getters & Setters

  /// {@template cherry_setting_parameter_type}
  ///
  /// The type of the parameter
  ///
  /// {@endtemplate}
  ParameterType get type;

  /// {@template cherry_setting_parameter_number_of_options}
  ///
  /// The number of options contained in [_list]
  ///
  /// {@endtemplate}
  int? get numberOfOptions => _list.length;

  /// {@template cherry_setting_parameter_valid_indices}
  ///
  /// A list containing all valid indices
  ///
  /// {@endtemplate}
  List<int> get validIndices => List<int>.generate(
        _list.length,
        (int index) => index,
        growable: false,
      );

  /// {@template cherry_setting_parameter_get_current_index}
  ///
  /// Gets the current index
  /// On initialization, [defaultOption] will be the current index
  ///
  /// {@endtemplate}
  int get currentIndex => defaultOption;

  /// {@template cherry_setting_parameter_set_current_index}
  ///
  /// Checks if the [newIndex] is contained in [validIndices]
  ///
  /// {@endtemplate}
  set currentIndex(int newIndex) => _currentIndex(newIndex);

  void _currentIndex(int newIndex) {
    if (validIndices.contains(newIndex)) {
    } else {
      throw Exception();
    }
  }

  /// {@template cherry_setting_parameter_default_parameter_value}
  ///
  /// The default value in [_list] of type [T]
  ///
  /// {@endtemplate}
  ParameterCore<T> get defaultParameterValue => _list[defaultOption];

  // Methods

  /// {@template cherry_setting_parameter_change_option}
  ///
  /// Returns the current parameter value in [_list]
  ///
  /// {@endtemplate}
  ParameterCore<T>? changeOption({required int newIndex}) => _changeOption(
        newIndex: newIndex,
      );

  ParameterCore<T>? _changeOption({required int newIndex}) {
    currentIndex = newIndex;
    return validIndices.contains(currentIndex) ? _list[currentIndex] : null;
  }

  // Overrides

  @override
  List<Object?> get props => [
        _list,
        defaultOption,
        onChangedCallback,
        onChangedCallback,
        parameterListBuilder,
      ];
}
