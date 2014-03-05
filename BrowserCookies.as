package {
    import flash.display.Sprite;
    import flash.external.ExternalInterface;
    import flash.net.URLVariables;
    
    public class BrowserCookies extends Sprite
    {
        //this will parse the cookie data
        public var _urlVariables:URLVariables;
        
        /**
         * Return all the cookie values in one object
         * @return URLVariables 
         * 
         */
        public function getUrlVariables() : URLVariables {
            return _urlVariables;
        }
        
        /**
         * Return one cookie value
         * @param value String
         * @return String
         * 
         */
        public function getCookieValue(value:String) : String {
            var returnValue:String = "";
            
            if(_urlVariables && _urlVariables[value]) {
                returnValue = _urlVariables[value];
            }
            
            return returnValue;
        }
        
        /**
         * This will connect to the browser and pull cookies into flash 
         */
        public function BrowserCookies() : void{
            //this will hold the data returned from javascript
            var browserCookieString:String;
            
            //pull the data from javascript
            browserCookieString = ExternalInterface.call("function(){return document.cookie}");
            
            //replace ; with & to make it look like a url
            browserCookieString = browserCookieString.replace(/;\s/g, "&");

            //parse the cookie string into variables. you can now access cookie variables as properties of this object
            if(browserCookieString) {
                _urlVariables = new URLVariables(browserCookieString);
            }
        }
    }
}
