Describe  'ACI Demo Check' {
    Context 'Checking ACI demo Container' {
        # Assume the test will fail
        $bolTestpass = $false
        # Test once every 60 seconds
        foreach ($i in 1..60) {
            $resp = Invoke-WebRequest -Uri ("http://aci-demo-{0}.{1}.azurecontainer.io" -f $(Get-Date -f yyyyMMdd), $env:location)
            if ($resp.StatusCode -eq 200) {$bolTestPass = $true}
            else {$bolTestpass = $false}
            start-sleep -Seconds 1
            # Perform the test
            It 'Container should respond on port 80' {
                $bolTestPass | Should -Be $true
            }
        }       
    }
}
