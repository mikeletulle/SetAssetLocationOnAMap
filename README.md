# SetAssetLocationOnAMap
Simple demo of showing how to set the location of an asset using google maps API

We created a demo to show how they one could allow customers on a DXP site to show their vendor  exactly where they wanted an asset to be placed at their location.
Basically all the code is in one VF page (AssetLocation) and it’s controller. I created a simple LWC (assetLocation) that just pulls that page into an iframe to make it responsive. 
It has a hard coded ID of an asset which you would need to replace.
The VF page as a google maps developer API key that you need to replace as well.
You just need to add two custom number fields to the Asset (Latitude__c and Longitude__c)
 We created a simple flow and a button to launch it on the Asset that brings up the window to set the location.

