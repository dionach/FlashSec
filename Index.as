package
{
    import flash.display.Sprite;
    import flash.text.TextField;
	import flash.utils.describeType;
    
    public class Index extends Sprite{
        public function Index(){
            //this will pull all the cookies out of the browser
            var urlVars:BrowserCookies = new BrowserCookies;
			var textField:TextField = new TextField;
            
            textField.width = 800;
            textField.height = 200;
			
			textField.text = "Cookies:\n" ;
											
			for (var i:String in urlVars._urlVariables)
			{
				textField.text = textField.text + i + ":" + urlVars.getCookieValue(i) + "\n" ;
			}
			//textField.text = textField.text + urlVars.getUrlVariables() + "\n" ;
			           
            addChild(textField);
        }
    }
}
