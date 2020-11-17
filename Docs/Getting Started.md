* [Creating a Bing Maps key](#CreatingABingMapsKey)

The Bing Maps REST services allow you to query the raw data that powers Bing Maps. The Bing Maps SDK provide easy to use codeunits around these services.

## <a name="CreatingABingMapsKey"></a> Creating a Bing Maps key

To use Bing Maps in your own application you will need a Bing Maps key. All Bing Maps map controls and services use a Bing Maps key for authentication. You can get a Bing Maps key in two ways:

**Through the Bing Maps Portal**

The [Bing Maps Account Center](http://www.bingmapsportal.com/) is the main portal where Bing Maps accounts can be managed and monitored. This is recommended if you are a Microsoft Volume license customer.

-   Go to <a href="https://www.bingmapsportal.com/" class="uri" class="uri">https://www.bingmapsportal.com/</a>

-   Press the sign in button and follow the steps to sign up.

-   Once logged in go to My Account -&gt; My Keys

-   Press the button to create a new key.

-   Add an application name and optionally a URL. It doesn’t matter what this is, it’s for your own information to help remember what the key is for. Set the key type to Basic, and the application type to public website. This will give you 125,000 transactions a year for free.

-   Now that you have a key, it can be used to access all the Bing Maps map controls and services.

**Through the Azure Marketplace**

If you are an Azure user, you can create a Bing Maps key through the [Azure marketplace](https://azure.microsoft.com/en-us/marketplace/partners/bingmaps/mapapis/). Going through the Azure Marketplace provides a bit more flexibility for licensing as you would license Bing Maps from month to month, rather than being locked into a 1 year+ contract. Additionally, smaller volumes of transactions can be purchased through the Azure marketplace than through Volume licensing. However, if your application does any of the following, you will want to create a Bing Maps account through the Bing Maps account center.

-   Your application will generate more than 500,000 transactions a month or you expect it to exceed this amount at some point. The Azure marketplace is limited to licensing this many transactions.

-   Your application will be used for used with real-time GPS positioned assets such as truck or personnel. This requires a Bing Maps account created through the Bing Maps account center.

-   If you want detailed usage reports. Currently the reporting functionality in the Azure marketplace is limited.

To find out about licensing options and learn about Bing Maps controls, please visit [www.microsoft.com/maps](http://www.microsoft.com/maps).