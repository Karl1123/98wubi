param(
    [Parameter(Mandatory)]
    [ValidateSet("86", "98")]
    [string]$Plan
)

$ErrorActionPreference = "Stop"

$wubi = "$env:windir\InputMethod\CHS\ChsWubi.lex"
$wubiNew = "$env:windir\InputMethod\CHS\ChsWubiNew.lex"

takeown /f $wubi
icacls $wubi /grant Administrators:F

takeown /f $wubiNew
icacls $wubiNew /grant Administrators:F

switch ($Plan) {
    "86" {
        Remove-Item $wubi -Force -ErrorAction SilentlyContinue
        Remove-Item $wubiNew -Force -ErrorAction SilentlyContinue
        $wubi86 = Join-Path $PSScriptRoot "86" "ChsWubi.lex"
        $wubiNew86 = Join-Path $PSScriptRoot "86" "ChsWubiNew.lex"
        Copy-Item $wubi86 $wubi -Force
        Copy-Item $wubiNew86 $wubiNew -Force
    }
    "98" {
        # $folder86 = Join-Path $PSScriptRoot "86"
        # Copy-Item $wubi $folder86 -Force
        # Copy-Item $wubiNew $folder86 -Force
        Remove-Item $wubi -Force -ErrorAction SilentlyContinue
        Remove-Item $wubiNew -Force -ErrorAction SilentlyContinue
        $wubi98 = Join-Path $PSScriptRoot "98" "ChsWubi.lex"
        $wubiNew98 = Join-Path $PSScriptRoot "98" "ChsWubiNew.lex"
        Copy-Item $wubi98 $wubi -Force
        Copy-Item $wubiNew98 $wubiNew -Force
    }
}

