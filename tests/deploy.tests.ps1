Describe  'ACI Demo Check' {
    Context 'Checking ACI demo Container' {
        $strUri = ("http://aci-demo-{0}.{1}.azurecontainer.io" -f $(Get-Date -f yyyyMMdd), $env:location)
        foreach ($i in 1..60) {
            $resp = Invoke-WebRequest -Uri $strUri
            It 'Container should respond on port 80' {
                $resp.StatusCode | Should -Be 200
            }
            Clear-Variable resp
            start-sleep -Seconds 1
        }       
    }
}
