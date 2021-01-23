
import 'package:Elderly/AllScreens/configMaps.dart';
import 'package:Elderly/Assistants/requestAssistant.dart';
import 'package:Elderly/DataHandler/appData.dart';
import 'package:Elderly/models/address.dart';
import 'package:geolocator/geolocator.dart';
import 'package:provider/provider.dart';

class AssistantsMehods{
  static Future<String> searchCoordinateAddress(Position position, context)async{
    String placeAddress ="";
    String st1,st2,st3,st4;
    String url = "https://maps.googleapis.com/maps/api/geocode/json?latlng=${position.latitude},${position.longitude}&key=$mapKey";

    var response = await RequestAssistant.getRequest(url);
    if(response !="failed")
      {
        st1 =response['results'][0]['address_components'][0]["long_name"];
        st2 =response['results'][0]['address_components'][1]["long_name"];
        st3 =response['results'][0]['address_components'][5]["long_name"];
        st4 =response['results'][0]['address_components'][6]["long_name"];
        placeAddress=st1+" ,"+st2+" ,"+st3+" ,"+st4;

        Address userPickupAddress = new Address();
        userPickupAddress.latitude =position.latitude;
        userPickupAddress.longitude = position.longitude;
        userPickupAddress.placeName = placeAddress;
        
        Provider.of<AppData>(context, listen: false).updatePickUplocationAddress(userPickupAddress);
      }
    return placeAddress;
  }
}