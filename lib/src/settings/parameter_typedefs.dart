part of 'settings.dart';

/// {@template parameter_core}
///
/// A [Record] for [ParameterList] (frankly) for visual purposes
///
/// {@endtemplate}

typedef ParameterCore<T> = ({
  String abbrevation,
  String name,
  T value,
});

/// {@template parameter_list}
///
/// A list containing [ParameterCore]
///
/// {@endtemplate}

typedef ParameterList<T> = List<ParameterCore<T>>;

/// {@template on_parameter_value_changed_callback}
///
/// A function definition which serves if a descendant of [CherrySettingParameter] changes it's current value
///
/// {@endtemplate}

typedef OnParameterValueChangedCallback<T> = bool Function(
  T oldValue,
  T selectedValue,
);
