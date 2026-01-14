@allowed(['dev', 'prod'])
param environment string

targetScope = 'resourceGroup'

var location = 'centralus'
var username = 'aallshouse'
var appNameWithEnv = 'workshop-dnazghbicep-${username}-${environment}'

module appService 'appservice.bicep' = {
    name: 'appservice'
    params: {
        appName: appNameWithEnv
        location: location
        environment: environment
    }
}