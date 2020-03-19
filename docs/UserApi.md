# PSPetstore.PSPetstore/Api.UserApi

All URIs are relative to *http://petstore.swagger.io/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-CreateUser**](UserApi.md#Invoke-CreateUser) | **POST** /user | Create user
[**Invoke-CreateUsersWithArrayInput**](UserApi.md#Invoke-CreateUsersWithArrayInput) | **POST** /user/createWithArray | Creates list of users with given input array
[**Invoke-CreateUsersWithListInput**](UserApi.md#Invoke-CreateUsersWithListInput) | **POST** /user/createWithList | Creates list of users with given input array
[**Invoke-DeleteUser**](UserApi.md#Invoke-DeleteUser) | **DELETE** /user/{username} | Delete user
[**Get-UserByName**](UserApi.md#Get-UserByName) | **GET** /user/{username} | Get user by user name
[**Invoke-LoginUser**](UserApi.md#Invoke-LoginUser) | **GET** /user/login | Logs user into the system
[**Invoke-LogoutUser**](UserApi.md#Invoke-LogoutUser) | **GET** /user/logout | Logs out current logged in user session
[**Update-User**](UserApi.md#Update-User) | **PUT** /user/{username} | Updated user


<a name="Invoke-CreateUser"></a>
# **Invoke-CreateUser**
> void Invoke-CreateUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Create user

This can only be done by the logged in user.

### Example
```powershell
Import-Module -Name PSPetstore

$Body = (New-User -Id 123  -Username "Username_example"  -FirstName "FirstName_example"  -LastName "LastName_example"  -Email "Email_example"  -Password "Password_example"  -Phone "Phone_example"  -UserStatus 123) # User | Created user object

# Create user
try {
    Invoke-CreateUser -Body $Body
} catch {
    Write-Host ($_.ErrorDetails | ConvertFrom-Json)
    Write-Host ($_.Exception.Response.Headers | ConvertTo-Json)
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**User**](User.md)| Created user object | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-CreateUsersWithArrayInput"></a>
# **Invoke-CreateUsersWithArrayInput**
> void Invoke-CreateUsersWithArrayInput<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject[]><br>

Creates list of users with given input array

### Example
```powershell
Import-Module -Name PSPetstore

$Body = @((New-User -Id 123  -Username "Username_example"  -FirstName "FirstName_example"  -LastName "LastName_example"  -Email "Email_example"  -Password "Password_example"  -Phone "Phone_example"  -UserStatus 123)) # User[] | List of user object

# Creates list of users with given input array
try {
    Invoke-CreateUsersWithArrayInput -Body $Body
} catch {
    Write-Host ($_.ErrorDetails | ConvertFrom-Json)
    Write-Host ($_.Exception.Response.Headers | ConvertTo-Json)
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**User[]**](User.md)| List of user object | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-CreateUsersWithListInput"></a>
# **Invoke-CreateUsersWithListInput**
> void Invoke-CreateUsersWithListInput<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject[]><br>

Creates list of users with given input array

### Example
```powershell
Import-Module -Name PSPetstore

$Body = @((New-User -Id 123  -Username "Username_example"  -FirstName "FirstName_example"  -LastName "LastName_example"  -Email "Email_example"  -Password "Password_example"  -Phone "Phone_example"  -UserStatus 123)) # User[] | List of user object

# Creates list of users with given input array
try {
    Invoke-CreateUsersWithListInput -Body $Body
} catch {
    Write-Host ($_.ErrorDetails | ConvertFrom-Json)
    Write-Host ($_.Exception.Response.Headers | ConvertTo-Json)
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**User[]**](User.md)| List of user object | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteUser"></a>
# **Invoke-DeleteUser**
> void Invoke-DeleteUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Username] <String><br>

Delete user

This can only be done by the logged in user.

### Example
```powershell
Import-Module -Name PSPetstore

$Username = "Username_example" # String | The name that needs to be deleted (default to null)

# Delete user
try {
    Invoke-DeleteUser -Username $Username
} catch {
    Write-Host ($_.ErrorDetails | ConvertFrom-Json)
    Write-Host ($_.Exception.Response.Headers | ConvertTo-Json)
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Username** | **String**| The name that needs to be deleted | [default to null]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-UserByName"></a>
# **Get-UserByName**
> User Get-UserByName<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Username] <String><br>

Get user by user name

### Example
```powershell
Import-Module -Name PSPetstore

$Username = "Username_example" # String | The name that needs to be fetched. Use user1 for testing. (default to null)

# Get user by user name
try {
    User $Result = Get-UserByName -Username $Username
} catch {
    Write-Host ($_.ErrorDetails | ConvertFrom-Json)
    Write-Host ($_.Exception.Response.Headers | ConvertTo-Json)
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Username** | **String**| The name that needs to be fetched. Use user1 for testing. | [default to null]

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-LoginUser"></a>
# **Invoke-LoginUser**
> String Invoke-LoginUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Username] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Password] <String><br>

Logs user into the system

### Example
```powershell
Import-Module -Name PSPetstore

$Username = "Username_example" # String | The user name for login (default to null)
$Password = "Password_example" # String | The password for login in clear text (default to null)

# Logs user into the system
try {
    String $Result = Invoke-LoginUser -Username $Username -Password $Password
} catch {
    Write-Host ($_.ErrorDetails | ConvertFrom-Json)
    Write-Host ($_.Exception.Response.Headers | ConvertTo-Json)
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Username** | **String**| The user name for login | [default to null]
 **Password** | **String**| The password for login in clear text | [default to null]

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-LogoutUser"></a>
# **Invoke-LogoutUser**
> void Invoke-LogoutUser<br>

Logs out current logged in user session

### Example
```powershell
Import-Module -Name PSPetstore


# Logs out current logged in user session
try {
    Invoke-LogoutUser
} catch {
    Write-Host ($_.ErrorDetails | ConvertFrom-Json)
    Write-Host ($_.Exception.Response.Headers | ConvertTo-Json)
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-User"></a>
# **Update-User**
> void Update-User<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Username] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Updated user

This can only be done by the logged in user.

### Example
```powershell
Import-Module -Name PSPetstore

$Username = "Username_example" # String | name that need to be deleted (default to null)
$Body = (New-User -Id 123  -Username "Username_example"  -FirstName "FirstName_example"  -LastName "LastName_example"  -Email "Email_example"  -Password "Password_example"  -Phone "Phone_example"  -UserStatus 123) # User | Updated user object

# Updated user
try {
    Update-User -Username $Username -Body $Body
} catch {
    Write-Host ($_.ErrorDetails | ConvertFrom-Json)
    Write-Host ($_.Exception.Response.Headers | ConvertTo-Json)
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Username** | **String**| name that need to be deleted | [default to null]
 **Body** | [**User**](User.md)| Updated user object | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

