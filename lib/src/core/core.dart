/// The fundamental library for all elementary and basic functionalities and accesses for the Cherry application

library core;

import 'dart:async';
import 'dart:io' show Directory, File;

import 'package:equatable/equatable.dart' show Equatable;
import 'package:logger/logger.dart' show Logger, Level;
import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart' show Uuid;

import '../../cherry_core.dart' show CherryRoute;

// Classes

part 'cherry_core.dart';

part 'cherry_asset.dart';

part 'cherry_image_asset.dart';

part 'cherry_icon_asset.dart';

part 'cherry_video_asset.dart';

part 'cherry_data_fetcher.dart';

part 'cherry_date_time_info_fetcher.dart';

part 'cherry_string_info_fetcher.dart';

// Exceptions

part 'cherry_core_exception.dart';

part 'cherry_core_hint_exception.dart';

part 'cherry_core_warning_exception.dart';

part 'cherry_core_error_exception.dart';

// Enumerations

part 'asset_type.dart';

part 'cherry_user_mode.dart';

part 'cherry_core_exception_type.dart';

part 'date_time_info.dart';

// Extensions

part 'cherry_core_list_extensions.dart';

part 'cherry_core_date_time_extensions.dart';

part 'cherry_core_string_extensions.dart';

// Extension Types

part 'cherry_core_logger_builder.dart';

// Typedefs

part 'cherry_core_exception_typedefs.dart';

part 'cherry_asset_typedefs.dart';

part 'cherry_core_typedefs.dart';
