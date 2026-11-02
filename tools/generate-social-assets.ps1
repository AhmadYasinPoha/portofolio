# ============================================================
#  Generator Aset Sosial - Portofolio Ahmad Yasin Pohan
#  ------------------------------------------------------------
#  Menghasilkan:
#    assets/og-image.png          (1200 x 630) - preview LinkedIn/WhatsApp
#    assets/apple-touch-icon.png  (180 x 180)  - ikon iOS / bookmark
#
#  Jalankan dari root proyek:
#    powershell -ExecutionPolicy Bypass -File tools/generate-social-assets.ps1
#
#  Catatan: script memakai GDI+ bawaan Windows (System.Drawing),
#  jadi tidak memerlukan dependency tambahan.
# ============================================================

Add-Type -AssemblyName System.Drawing

$root = Split-Path -Parent $PSScriptRoot
$assetsDir = Join-Path $root 'assets'

if (-not (Test-Path $assetsDir)) {
  New-Item -ItemType Directory -Path $assetsDir | Out-Null
}

function New-RoundedPath {
  param([int]$X, [int]$Y, [int]$W, [int]$H, [int]$R)

  $path = New-Object System.Drawing.Drawing2D.GraphicsPath
  $d = $R * 2
  $path.AddArc($X, $Y, $d, $d, 180, 90)
  $path.AddArc($X + $W - $d, $Y, $d, $d, 270, 90)
  $path.AddArc($X + $W - $d, $Y + $H - $d, $d, $d, 0, 90)
  $path.AddArc($X, $Y + $H - $d, $d, $d, 90, 90)
  $path.CloseFigure()
  return $path
}

function New-Brush {
  param([int]$R, [int]$G, [int]$B, [int]$A = 255)
  return New-Object System.Drawing.SolidBrush([System.Drawing.Color]::FromArgb($A, $R, $G, $B))
}

function New-Font {
  param([string]$Family, [float]$Size, [System.Drawing.FontStyle]$Style)
  return New-Object System.Drawing.Font($Family, $Size, $Style, [System.Drawing.GraphicsUnit]::Pixel)
}

function Add-Glow {
  param($Graphics, [int]$X, [int]$Y, [int]$Size, [int]$R, [int]$G, [int]$B, [int]$Alpha)

  $path = New-Object System.Drawing.Drawing2D.GraphicsPath
  $path.AddEllipse($X, $Y, $Size, $Size)
  $brush = New-Object System.Drawing.Drawing2D.PathGradientBrush($path)
  $brush.CenterColor = [System.Drawing.Color]::FromArgb($Alpha, $R, $G, $B)
  $brush.SurroundColors = [System.Drawing.Color[]]@([System.Drawing.Color]::FromArgb(0, $R, $G, $B))
  $Graphics.FillPath($brush, $path)
  $brush.Dispose()
  $path.Dispose()
}

# ------------------------------------------------------------
#  1. Open Graph image (1200 x 630)
# ------------------------------------------------------------
$W = 1200
$H = 630
$bmp = New-Object System.Drawing.Bitmap($W, $H)
$g = [System.Drawing.Graphics]::FromImage($bmp)
$g.SmoothingMode = [System.Drawing.Drawing2D.SmoothingMode]::AntiAlias
$g.TextRenderingHint = [System.Drawing.Text.TextRenderingHint]::ClearTypeGridFit

$canvas = New-Object System.Drawing.Rectangle(0, 0, $W, $H)
$base = New-Object System.Drawing.Drawing2D.LinearGradientBrush(
  $canvas,
  [System.Drawing.Color]::FromArgb(255, 8, 17, 31),
  [System.Drawing.Color]::FromArgb(255, 15, 76, 92),
  35.0
)
$g.FillRectangle($base, $canvas)

Add-Glow -Graphics $g -X 720 -Y -180 -Size 660 -R 34 -G 211 -B 238 -Alpha 60
Add-Glow -Graphics $g -X -220 -Y 300 -Size 620 -R 129 -G 140 -B 248 -Alpha 45

# Grid halus di latar
$gridPen = New-Object System.Drawing.Pen([System.Drawing.Color]::FromArgb(22, 148, 163, 184), 1)
for ($x = 0; $x -le $W; $x += 34) { $g.DrawLine($gridPen, $x, 0, $x, $H) }
for ($y = 0; $y -le $H; $y += 34) { $g.DrawLine($gridPen, 0, $y, $W, $y) }

# Badge monogram AYP
$badgePath = New-RoundedPath -X 88 -Y 96 -W 104 -H 104 -R 28
$badgeRect = New-Object System.Drawing.Rectangle(88, 96, 104, 104)
$badgeBrush = New-Object System.Drawing.Drawing2D.LinearGradientBrush(
  $badgeRect,
  [System.Drawing.Color]::FromArgb(255, 8, 145, 178),
  [System.Drawing.Color]::FromArgb(255, 79, 70, 229),
  45.0
)
$g.FillPath($badgeBrush, $badgePath)
$badgeFont = New-Font -Family 'Segoe UI' -Size 40 -Style ([System.Drawing.FontStyle]::Bold)
$white = New-Brush -R 255 -G 255 -B 255
$g.DrawString('AYP', $badgeFont, $white, 92, 124)

# Teks utama
$kickerFont = New-Font -Family 'Segoe UI' -Size 22 -Style ([System.Drawing.FontStyle]::Bold)
$cyan = New-Brush -R 103 -G 232 -B 249
$g.DrawString('PORTFOLIO 2026  /  BUSINESS-MINDED TECHNOLOGY PROFESSIONAL', $kickerFont, $cyan, 90, 232)

$nameFont = New-Font -Family 'Segoe UI' -Size 76 -Style ([System.Drawing.FontStyle]::Bold)
$g.DrawString('Ahmad Yasin Pohan', $nameFont, $white, 84, 268)

$taglineFont = New-Font -Family 'Segoe UI' -Size 32 -Style ([System.Drawing.FontStyle]::Regular)
$softCyan = New-Brush -R 165 -G 243 -B 252
$g.DrawString('Menghubungkan kebutuhan bisnis dengan solusi digital.', $taglineFont, $softCyan, 90, 382)

$metaFont = New-Font -Family 'Segoe UI' -Size 24 -Style ([System.Drawing.FontStyle]::Regular)
$muted = New-Brush -R 148 -G 163 -B 184
$g.DrawString('S1 Teknologi Informasi  |  Universitas Mikroskil, Medan', $metaFont, $muted, 90, 440)
$g.DrawString('Business  -  Technology  -  Creative Communication  -  Problem Solving', $metaFont, $muted, 90, 480)

# Garis aksen bawah
$accentPen = New-Object System.Drawing.Pen([System.Drawing.Color]::FromArgb(180, 34, 211, 238), 6)
$g.DrawLine($accentPen, 90, 556, 300, 556)

$ogPath = Join-Path $assetsDir 'og-image.png'
$bmp.Save($ogPath, [System.Drawing.Imaging.ImageFormat]::Png)

$g.Dispose()
$bmp.Dispose()

# ------------------------------------------------------------
#  2. Apple touch icon (180 x 180)
# ------------------------------------------------------------
$size = 180
$icon = New-Object System.Drawing.Bitmap($size, $size)
$ig = [System.Drawing.Graphics]::FromImage($icon)
$ig.SmoothingMode = [System.Drawing.Drawing2D.SmoothingMode]::AntiAlias
$ig.TextRenderingHint = [System.Drawing.Text.TextRenderingHint]::ClearTypeGridFit

$iconRect = New-Object System.Drawing.Rectangle(0, 0, $size, $size)
$iconBrush = New-Object System.Drawing.Drawing2D.LinearGradientBrush(
  $iconRect,
  [System.Drawing.Color]::FromArgb(255, 8, 145, 178),
  [System.Drawing.Color]::FromArgb(255, 79, 70, 229),
  45.0
)
$ig.FillRectangle($iconBrush, $iconRect)

$iconFont = New-Font -Family 'Segoe UI' -Size 62 -Style ([System.Drawing.FontStyle]::Bold)
$iconText = 'AYP'
$textSize = $ig.MeasureString($iconText, $iconFont)
$ig.DrawString($iconText, $iconFont, $white, ($size - $textSize.Width) / 2, ($size - $textSize.Height) / 2)

$iconPath = Join-Path $assetsDir 'apple-touch-icon.png'
$icon.Save($iconPath, [System.Drawing.Imaging.ImageFormat]::Png)

$ig.Dispose()
$icon.Dispose()

Write-Host 'Selesai membuat aset:'
Write-Host " - $ogPath"
Write-Host " - $iconPath"
