class ApiUrls {
  static const String baseUrl = "https://api.muhasabah.in/api";
 
  static const String directusBaseUrl = "https://directus.d4dx.co";

  

  static String getForceUpdate() {
    return '$directusBaseUrl/items/janaza_guide_force_update';
  }

 
}
