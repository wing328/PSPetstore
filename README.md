# PSOpenAPITools - the PowerShell module for the OpenAPI Petstore

This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.

This PowerShell module is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0.0
- SDK version: 0.1.2
- Build package: org.openapitools.codegen.languages.PowerShellClientCodegen

<a name="frameworks-supported"></a>
## Frameworks supported
- PowerShell 6.2 or later

<a name="dependencies"></a>
## Dependencies

<a name="installation"></a>
## Installation


To install from the source, run the following command to build and install the PowerShell module locally:
```powershell
Build.ps1
Import-Module -Name '.\src\PSOpenAPITools' -Verbose
```

To avoid function name collision, one can use `-Prefix`, e.g. `Import-Module -Name '.\src\PSOpenAPITools' -Prefix prefix`

To uninstall the module, simply run:
```powershell
Remove-Module -FullyQualifiedName @{ModuleName = "PSOpenAPITools"; ModuleVersion = "0.1.2"}
```

<a name="tests"></a>
## Tests

To install and run `Pester`, please execute the following commands in the terminal:

```powershell
Install-module -name Pester -force

Invoker-Pester
```

For troubleshooting, please run `$DebugPreference = 'Continue'` to turn on debugging and disable it with `$DebugPreference = 'SilentlyContinue'` when done with the troubleshooting.

## Documentation for API Endpoints

All URIs are relative to *http://petstore.swagger.io/v2*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*PetApi* | [**Add-Pet**](docs/PetApi.md#Add-Pet) | **POST** /pet | Add a new pet to the store
*PetApi* | [**Invoke-DeletePet**](docs/PetApi.md#Invoke-DeletePet) | **DELETE** /pet/{petId} | Deletes a pet
*PetApi* | [**Find-PetsByStatus**](docs/PetApi.md#Find-PetsByStatus) | **GET** /pet/findByStatus | Finds Pets by status
*PetApi* | [**Find-PetsByTags**](docs/PetApi.md#Find-PetsByTags) | **GET** /pet/findByTags | Finds Pets by tags
*PetApi* | [**Get-PetById**](docs/PetApi.md#Get-PetById) | **GET** /pet/{petId} | Find pet by ID
*PetApi* | [**Update-Pet**](docs/PetApi.md#Update-Pet) | **PUT** /pet | Update an existing pet
*PetApi* | [**Update-PetWithForm**](docs/PetApi.md#Update-PetWithForm) | **POST** /pet/{petId} | Updates a pet in the store with form data
*PetApi* | [**Invoke-UploadFile**](docs/PetApi.md#Invoke-UploadFile) | **POST** /pet/{petId}/uploadImage | uploads an image
*StoreApi* | [**Invoke-DeleteOrder**](docs/StoreApi.md#Invoke-DeleteOrder) | **DELETE** /store/order/{orderId} | Delete purchase order by ID
*StoreApi* | [**Get-Inventory**](docs/StoreApi.md#Get-Inventory) | **GET** /store/inventory | Returns pet inventories by status
*StoreApi* | [**Get-OrderById**](docs/StoreApi.md#Get-OrderById) | **GET** /store/order/{orderId} | Find purchase order by ID
*StoreApi* | [**Invoke-PlaceOrder**](docs/StoreApi.md#Invoke-PlaceOrder) | **POST** /store/order | Place an order for a pet
*UserApi* | [**New-User**](docs/UserApi.md#New-User) | **POST** /user | Create user
*UserApi* | [**New-UsersWithArrayInput**](docs/UserApi.md#New-UsersWithArrayInput) | **POST** /user/createWithArray | Creates list of users with given input array
*UserApi* | [**New-UsersWithListInput**](docs/UserApi.md#New-UsersWithListInput) | **POST** /user/createWithList | Creates list of users with given input array
*UserApi* | [**Invoke-DeleteUser**](docs/UserApi.md#Invoke-DeleteUser) | **DELETE** /user/{username} | Delete user
*UserApi* | [**Get-UserByName**](docs/UserApi.md#Get-UserByName) | **GET** /user/{username} | Get user by user name
*UserApi* | [**Invoke-LoginUser**](docs/UserApi.md#Invoke-LoginUser) | **GET** /user/login | Logs user into the system
*UserApi* | [**Invoke-LogoutUser**](docs/UserApi.md#Invoke-LogoutUser) | **GET** /user/logout | Logs out current logged in user session
*UserApi* | [**Update-User**](docs/UserApi.md#Update-User) | **PUT** /user/{username} | Updated user


## Documentation for Models

 - [PSOpenAPITools/Model.ApiResponse](docs/ApiResponse.md)
 - [PSOpenAPITools/Model.Category](docs/Category.md)
 - [PSOpenAPITools/Model.InlineObject](docs/InlineObject.md)
 - [PSOpenAPITools/Model.InlineObject1](docs/InlineObject1.md)
 - [PSOpenAPITools/Model.Order](docs/Order.md)
 - [PSOpenAPITools/Model.Pet](docs/Pet.md)
 - [PSOpenAPITools/Model.Tag](docs/Tag.md)
 - [PSOpenAPITools/Model.User](docs/User.md)


## Documentation for Authorization


### api_key

- **Type**: API key

- **API key parameter name**: api_key
- **Location**: HTTP header


### petstore_auth


- **Type**: OAuth
- **Flow**: implicit
- **Authorization URL**: http://petstore.swagger.io/api/oauth/dialog
- **Scopes**: 
  - write:pets: modify pets in your account
  - read:pets: read your pets

