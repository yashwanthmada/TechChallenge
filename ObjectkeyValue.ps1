function get-value {
    param (
        [parameter(Mandatory = $true)]
        [String]$object,
        [parameter(Mandatory = $true)]
        [String]$Key,
        [String]$value 
    ) 
    $SimplifiedObject = $object.Split('{":}') | Where-Object {$_ -ne ""}
    $simplifiedKey = $key.Split('/') | Where-Object {$_ -ne ""}
    $value = $SimplifiedObject | Where-Object {$_ -notin $simplifiedKey}
    Write-Host "value is $($value)"
}

get-value -object '{"a":{"b":{"c":"d"}}}' -key 'a/b/c'

