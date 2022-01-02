#
# Module manifest for module 'IntunePSToolbox'
#
# Generated by: Jan Rezab <honza@rezab.eu>
#
# Generated on: 02.01.2022
#

@{

# Script module or binary module file associated with this manifest.
RootModule = 'IntunePSToolbox.psm1'

# Version number of this module.
ModuleVersion = '0.0.2.1'

# Supported PSEditions
# CompatiblePSEditions = @()

# ID used to uniquely identify this module
GUID = '6de69640-6841-4cfd-ab48-7b8249c77519'

# Author of this module
Author = 'Jan Rezab <honza@rezab.eu>'

# Company or vendor of this module
CompanyName = ''

# Copyright statement for this module
Copyright = '(c) 2021 Jan Rezab <honza@rezab.eu>. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Intune Powershell Toolbox is set of functions to manage Microsoft Intune via Graph API.'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '5.0'

# Name of the Windows PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# DotNetFrameworkVersion = ''

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
RequiredModules = @(@{ModuleName = 'MSAL.PS'; GUID = 'c765c957-c730-4520-9c36-6a522e35d60b'; ModuleVersion = '4.36.1.2'; }, 
               @{ModuleName = 'AzureAD'; GUID = 'd60c0004-962d-4dfb-8d28-5707572ffd00'; ModuleVersion = '2.0.2.130'; })

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = 'Connect-IPSTAsApplication', 'Connect-IPSTAsDelegated', 
               'Get-IPST_Applications', 
               'Get-IPST_deviceAppManagement_androidManagedAppProtections', 
               'Get-IPST_deviceAppManagement_iosManagedAppProtections', 
               'Get-IPST_deviceAppManagement_managedAppPolicies', 
               'Get-IPST_deviceAppManagement_managedAppRegistrations', 
               'Get-IPST_deviceAppManagement_mdmWindowsInformationProtectionPolicies', 
               'Get-IPST_deviceAppManagement_mobileAppConfigurations', 
               'Get-IPST_deviceAppManagement_mobileApps', 
               'Get-IPST_deviceAppManagement_targetedManagedAppConfigurations', 
               'Get-IPST_deviceAppManagement_windowsInformationProtectionPolicies', 
               'Get-IPST_deviceManagement_comanagedDevices', 
               'Get-IPST_deviceManagement_deviceCompliancePolicies', 
               'Get-IPST_deviceManagement_deviceConfigurations', 
               'Get-IPST_deviceManagement_deviceEnrollmentConfigurations', 
               'Get-IPST_deviceManagement_intents', 
               'Get-IPST_deviceManagement_managedDevices', 
               'Get-IPST_deviceManagement_roleAssignments', 
               'Get-IPST_deviceManagement_roleDefinitions', 
               'Get-IPST_deviceManagement_roleScopeTags', 
               'Get-IPST_deviceManagement_templates', 'Get-IPST_DirectoryObjects', 
               'Get-IPST_Domains', 'Get-IPST_Groups', 
               'Get-IPST_identityGovernance_termsOfUse_agreements', 
               'Get-IPST_identity_conditionalAccess_namedLocations', 
               'Get-IPST_identity_conditionalAccess_policies', 
               'Get-IPST_organization', 'New-IPSTAADApp', 
               'New-IPST_deviceManagement_deviceCompliancePolicies'

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @()

# Variables to export from this module
VariablesToExport = '*'

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = 'Connect-Intune'

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = 'Intune','Graph','PowerShell'

        # A URL to the license for this module.
        LicenseUri = 'https://github.com/rezabj/IntunePSToolbox/blob/main/LICENSE'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/rezabj/IntunePSToolbox'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = 'https://github.com/rezabj/IntunePSToolbox/releases'

        # Prerelease string of this module
        # Prerelease = ''

        # Flag to indicate whether the module requires explicit user acceptance for install/update/save
        # RequireLicenseAcceptance = $false

        # External dependent modules of this module
        # ExternalModuleDependencies = @()

    } # End of PSData hashtable

 } # End of PrivateData hashtable

# HelpInfo URI of this module
HelpInfoURI = 'https://github.com/rezabj/IntunePSToolbox/Docs'

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}

