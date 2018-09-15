Add-Type -AssemblyName System.Windows.Forms
Add-Type -Name Window -Namespace Console -MemberDefinition '
[DllImport("Kernel32.dll")]
public static extern IntPtr GetConsoleWindow();

[DllImport("user32.dll")]
public static extern bool ShowWindow(IntPtr hWnd, Int32 nCmdShow);
'

# ocultamos consola

[Console.Window]::ShowWindow([Console.Window]::GetConsoleWindow(),0)


$URL1 = "https://www.milanuncios.com/textos-del-anuncio/?c=458&m=1"


# caja de windows form
$caja = New-Object System.Windows.Forms.Form
$caja.Font = “Calibri,12"
$caja.ForeColor = [System.Drawing.Color]::White
$caja.BackColor = [System.Drawing.Color]::black
$caja.Text = "System.Windows.Forms.WebBrowser Class"
$caja.Width = 900
$caja.Height = 700
$caja
#$caja.Icon
$caja.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen


# navegador
$web = New-Object System.Windows.Forms.WebBrowser
$web.ScriptErrorsSuppressed = $true
$web.ScrollBarsEnabled = $true
$web.IsWebBrowserContextMenuEnabled = $true
$web.URL = $URL1
$web.Width = 650
$web.Height = 610
$web.Location = "25, 25"
$web.ScrollBarsEnabled = $False

$caja.Controls.Add($web)






# comentarios
$selectLabel = New-Object System.Windows.Forms.Label
$selectLabel.Location = "710,20"
$selectLabel.Height = 22
$selectLabel.Width = 220
$selectLabel.Text = "Numero de anucios"
$caja.Controls.Add($selectLabel)


 

# Display Form
[void] $caja.ShowDialog() 