VERSION 5.00
Begin VB.Form frmImportRegistry 
   BackColor       =   &H80000005&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "�� Yuzu Tool ����ע���"
   ClientHeight    =   3585
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   6615
   BeginProperty Font 
      Name            =   "΢���ź� Light"
      Size            =   12
      Charset         =   134
      Weight          =   290
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmImportRegistry.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3585
   ScaleWidth      =   6615
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton Command1 
      Caption         =   "��һ��"
      Height          =   495
      Left            =   4800
      TabIndex        =   3
      Top             =   2880
      Width           =   1575
   End
   Begin VB.ComboBox Combo1 
      Height          =   435
      Left            =   1440
      TabIndex        =   2
      Text            =   "Combo1"
      Top             =   1680
      Width           =   3735
   End
   Begin VB.Label Labels 
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "��֧�� Yuzu Tool 4.6"
      Height          =   375
      Index           =   2
      Left            =   120
      TabIndex        =   4
      Top             =   3000
      Width           =   5295
   End
   Begin VB.Label Labels 
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "��ѡ��Ҫ���뵽 NS ģ�������ֵ� Yuzu �汾��"
      Height          =   375
      Index           =   1
      Left            =   120
      TabIndex        =   1
      Top             =   600
      Width           =   5295
   End
   Begin VB.Label Labels 
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "�� Yuzu Tool ����ע���"
      BeginProperty Font 
         Name            =   "΢���ź� Light"
         Size            =   14.25
         Charset         =   134
         Weight          =   290
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   0
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   6255
   End
End
Attribute VB_Name = "frmImportRegistry"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub LoadRegistry()
Combo1.Clear
    Dim lhKey As Long
    Dim I As Long
    Dim sKeyName As String
    Dim lenKeyName As Long
    Dim tFT As FILETIME
    I = 0
    sKeyName = Space(1024)
    lenKeyName = 1024
    RegOpenKey HKEY_CURRENT_USER, "Software\YuzuTool", lhKey
    n = RegEnumKeyEx(lhKey, I, sKeyName, lenKeyName, 0, vbNullString, 0, tFT)
    Do Until n <> 0
        Combo1.AddItem Left(sKeyName, lenKeyName)
        Combo1.Text = Left(sKeyName, lenKeyName)
        lenKeyName = 1024
        I = I + 1
        n = RegEnumKeyEx(lhKey, I, sKeyName, lenKeyName, 0, vbNullString, 0, tFT)
    Loop
    RegCloseKey lhKey
End Sub

Private Sub LoadInstallFolder()
Dim wsh As Object, YuzuInstallFolder As String
Set wsh = CreateObject("WScript.Shell")
YuzuInstallFolder = wsh.RegRead("HKCU\Software\YuzuTool\" & Combo1.Text & "\InstallFolder")
WriteIni "Folder", "YuzuInstallFolder", YuzuInstallFolder, App.Path & "\Config.ini"
WriteIni "Yuzu", "Version", Combo1.Text, YuzuInstallFolder & "\YuzuConfig.ini"
WriteIni "Yuzu", "Branch", "Ԥ�Ȳ��԰�", YuzuInstallFolder & "\YuzuConfig.ini"
WriteIni "Yuzu", "Firmware", "13.2.1", YuzuInstallFolder & "\YuzuConfig.ini"
WriteIni "Yuzu", "CustomDataFolder", "False", YuzuInstallFolder & "\YuzuConfig.ini"
MsgBox "Yuzu Early Access " & Combo1.Text & " �Ѿ����뵽�����ߣ�", vbInformation, "NS ģ��������"
End Sub

Private Sub Command1_Click()
        LoadInstallFolder
End Sub

Private Sub Form_Initialize()
InitCommonControls
End Sub

Private Sub Form_Load()
If CheckFileExists(App.Path & "\Config.ini") = False And CheckFileExists(App.Path & "\Config.Defaults.ini") = False Then
    MsgBox "��ѱ�����ŵ� NS ģ�������������ļ���֮�����ԣ�"
    End
End If
If CheckFileExists(App.Path & "\Config.Defaults.ini") = True And CheckFileExists(App.Path & "\Config.ini") = False Then
'����Ĭ������
Name App.Path & "\Config.Defaults.ini" As App.Path & "\Config.ini"
End If
LoadRegistry
End Sub
