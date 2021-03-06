@{
# Script module or binary module file associated with this manifest.
RootModule = 'AxMonitor.psm1'

# Version number of this module.
ModuleVersion = '1.0'

# Supported PSEditions
# CompatiblePSEditions = @()

# ID used to uniquely identify this module
GUID = '517a3d80-2333-4d01-b7fa-0790402e20b1'

# Author of this module
Author = 'Omar Bertò'

# Company or vendor of this module
CompanyName = 'Wuerth Phoenix Srl'

# Copyright statement for this module
Copyright = '(c) Wuerth Phoenix Srl. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Monitoring for AX Infrastructure'

# Minimum version of the Windows PowerShell engine required by this module
# PowerShellVersion = ''

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
# NTFSSecurity -> se posso evito....
# RequiredModules = @()

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# potrei mettere l'auto-update
ScriptsToProcess = @('AxMonitor.Init.ps1')

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
NestedModules = @('AxMonitor.dll')

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = @(
    'WP-AxMonitor',
    'WP-Test',
    'WP-GetSettingsProperty',
    'WP-GetServiceDirectory',
    'WP-LoadSettings',
    'WP-LoadDatabaseSettings',

    'WP-tcpTest',
    #Query db, user deve avere accesso in lettura al db
    'WP-OleDbCheck',
    'WP-OleDbQuery',
    'WP-GetLongTransactions',
    'WP-GetHeadBlockers',
    'WP-AxDBCheck_public',
    'WP-AxDBCheck_dbdatareader',
    'WP-AxBusinessDBCheck_public',
    'WP-AxBusinessDBCheck_dbdatareader',
    'WP-AxModelDBCheck_public',
    'WP-AxModelDBCheck_dbdatareader',
    'WP-AxRSDBCheck_public',
    'WP-AxRSDBCheck_dbdatareader',

    'WP-AxBatchServersConfiguration',
    'WP-isBatchServer',
    'WP-activeUserSession',
    'WP-batchJobsWaitingStatistics',
    #connect to AOS with .net BC and perform operations...
    'WP-GetAOSConfiguration',
    'WP-netBCConnect',
    'WP-netBCDisconnect',
    'WP-netBCDIXFCheck',
    #net.tcp
    #il seguente é un check sul metadata svc e poi la connessione da AOS a DB(va eseguito da AX user)
    'WP-AxMetadataService_NetTcpCheck',#ax user
    'WP-AxManageabilityServiceGroup_NetTcpCheck',#ax admin
    'WP-AxQueryService_NetTcpCheck',
    #printers, posso fare lista
    'WP-sharedPrintersCheck',
    'WP-sharedPrintersList', 
    #filesharing
    'WP-testPath',
    'WP-testSharedPath',
    'WP-testPathAccess',
    'WP-testUserPathsAccess',
    'WP-testAllUserPathsAccess',
    'WP-testSharingConfig',#this need config file on the system
    #SSRS
    'WP-SSRSwebCheck',
    'WP-SSRSsvcCheck',#di base posso vedere se funziona, poi magari fare un check sull'operazione
    'WP-SSRSreportRender',#anche qui si puó decidere di vedere che l'operazione da un risultato e poi magari validarlo per quasto suggerisco funziona ad hoc
    'WP-SSRSreportRenderAndSave',
    #DIXF
    'WP-DIXFsvcCheck', #al momento non ho fatto nulla, serve avere permessi
    #HelpServer
    'WP-HelpSrvWebCheck',
    'WP-HelpSrvSearchCheck',
    'WP-HelpServiceCheck',
    #di base posso usare il check sul title
    'WP-WebPageCheck',
    'WP-WebSiteCheck',
    'WP-WebSitesCheck',
    #client
    'WP-getClientConfigurationModel',
    'WP-testClienttoAOSconnection'
)

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @()

# Variables to export from this module
VariablesToExport = '*'

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = @()

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
        # Tags = @()

        # A URL to the license for this module.
        # LicenseUri = ''

        # A URL to the main website for this project.
        # ProjectUri = ''

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        # ReleaseNotes = ''

    } # End of PSData hashtable

    AxSrvCfg = @{
        ServerRootKey = 'HKLM:\SYSTEM\CurrentControlSet\Services\Dynamics Server\6.0'
    }
    NSClientSVCkey = 'HKLM:\SYSTEM\CurrentControlSet\Services\nscp'
    NSClientSVCexe = 'nscp.exe'
    SettingsFolder = 'AxMonitor'

} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}

