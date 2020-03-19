# PSPetstore.PSPetstore/Api.PetApi

All URIs are relative to *http://petstore.swagger.io/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-Pet**](PetApi.md#Add-Pet) | **POST** /pet | Add a new pet to the store
[**Invoke-DeletePet**](PetApi.md#Invoke-DeletePet) | **DELETE** /pet/{petId} | Deletes a pet
[**Find-PetsByStatus**](PetApi.md#Find-PetsByStatus) | **GET** /pet/findByStatus | Finds Pets by status
[**Find-PetsByTags**](PetApi.md#Find-PetsByTags) | **GET** /pet/findByTags | Finds Pets by tags
[**Get-PetById**](PetApi.md#Get-PetById) | **GET** /pet/{petId} | Find pet by ID
[**Update-Pet**](PetApi.md#Update-Pet) | **PUT** /pet | Update an existing pet
[**Update-PetWithForm**](PetApi.md#Update-PetWithForm) | **POST** /pet/{petId} | Updates a pet in the store with form data
[**Invoke-UploadFile**](PetApi.md#Invoke-UploadFile) | **POST** /pet/{petId}/uploadImage | uploads an image


<a name="Add-Pet"></a>
# **Add-Pet**
> void Add-Pet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Add a new pet to the store

### Example
```powershell
Import-Module -Name PSPetstore

$Configuration = Get-PSPetstoreConfiguration
# Configure OAuth2 access token for authorization: petstore_auth
$Configuration["AccessToken"] = "YOUR_ACCESS_TOKEN";

$Body = (New-Pet -Id 123  -Category (New-Category -Id 123  -Name "Name_example")  -Name "Name_example"  -PhotoUrls @("PhotoUrls_example")  -Tags @((New-Tag -Id 123  -Name "Name_example"))  -Status "Status_example") # Pet | Pet object that needs to be added to the store

# Add a new pet to the store
try {
    Add-Pet -Body $Body
} catch {
    Write-Host ($_.ErrorDetails | ConvertFrom-Json)
    Write-Host ($_.Exception.Response.Headers | ConvertTo-Json)
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**Pet**](Pet.md)| Pet object that needs to be added to the store | 

### Return type

void (empty response body)

### Authorization

[petstore_auth](../README.md#petstore_auth)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeletePet"></a>
# **Invoke-DeletePet**
> void Invoke-DeletePet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PetId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApiKey] <String><br>

Deletes a pet

### Example
```powershell
Import-Module -Name PSPetstore

$Configuration = Get-PSPetstoreConfiguration
# Configure OAuth2 access token for authorization: petstore_auth
$Configuration["AccessToken"] = "YOUR_ACCESS_TOKEN";

$PetId = 987 # Int64 | Pet id to delete (default to null)
$ApiKey = "ApiKey_example" # String |  (optional) (default to null)

# Deletes a pet
try {
    Invoke-DeletePet -PetId $PetId -ApiKey $ApiKey
} catch {
    Write-Host ($_.ErrorDetails | ConvertFrom-Json)
    Write-Host ($_.Exception.Response.Headers | ConvertTo-Json)
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PetId** | **Int64**| Pet id to delete | [default to null]
 **ApiKey** | **String**|  | [optional] [default to null]

### Return type

void (empty response body)

### Authorization

[petstore_auth](../README.md#petstore_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Find-PetsByStatus"></a>
# **Find-PetsByStatus**
> Pet[] Find-PetsByStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Status] <String[]><br>

Finds Pets by status

Multiple status values can be provided with comma separated strings

### Example
```powershell
Import-Module -Name PSPetstore

$Configuration = Get-PSPetstoreConfiguration
# Configure OAuth2 access token for authorization: petstore_auth
$Configuration["AccessToken"] = "YOUR_ACCESS_TOKEN";

$Status = @("Status_example") # String[] | Status values that need to be considered for filter (default to null)

# Finds Pets by status
try {
    Pet[] $Result = Find-PetsByStatus -Status $Status
} catch {
    Write-Host ($_.ErrorDetails | ConvertFrom-Json)
    Write-Host ($_.Exception.Response.Headers | ConvertTo-Json)
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Status** | [**String[]**](String.md)| Status values that need to be considered for filter | [default to null]

### Return type

[**Pet[]**](Pet.md)

### Authorization

[petstore_auth](../README.md#petstore_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Find-PetsByTags"></a>
# **Find-PetsByTags**
> Pet[] Find-PetsByTags<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Tags] <String[]><br>

Finds Pets by tags

Multiple tags can be provided with comma separated strings. Use tag1, tag2, tag3 for testing.

### Example
```powershell
Import-Module -Name PSPetstore

$Configuration = Get-PSPetstoreConfiguration
# Configure OAuth2 access token for authorization: petstore_auth
$Configuration["AccessToken"] = "YOUR_ACCESS_TOKEN";

$Tags = @("Inner_example") # String[] | Tags to filter by (default to null)

# Finds Pets by tags
try {
    Pet[] $Result = Find-PetsByTags -Tags $Tags
} catch {
    Write-Host ($_.ErrorDetails | ConvertFrom-Json)
    Write-Host ($_.Exception.Response.Headers | ConvertTo-Json)
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Tags** | [**String[]**](String.md)| Tags to filter by | [default to null]

### Return type

[**Pet[]**](Pet.md)

### Authorization

[petstore_auth](../README.md#petstore_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-PetById"></a>
# **Get-PetById**
> Pet Get-PetById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PetId] <Int64><br>

Find pet by ID

Returns a single pet

### Example
```powershell
Import-Module -Name PSPetstore

$Configuration = Get-PSPetstoreConfiguration
# Configure API key authorization: api_key
$Configuration["ApiKey"]["api_key"] = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration["ApiKeyPrefix"]["api_key"] = "Bearer"

$PetId = 987 # Int64 | ID of pet to return (default to null)

# Find pet by ID
try {
    Pet $Result = Get-PetById -PetId $PetId
} catch {
    Write-Host ($_.ErrorDetails | ConvertFrom-Json)
    Write-Host ($_.Exception.Response.Headers | ConvertTo-Json)
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PetId** | **Int64**| ID of pet to return | [default to null]

### Return type

[**Pet**](Pet.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-Pet"></a>
# **Update-Pet**
> void Update-Pet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Update an existing pet

### Example
```powershell
Import-Module -Name PSPetstore

$Configuration = Get-PSPetstoreConfiguration
# Configure OAuth2 access token for authorization: petstore_auth
$Configuration["AccessToken"] = "YOUR_ACCESS_TOKEN";

$Body = (New-Pet -Id 123  -Category (New-Category -Id 123  -Name "Name_example")  -Name "Name_example"  -PhotoUrls @("PhotoUrls_example")  -Tags @((New-Tag -Id 123  -Name "Name_example"))  -Status "Status_example") # Pet | Pet object that needs to be added to the store

# Update an existing pet
try {
    Update-Pet -Body $Body
} catch {
    Write-Host ($_.ErrorDetails | ConvertFrom-Json)
    Write-Host ($_.Exception.Response.Headers | ConvertTo-Json)
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**Pet**](Pet.md)| Pet object that needs to be added to the store | 

### Return type

void (empty response body)

### Authorization

[petstore_auth](../README.md#petstore_auth)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-PetWithForm"></a>
# **Update-PetWithForm**
> void Update-PetWithForm<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PetId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Status] <String><br>

Updates a pet in the store with form data

### Example
```powershell
Import-Module -Name PSPetstore

$Configuration = Get-PSPetstoreConfiguration
# Configure OAuth2 access token for authorization: petstore_auth
$Configuration["AccessToken"] = "YOUR_ACCESS_TOKEN";

$PetId = 987 # Int64 | ID of pet that needs to be updated (default to null)
$Name = "Name_example" # String | Updated name of the pet (optional) (default to null)
$Status = "Status_example" # String | Updated status of the pet (optional) (default to null)

# Updates a pet in the store with form data
try {
    Update-PetWithForm -PetId $PetId -Name $Name -Status $Status
} catch {
    Write-Host ($_.ErrorDetails | ConvertFrom-Json)
    Write-Host ($_.Exception.Response.Headers | ConvertTo-Json)
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PetId** | **Int64**| ID of pet that needs to be updated | [default to null]
 **Name** | **String**| Updated name of the pet | [optional] [default to null]
 **Status** | **String**| Updated status of the pet | [optional] [default to null]

### Return type

void (empty response body)

### Authorization

[petstore_auth](../README.md#petstore_auth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UploadFile"></a>
# **Invoke-UploadFile**
> ApiResponse Invoke-UploadFile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PetId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AdditionalMetadata] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>

uploads an image

### Example
```powershell
Import-Module -Name PSPetstore

$Configuration = Get-PSPetstoreConfiguration
# Configure OAuth2 access token for authorization: petstore_auth
$Configuration["AccessToken"] = "YOUR_ACCESS_TOKEN";

$PetId = 987 # Int64 | ID of pet to update (default to null)
$AdditionalMetadata = "AdditionalMetadata_example" # String | Additional data to pass to server (optional) (default to null)
$File = 987 # System.IO.FileInfo | file to upload (optional) (default to null)

# uploads an image
try {
    ApiResponse $Result = Invoke-UploadFile -PetId $PetId -AdditionalMetadata $AdditionalMetadata -File $File
} catch {
    Write-Host ($_.ErrorDetails | ConvertFrom-Json)
    Write-Host ($_.Exception.Response.Headers | ConvertTo-Json)
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PetId** | **Int64**| ID of pet to update | [default to null]
 **AdditionalMetadata** | **String**| Additional data to pass to server | [optional] [default to null]
 **File** | **System.IO.FileInfo****System.IO.FileInfo**| file to upload | [optional] [default to null]

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

[petstore_auth](../README.md#petstore_auth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

