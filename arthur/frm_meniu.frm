VERSION 5.00
Object = "{D27CDB6B-AE6D-11CF-96B8-444553540000}#1.0#0"; "FLASH.OCX"
Begin VB.Form frm_meniu 
   BorderStyle     =   0  'None
   Caption         =   "Arthur Effect"
   ClientHeight    =   1875
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   11355
   LinkTopic       =   "Form1"
   Picture         =   "frm_meniu.frx":0000
   ScaleHeight     =   1875
   ScaleWidth      =   11355
   StartUpPosition =   1  'CenterOwner
   Begin ShockwaveFlashObjectsCtl.ShockwaveFlash sk 
      Height          =   1695
      Left            =   0
      TabIndex        =   0
      Top             =   120
      Width           =   11175
      _cx             =   19711
      _cy             =   2990
      FlashVars       =   ""
      Movie           =   ""
      Src             =   ""
      WMode           =   "Window"
      Play            =   -1  'True
      Loop            =   -1  'True
      Quality         =   "High"
      SAlign          =   ""
      Menu            =   -1  'True
      Base            =   ""
      AllowScriptAccess=   "always"
      Scale           =   "ShowAll"
      DeviceFont      =   0   'False
      EmbedMovie      =   0   'False
      BGColor         =   ""
      SWRemote        =   ""
      MovieData       =   ""
   End
End
Attribute VB_Name = "frm_meniu"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim X1, Y1
Private Sub Form_Load()
Call MakeMeTransparent
sk.Movie = App.Path & "/arthur.ath"
End Sub
Private Sub sk_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
X1 = x
Y1 = y
End Sub

Private Sub sk_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
If Button = 0 Then
Y1 = y
X1 = x
End If
If Button = 1 Then
Left = Left - (X1 - x)
Top = Top - (Y1 - y)
End If
End Sub
