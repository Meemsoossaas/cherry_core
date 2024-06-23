part of '../cherry_core.dart';

final class ChemistrySettings extends CherrySettings {
  static ChemistrySettings instance = ChemistrySettings._internal();

  ChemistrySettings._internal();

  factory ChemistrySettings() => instance;

  @override
  CherrySettings get defaultSettings => ChemistrySettings._internal();

  @override
  List<Object?> get props => [];
}