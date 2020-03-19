# PSPetstore.PSPetstore/Api.StoreApi

All URIs are relative to *http://petstore.swagger.io/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-DeleteOrder**](StoreApi.md#Invoke-DeleteOrder) | **DELETE** /store/order/{orderId} | Delete purchase order by ID
[**Get-Inventory**](StoreApi.md#Get-Inventory) | **GET** /store/inventory | Returns pet inventories by status
[**Get-OrderById**](StoreApi.md#Get-OrderById) | **GET** /store/order/{orderId} | Find purchase order by ID
[**Invoke-PlaceOrder**](StoreApi.md#Invoke-PlaceOrder) | **POST** /store/order | Place an order for a pet


<a name="Invoke-DeleteOrder"></a>
# **Invoke-DeleteOrder**
> void Invoke-DeleteOrder<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderId] <String><br>

Delete purchase order by ID

For valid response try integer IDs with value < 1000. Anything above 1000 or nonintegers will generate API errors

### Example
```powershell
Import-Module -Name PSPetstore

$OrderId = "OrderId_example" # String | ID of the order that needs to be deleted (default to null)

# Delete purchase order by ID
try {
    Invoke-DeleteOrder -OrderId $OrderId
} catch {
    Write-Host ($_.ErrorDetails | ConvertFrom-Json)
    Write-Host ($_.Exception.Response.Headers | ConvertTo-Json)
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **OrderId** | **String**| ID of the order that needs to be deleted | [default to null]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-Inventory"></a>
# **Get-Inventory**
> {String, Int32} Get-Inventory<br>

Returns pet inventories by status

Returns a map of status codes to quantities

### Example
```powershell
Import-Module -Name PSPetstore

$Configuration = Get-PSPetstoreConfiguration
# Configure API key authorization: api_key
$Configuration["ApiKey"]["api_key"] = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration["ApiKeyPrefix"]["api_key"] = "Bearer"


# Returns pet inventories by status
try {
    {String, Int32} $Result = Get-Inventory
} catch {
    Write-Host ($_.ErrorDetails | ConvertFrom-Json)
    Write-Host ($_.Exception.Response.Headers | ConvertTo-Json)
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**{String, Int32}**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-OrderById"></a>
# **Get-OrderById**
> Order Get-OrderById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderId] <Int64><br>

Find purchase order by ID

For valid response try integer IDs with value <= 5 or > 10. Other values will generated exceptions

### Example
```powershell
Import-Module -Name PSPetstore

$OrderId = 987 # Int64 | ID of pet that needs to be fetched (default to null)

# Find purchase order by ID
try {
    Order $Result = Get-OrderById -OrderId $OrderId
} catch {
    Write-Host ($_.ErrorDetails | ConvertFrom-Json)
    Write-Host ($_.Exception.Response.Headers | ConvertTo-Json)
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **OrderId** | **Int64**| ID of pet that needs to be fetched | [default to null]

### Return type

[**Order**](Order.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-PlaceOrder"></a>
# **Invoke-PlaceOrder**
> Order Invoke-PlaceOrder<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Place an order for a pet

### Example
```powershell
Import-Module -Name PSPetstore

$Body = (New-Order -Id 123  -PetId 123  -Quantity 123  -ShipDate Get-Date  -Status "Status_example"  -Complete $false) # Order | order placed for purchasing the pet

# Place an order for a pet
try {
    Order $Result = Invoke-PlaceOrder -Body $Body
} catch {
    Write-Host ($_.ErrorDetails | ConvertFrom-Json)
    Write-Host ($_.Exception.Response.Headers | ConvertTo-Json)
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**Order**](Order.md)| order placed for purchasing the pet | 

### Return type

[**Order**](Order.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

