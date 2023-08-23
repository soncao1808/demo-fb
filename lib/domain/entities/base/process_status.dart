enum ProcessStatus {
  initialized,
  loading,
  success,
  faluire;

  bool get isLoading => this == ProcessStatus.loading;

  bool get isSuccess => this == ProcessStatus.success;

  bool get isFailure => this == ProcessStatus.faluire;

  bool get isInitialized => this == ProcessStatus.initialized;
}
