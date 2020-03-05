Describe  'ACI Demo Check' {
    Context 'Checking ACI demo Container' {
        It 'Container should respond on port 80' {
            $resp = Invoke-WebRequest -Uri ("http://aci-demo-{0}.{1}.azurecontainer.io" -f $(Get-Date -f yyyyMMdd), $env:location)
            $resp.StatusCode | Should -Be 200
        }
    }
}
