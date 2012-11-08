VERSION 5.00
Begin VB.Form Form2 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Konverter valuta"
   ClientHeight    =   5595
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4335
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5595
   ScaleWidth      =   4335
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "< Novi kurs"
      Height          =   375
      Left            =   1800
      TabIndex        =   19
      Top             =   5040
      Width           =   975
   End
   Begin VB.ComboBox cb 
      Height          =   315
      ItemData        =   "Form2.frx":0000
      Left            =   240
      List            =   "Form2.frx":0010
      TabIndex        =   15
      Text            =   "RSD"
      Top             =   1680
      Width           =   1815
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Konvertuj"
      Height          =   375
      Left            =   3000
      TabIndex        =   1
      Top             =   5040
      Width           =   975
   End
   Begin VB.TextBox txtRsd 
      Height          =   375
      Left            =   2160
      TabIndex        =   0
      Top             =   1680
      Width           =   1335
   End
   Begin VB.Label Label10 
      AutoSize        =   -1  'True
      Caption         =   "Unesite iznos"
      Height          =   195
      Left            =   2160
      TabIndex        =   18
      Top             =   1440
      Width           =   945
   End
   Begin VB.Label lblRsd 
      AutoSize        =   -1  'True
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   2160
      TabIndex        =   17
      Top             =   4440
      Width           =   1185
   End
   Begin VB.Label Label9 
      AutoSize        =   -1  'True
      Caption         =   "Sprski dinar RSD"
      Height          =   195
      Left            =   720
      TabIndex        =   16
      Top             =   4440
      Width           =   1215
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      Caption         =   "USD"
      Height          =   195
      Index           =   2
      Left            =   1440
      TabIndex        =   14
      Top             =   480
      Width           =   345
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      Caption         =   "CHF"
      Height          =   195
      Index           =   1
      Left            =   2880
      TabIndex        =   13
      Top             =   480
      Width           =   315
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      Caption         =   "EUR"
      Height          =   195
      Index           =   0
      Left            =   120
      TabIndex        =   12
      Top             =   480
      Width           =   345
   End
   Begin VB.Label Label7 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2880
      TabIndex        =   11
      Top             =   840
      Width           =   975
   End
   Begin VB.Label Label6 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   1440
      TabIndex        =   10
      Top             =   840
      Width           =   975
   End
   Begin VB.Label Label5 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   9
      Top             =   840
      Width           =   855
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "Kursna lista na danasnji dan"
      Height          =   195
      Left            =   120
      TabIndex        =   8
      Top             =   120
      Width           =   1980
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "EVRO"
      Height          =   195
      Index           =   1
      Left            =   1560
      TabIndex        =   7
      Top             =   2640
      Width           =   450
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Americki dolar USD"
      Height          =   195
      Left            =   600
      TabIndex        =   6
      Top             =   3240
      Width           =   1380
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "Svajcarski franak CHF"
      Height          =   195
      Left            =   360
      TabIndex        =   5
      Top             =   3840
      Width           =   1590
   End
   Begin VB.Label lblChf 
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2160
      TabIndex        =   4
      Top             =   3840
      Width           =   1215
   End
   Begin VB.Label lblUsd 
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2160
      TabIndex        =   3
      Top             =   3240
      Width           =   1095
   End
   Begin VB.Label lblEU 
      AutoSize        =   -1  'True
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   2160
      TabIndex        =   2
      Top             =   2640
      Width           =   1185
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()

Dim a As Single, b As Single, c As Single, d As Single, e As Single, f As Single, g As Single, h As Single
a = Label5.Caption
b = Label6.Caption
c = Label6.Caption
d = txtRsd.Text



If cb.Text = "RSD" Then
e = d / a
f = d / b
g = d / c
h = d

ElseIf cb.Text = "EUR" Then
h = d * Label5.Caption
e = d
f = h / Label6.Caption
g = h / Label7.Caption

ElseIf cb.Text = "USD" Then
h = d * Label6.Caption
e = h / Label5.Caption
f = d
g = h / Label7.Caption

ElseIf cb.Text = "CHF" Then
h = d * Label7.Caption
e = h / Label5.Caption
f = h / Label6.Caption
g = d
End If

lblEU.Caption = e
lblUsd.Caption = f
lblChf.Caption = g
lblRsd.Caption = h

End Sub

Private Sub Command2_Click()
txtRsd.Text = ""
Form1.Show
Form1.txtEvro.Text = ""
Form1.txtUsa.Text = ""
Form1.txtChf.Text = ""
Unload Me
End Sub
