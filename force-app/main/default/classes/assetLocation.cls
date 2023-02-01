public class assetLocation {
    public Double lat {get;set;}
    public Double lng {get;set;}
    public String Street {get;set;}
    public String City {get;set;}
    public String State {get;set;}
    public String Zip {get;set;}

    public assetLocation(ApexPages.StandardController stdController) {
        Asset ast =  [Select Id, AccountId from Asset where id=:stdController.getId() limit 1];
        Account acct = [Select Id,Name, BillingStreet, BillingCity, BillingState, BillingPostalCode,
        BillingCountry, BillingLatitude, BillingLongitude from Account where id=:ast.AccountId limit 1];
        lat = acct.BillingLatitude;
        lng = acct.BillingLongitude;

    }
    @RemoteAction
    public static Boolean saveLocation(String id, Decimal lat,Decimal lng){
        Asset a = [Select Id, Name, Asset_Location__c from Asset where Id=:id limit 1];
        a.Asset_Location__latitude__s = lat;
        a.Asset_Location__longitude__s = lng;
        update a;

        String nwid = Network.getNetworkId();
        if (String.isBlank(nwid)) {
            return false;
        }else{
            return true;
        }
    }
}