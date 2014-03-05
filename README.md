FlashSec
========

##Introduction

This repository aims to compile scripts and tools that can be used during penetration tests to assess the security of different flash related scenarios.

##Contents of the project

- Crossdomain.mxml: 
Script written in FLEX that exploits permissive _crossdomain flash policy files_ to make arbitrary requests to the target website.
To compile just download the FLEX SDK (available at http://www.adobe.com/devnet/flex/flex-sdk-download.html) and run _mxmlc_:

```
$ ./mxmlc Crossdomain.mxml
Loading configuration file C:\Flex\frameworks\flex-config.xml 
C:\Flex\bin\Crossdomain.swf (535802 bytes)
```
The script expects a *url* parameter pointing to the vulnerable site, i.e.: http://example.com/Crossdomain.swf?url=http://victim.com/protectedResource

- BrowserCookies.as and Index.as:
Script written in Action Script to _read the cookies_ of the website where the file is hosted at using flash.
To compile just download the FLEX SDK (available at http://www.adobe.com/devnet/flex/flex-sdk-download.html) and run _mxmlc_ (make sure both files are in the same folder):

```
$ ./mxmlc Index.as
Loading configuration file C:\Flex\frameworks\flex-config.xml
C:\Flex\bin\Index.swf (1097 bytes)
