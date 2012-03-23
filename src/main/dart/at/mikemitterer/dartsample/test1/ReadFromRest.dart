#library("readFromRest");

#import("dart:html");

// Weitere Infos zur Lib:
//  http://dartwatch.com/index.php/2011/10/tutorial-dart-libraries-organizing-your-code/
class ReadFromRest {
  final String _nocheintext;
  
  ReadFromRest(String this._nocheintext) {
    
  }
  
  void run() {
    _setEventHandlers();
    _write(_nocheintext);
  }
  
  //-----------------------------------------------------------------------------------------------
  // private
  //-----------------------------------------------------------------------------------------------
  void _setEventHandlers() {
    // Sample: http://mkaz.com/webdev/dart/darttut1.html
    document.query("#clicker").on.click.add((Event event) {
      String message = document.query('#status').innerHTML;
      message = message + ".";
      _write(message);
    });  
  }
  
  void _write(String message) {
    // the HTML library defines a global "document" variable
    document.query('#status').innerHTML = message;
  }  
}
