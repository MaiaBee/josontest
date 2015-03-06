// now we read a fake  "fakeweather.json" file.


void setup() {
  size(300, 300);
getRemoteWeatherJSON();
parseWeatherJSON();
parseWspeedJSON();
parseWdegreesJSON();

}

void draw(){
// we will put out timer here ( 
}


void getRemoteWeatherJSON() {
  JSONObject json_to_read;
  json_to_read = loadJSONObject("fakeweather.json");
  //String query = "http://api.wunderground.com/api/" + API_key + "/conditions/q/CA/San_Francisco.json"; /// get your EPI
  //json_to_read = loadJSONObject(query);
  JSONObject new_observations = json_to_read.getJSONObject("response"); // look in to the data under the "response" in the "fakeweather.json"
  String version_number = new_observations.getString("version"); // print the version numenr listed in the code as a "string" 
  //int numberOfElements = results.length();
  println(version_number);
}




void parseWeatherJSON() {
  JSONObject json_to_read;
  json_to_read = loadJSONObject("fakeweather.json");
  JSONObject new_observations = json_to_read.getJSONObject("current_observation");
  String millibars = new_observations.getString("pressure_mb");
  //int numberOfElements = results.length();
  println(millibars);
   saveJSONObject(json_to_read, "data/new_data.json");
}

//// ???????????????????????????????????
////read the local file and return the atmospheric 
////pressure in a usable way
//float getPressure() {
//  JSONObject json_to_read;
//  json_to_read = loadJSONObject("fakeweather.json");
//  JSONObject new_observations = json_to_read.getJSONObject("current_observation");
//  String millibars = new_observations.getString("pressure_mb");
//  //int numberOfElements = results.length();
//  //println(millibars);
//  return float(millibars);
//}

void parseWspeedJSON() {
  JSONObject json_to_read;
  json_to_read = loadJSONObject("fakeweather.json");
  JSONObject new_observations = json_to_read.getJSONObject("current_observation");
int Wspeed = new_observations.getInt ("wind_kph");
  //int numberOfElements = results.length();
  println(Wspeed);
   saveJSONObject(json_to_read, "data/new_data.json");
}

void parseWdegreesJSON() {
  JSONObject json_to_read;
  json_to_read = loadJSONObject("fakeweather.json");
  JSONObject new_observations = json_to_read.getJSONObject("current_observation");
int Wdegrees = new_observations.getInt ("wind_degrees");
  //int numberOfElements = results.length();
  println(Wdegrees);
   saveJSONObject(json_to_read, "data/new_data.json");
}
