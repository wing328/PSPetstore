#
# OpenAPI Petstore
# This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.
# Version: 1.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

function Get-FunctionsToExport {
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory = $true, ValueFromPipelineByPropertyName = $true)]
        [ValidateNotNullOrEmpty()]
        [Alias('FullName')]
        $Path
    )

    Process {
        $Token = $null
        $ParserErr = $null

        $Ast = [System.Management.Automation.Language.Parser]::ParseFile(
            $Path,
            [ref]$Token,
            [ref]$ParserErr
        )

        if ($ParserErr) {
            throw $ParserErr
        } else {
            foreach ($name in 'Begin', 'Process', 'End') {
	            foreach ($Statement in $Ast."${name}Block".Statements) {
		            if (
                        [String]::IsNullOrWhiteSpace($Statement.Name) -or
                        $Statement.Extent.ToString() -notmatch
                        ('function\W+{0}' -f $Statement.Name)
                    ) {
			            continue
		            }

		            $Statement.Name
	            }
            }
        }
    }
}

$ScriptDir = Split-Path $script:MyInvocation.MyCommand.Path
$FunctionPath = 'Api', 'Model', 'Client' | ForEach-Object {Join-Path "$ScriptDir\src\PSOpenAPITools\" $_}

$Manifest = @{
    Path = "$ScriptDir\src\PSOpenAPITools\PSOpenAPITools.psd1"

    Author = 'OpenAPI Generator Team'
    CompanyName = 'openapitools.org'
    Description = 'PSOpenAPITools - the PowerShell module for OpenAPI Petstore'

    ModuleVersion = '0.1.6'

    RootModule = 'PSOpenAPITools.psm1'
    Guid = '{58C735DF-521D-404F-9133-703BC8A60660}' # Has to be static, otherwise each new build will be considered different module

    PowerShellVersion = '5.0'

    FunctionsToExport = $FunctionPath | Get-ChildItem -Filter *.ps1 | Get-FunctionsToExport

    VariablesToExport = @()
    AliasesToExport = @()
    CmdletsToExport = @()

}

New-ModuleManifest @Manifest
