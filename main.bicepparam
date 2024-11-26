using './main.bicep'

param fleetResourceGroup = 'rg-fleet-demo'
param fleetLocation = 'australiaeast'
var vmsize = 'Standard_D2s_v3'

param members = [
  {
    name: 'member-1-canary-azlinux'
    group: 'canary'
    dnsPrefix: 'member1'
    location: 'westcentralus'
    agentCount: 2
    agentVMSize: vmsize
    osType: 'Linux'
    osSku: 'AzureLinux'
  }
  {
    name: 'member-2-canary-win'
    group: 'canary'
    dnsPrefix: 'member2'
    location: 'australiasoutheast'
    agentCount: 2
    agentVMSize: vmsize
    osType: 'Windows'
    osSKU: 'Windows2022'
    windowsProfile: {
      adminUserName: 'nimda'
      adminPassword: readEnvironmentVariable('BICEP_WIN_PWD', 'P@assW0rd!N1md@')
    }
  }
  {
    name: 'member-3-apac-azlinux'
    group: 'apac'
    dnsPrefix: 'member3'
    location: 'australiaeast'
    agentCount: 2
    agentVMSize: vmsize
    osType: 'Linux'
    osSku: 'AzureLinux'
  }
  {
    name: 'member-4-eu-azlinux'
    group: 'europe'
    dnsPrefix: 'member4'
    location: 'northeurope'
    agentCount: 2
    agentVMSize: vmsize
    osType: 'Linux'
    osSKU: 'AzureLinux'
  }
  {
    name: 'member-5-apac-azlinux'
    group: 'apac'
    dnsPrefix: 'member5'
    location: 'southeastasia'
    agentCount: 2
    agentVMSize: vmsize
    osType: 'Linux'
    osSKU: 'Ubuntu'
  }
]
