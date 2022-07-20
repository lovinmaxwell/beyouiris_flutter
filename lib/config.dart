class Environments {
  static const String PRODUCTION = 'prod';
  static const String QAS = 'QAS';
  static const String DEV = 'dev';
  static const String LOCAL = 'local';
}

const String appTitle = 'Be You Iries';

String get getStorageConfig => 'config';

class ConfigEnvironments {
  static const String _currentEnvironments = Environments.LOCAL;
  static final List<Map<String, String>> _availableEnvironments = [
    {
      'env': Environments.LOCAL,
      'url': 'https://beyou.demo.1.oryxsolutions.qa',
    },
    {
      'env': Environments.DEV,
      'url': 'https://beyou.demo.1.oryxsolutions.qa',
    },
    {
      'env': Environments.QAS,
      'url': 'https://beyou.demo.1.oryxsolutions.qa',
    },
    {
      'env': Environments.PRODUCTION,
      'url': '',
    },
  ];

  static Map<String, String> getEnvironments() {
    return _availableEnvironments.firstWhere(
      (d) => d['env'] == _currentEnvironments,
    );
  }
}
