// Service class
class ApiService {
  void fetchData() {
    print('Fetching data from API');
  }
}

// Consumer class
class DataManager {
  final ApiService apiService;

  // Dependency is injected through the constructor
  DataManager(this.apiService);

  void loadData() {
    apiService.fetchData();
  }
}

void main() {
  // Create an instance of ApiService
  var apiService = ApiService();

  // Inject the ApiService instance into DataManager
  var dataManager = DataManager(apiService);

  // Use DataManager to load data
  dataManager.loadData();
}
