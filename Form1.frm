VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Konverter valuta"
   ClientHeight    =   3705
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   3810
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3705
   ScaleWidth      =   3810
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Dalje >"
      Height          =   495
      Left            =   2160
      TabIndex        =   7
      Top             =   3000
      Width           =   1335
   End
   Begin VB.TextBox txtChf 
      Height          =   375
      Left            =   2040
      TabIndex        =   2
      Top             =   2040
      Width           =   1455
   End
   Begin VB.TextBox txtUsa 
      Height          =   375
      Left            =   2040
      TabIndex        =   1
      Top             =   1440
      Width           =   1455
   End
   Begin VB.TextBox txtEvro 
      Height          =   375
      Left            =   2040
      TabIndex        =   0
      Top             =   840
      Width           =   1455
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "Svajcarski franak CHF"
      Height          =   195
      Left            =   120
      TabIndex        =   6
      Top             =   2160
      Width           =   1590
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "DNEVNI KURS"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   120
      TabIndex        =   5
      Top             =   360
      Width           =   1860
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Americki dolar USD"
      Height          =   195
      Left            =   360
      TabIndex        =   4
      Top             =   1560
      Width           =   1380
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Evro EUR"
      Height          =   195
      Left            =   960
      TabIndex        =   3
      Top             =   960
      Width           =   720
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Form2.Show
Form2.Label5.Caption = txtEvro.Text
Form2.Label6.Caption = txtUsa.Text
Form2.Label7.Caption = txtChf.Text
Unload Me
End Sub
