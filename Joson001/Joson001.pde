JSONObject json;

void setup() {
  size(300, 300);
 //this is the json file we are working with 
// {
  //"isFruit": true, // this is a Boolean: Datatype for the Boolean values true and false condition. It is not a string becasue there is no quotes
  //"weight": 1.1299999952316284, // thi is a Float :
  //"count": 0, // this is a Interger: 
  //"name": "apple" // This is a string:
//}
joson=loadJoadJSNObject("data.json");
Boolean isFruit = json.getBoolean ("isFruit");
float waight = json.getFloat ("waight");
int Count = json.getInt ("Count");
String name = json.getString ("name"); 
}

void draw(){

 // put the timer here to check wather 
}

