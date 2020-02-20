#
# CHANGE DATE SCRIPT
#
# BB COM IT GmbH
# Made by Francis Pimenta
#
# Date 19.02.2020
#

Add-Type -assembly System.Windows.Forms

$main_form = New-Object System.Windows.Forms.Form
$main_form.Text ='Zeit Anpassung'
$main_form.Width = 450
$main_form.Height = 300
$main_form.AutoSize = $true

# Button Disable Time Sync
$Button = New-Object System.Windows.Forms.Button
$Button.Location = New-Object System.Drawing.Size(0,10)
$Button.Size = New-Object System.Drawing.Size(200,23)
$Button.Text = "Zeit Syncronisation Deaktivieren"

$main_form.Controls.Add($Button)

$Button.Add_Click({
    W32TM /unregister
    [System.Windows.Forms.MessageBox]::Show("Deaktivieren" , "Zeit Syncronisation")
})

# Button Aktivieren Time Sync
$Button1 = New-Object System.Windows.Forms.Button
$Button1.Location = New-Object System.Drawing.Size(220,10)
$Button1.Size = New-Object System.Drawing.Size(200,23)
$Button1.Text = "Zeit Syncronisation Aktivieren"

$main_form.Controls.Add($Button1)

$Button1.Add_Click({
    W32TM /unregister
    W32TM /resync
    [System.Windows.Forms.MessageBox]::Show("Aktivieren" , "Zeit Syncronisation")
})

# Date Picker
$date = New-Object System.Windows.Forms.DateTimePicker
$date.Location = New-Object System.Drawing.Size(0,50)

$main_form.Controls.Add($date)

# Button Datum Anpassung
$Button2 = New-Object System.Windows.Forms.Button
$Button2.Location = New-Object System.Drawing.Size(220,50)
$Button2.Size = New-Object System.Drawing.Size(120,50)
$Button2.Text = "Datum Anpassen"

$main_form.Controls.Add($Button2)

$Button2.Add_Click({
    Set-Date -Date $date.Value
    [System.Windows.Forms.MessageBox]::Show("Datum wurde Angepasst" , "Zeit Anpassung")
})



$main_form.ShowDialog()