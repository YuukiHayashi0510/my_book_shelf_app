import 'env.dart';

const isDbReset = FILE_DEFINED_DB_RESET ??
    bool.fromEnvironment('DB_RESET', defaultValue: false);
