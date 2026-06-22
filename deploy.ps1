# Script de publicación — ejecutar después de autenticarte en GitHub y Vercel

$ErrorActionPreference = "Stop"
Set-Location $PSScriptRoot

Write-Host "`n=== 1. GitHub ===" -ForegroundColor Cyan
gh auth status
if ($LASTEXITCODE -ne 0) {
    Write-Host "Inicia sesión en GitHub..." -ForegroundColor Yellow
    gh auth login -h github.com -p https -w
}

$repoName = "landing-page-comparison"
$existing = gh repo view $repoName 2>$null
if (-not $existing) {
    gh repo create $repoName --public --source=. --remote=origin --description "Comparativa landing pages IA - Marcela Cordini PFO2"
} else {
    git remote add origin "https://github.com/$(gh api user -q .login)/$repoName.git" 2>$null
}

git branch -M main
git push -u origin main

Write-Host "`n=== 2. Vercel ===" -ForegroundColor Cyan
vercel whoami 2>$null
if ($LASTEXITCODE -ne 0) {
    Write-Host "Inicia sesión en Vercel..." -ForegroundColor Yellow
    vercel login
}

vercel --prod --yes
Write-Host "`nListo. Copia la URL de producción y actualízala en README.md" -ForegroundColor Green
