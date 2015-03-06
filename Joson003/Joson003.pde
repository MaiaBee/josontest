// here we write new data on the Joson file 

JSONObject json;

void setup() {
  size(300, 300);
 //this is the json file we are working with 
// {
  //"isFruit": true, // this is a Boolean. 
  //Datatype for the Boolean values true and false condition. It is not a string becasue there is no quotes 
  //(https://processing.org/reference/boolean.html)
 
  //"weight": 1.1299999952316284, // thi is a Float.
  //   Data type for floating-point numbers, e.g. numbers that have a decimal point.(https://processing.org/reference/float.html).
  //"count": 0, // this is a Interger: 
  //   Datatype for integers, numbers without a decimal point. (https://processing.org/reference/int.html)
  //"name": "apple" // This is a string:   A string is a sequence of characters (https://processing.org/reference/String.html)
//}
loadFruitJSON(); // funcion at the bottom of the page
//if you put it on th voind suet  up it will read it when the program starts
createFruitJSON();
}

void draw(){
//loadFruitJSON(); // funcion at the bottom of the page 
//if you put it in void drow it will read it constatelly.
 // put the timer here to check wather 
}


void loadFruitJSON() {
  json = loadJSONObject("data.json");
Boolean isFruit = json.getBoolean ("isFruit");
float weight = json.getFloat ("weight");
int count = json.getInt ("count");
String name = json.getString ("name"); 
 println(isFruit + ", " + weight + ", " + count + "," + name);
}

void createFruitJSON() {
  JSONObject json_to_write;
  json_to_write = new JSONObject();
  json_to_write.setInt("count", 3);
  json_to_write.setString("name", "banana");
  json_to_write.setFloat("weight", 2.13);
  json_to_write.setBoolean("isFruit", true);

  saveJSONObject(json_to_write, "data/data.json");
}


