Add-Type -AssemblyName System.Windows.Forms
 
$URL1 = "https://www.milanuncios.com/textos-del-anuncio/?c=458&m=1"

# WinForm Setup
$mainForm = New-Object System.Windows.Forms.Form
$mainForm.Font = “Calibri,12"
$mainForm.ForeColor = [System.Drawing.Color]::White
$mainForm.BackColor = [System.Drawing.Color]::black
$mainForm.Text = "System.Windows.Forms.WebBrowser Class"
$mainForm.Width = 900
$mainForm.Height = 700



# Main Browser
$web = New-Object System.Windows.Forms.WebBrowser
$web.ScrollBarsEnabled = false
$web.IsWebBrowserContextMenuEnabled = $true
$web.URL = $URL1
$web.Width = 650
$web.Height = 610
$web.Location = "25, 25"
$mainForm.Controls.Add($web)



# Select Label
$selectLabel = New-Object System.Windows.Forms.Label
$selectLabel.Location = "710,20"
$selectLabel.Height = 22
$selectLabel.Width = 220
$selectLabel.Text = "Numero de anucios"
$mainForm.Controls.Add($selectLabel)





# Display Form
[void] $mainForm.ShowDialog()