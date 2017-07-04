$version     = '1.0'
$fullVersion = '1.0.0'
$BetaBuild   = $false

if ($BetaBuild) {$icon = 'beta'}
else            {$icon = 'prod'}

# Not used in examples, but useful
$RootDir = $MyInvocation.PSScriptRoot