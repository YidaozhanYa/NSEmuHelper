VERSION 5.00
Begin VB.Form frmManage 
   BackColor       =   &H80000005&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "������"
   ClientHeight    =   3495
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   7035
   BeginProperty Font 
      Name            =   "΢���ź� Light"
      Size            =   12
      Charset         =   134
      Weight          =   290
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmManage.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3495
   ScaleWidth      =   7035
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton btnSaveSettings 
      Caption         =   "�������"
      Height          =   495
      Left            =   5280
      TabIndex        =   8
      Top             =   2040
      Width           =   1455
   End
   Begin VB.CommandButton btnShortcut 
      Caption         =   "��ݷ�ʽ"
      Height          =   495
      Left            =   1920
      TabIndex        =   7
      Top             =   2040
      Width           =   1455
   End
   Begin VB.CommandButton btnKey 
      Caption         =   "������Կ"
      Height          =   495
      Left            =   5280
      TabIndex        =   6
      Top             =   2760
      Width           =   1455
   End
   Begin VB.CommandButton btnFirmware 
      Caption         =   "���¹̼�"
      Height          =   495
      Left            =   3600
      TabIndex        =   5
      Top             =   2760
      Width           =   1455
   End
   Begin VB.CommandButton btnUpdate 
      Caption         =   "����ģ����������汾"
      Height          =   495
      Left            =   240
      TabIndex        =   4
      Top             =   2760
      Width           =   3135
   End
   Begin VB.CommandButton btnSaves 
      Caption         =   "�浵Ŀ¼"
      Height          =   495
      Left            =   3600
      TabIndex        =   3
      Top             =   2040
      Width           =   1455
   End
   Begin VB.CommandButton btnLog 
      Caption         =   "�鿴��־"
      Height          =   495
      Left            =   240
      TabIndex        =   2
      Top             =   2040
      Width           =   1455
   End
   Begin VB.Label Labels 
      BackStyle       =   0  'Transparent
      Caption         =   "�����ļ��У�"
      Height          =   375
      Index           =   2
      Left            =   1440
      TabIndex        =   9
      Top             =   1200
      Width           =   5295
   End
   Begin VB.Image Images 
      Height          =   975
      Index           =   2
      Left            =   240
      Picture         =   "frmManage.frx":54AA
      Stretch         =   -1  'True
      Top             =   240
      Width           =   975
   End
   Begin VB.Label Labels 
      BackStyle       =   0  'Transparent
      Caption         =   "�̼��汾��"
      Height          =   375
      Index           =   1
      Left            =   1440
      TabIndex        =   1
      Top             =   720
      Width           =   5295
   End
   Begin VB.Image Images 
      Height          =   975
      Index           =   1
      Left            =   240
      Picture         =   "frmManage.frx":9DFD
      Stretch         =   -1  'True
      Top             =   240
      Width           =   975
   End
   Begin VB.Image Images 
      Height          =   975
      Index           =   0
      Left            =   240
      Picture         =   "frmManage.frx":A8CE
      Stretch         =   -1  'True
      Top             =   240
      Width           =   975
   End
   Begin VB.Label Labels 
      BackStyle       =   0  'Transparent
      Caption         =   "ģ�����汾��"
      Height          =   375
      Index           =   0
      Left            =   1440
      TabIndex        =   0
      Top             =   240
      Width           =   5295
   End
End
Attribute VB_Name = "frmManage"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" (ByVal hWnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long
Public IsYuzu As Boolean

Private Sub btnFirmware_Click()
    frmYuzuInstaller.Show
    InstallMode = 3
    frmManage.Hide

End Sub

Private Sub btnKey_Click()
Dim KeyFile As String
KeyFile = ChooseFile("ѡ����Կ�ļ� (prod.keys)", "NS ��Կ�ļ�", "prod.keys", frmManage.hWnd)
Kill YuzuInstallFolder & "\user\keys\prod.keys"
FileCopy KeyFile, YuzuInstallFolder & "\user\keys\prod.keys"
MsgBox "��Կ�ļ��滻/���³ɹ���", vbOKOnly + vbInformation, "��ʾ"
End Sub


Private Sub btnSaveSettings_Click()
frmYuzuConfig.IsMissing = False
frmYuzuConfig.Show
End Sub

Private Sub btnShortcut_Click()
Dim nPath As String, sh, ShortCut
On Error Resume Next
Set sh = CreateObject("wscript.shell") '
nPath = sh.RegRead("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders\Desktop") '��ȡ��ǰ�û�������Ŀ¼
If Right(nPath, 1) <> "" Then nPath = nPath & "\"
ShortF = nPath & "Yuzu.lnk"
Set ShortCut = sh.CreateShortcut(ShortF) '��ʼ������ݷ�ʽ����
ShortCut.TargetPath = YuzuInstallFolder & "\yuzu.exe" '��ݷ�ʽָ���Ŀ���ļ���д����·��
ShortCut.Save
MsgBox "��ݷ�ʽ�����ɹ���", vbOKOnly + vbInformation, "��ʾ"
End Sub

Private Sub btnLog_Click()
ShellExecute Me.hWnd, "open", YuzuInstallFolder & "\user\log\yuzu_log.txt", vbNullString, vbNullString, vbNormalFocus
End Sub

Private Sub btnSaves_Click()
Shell "explorer.exe " & Chr(34) & YuzuInstallFolder & "\user\nand\user\save\0000000000000000" & Chr(34), vbNormalFocus
End Sub

Private Sub btnUpdate_Click()
    frmYuzuInstaller.Show
    InstallMode = 2
    frmManage.Hide
End Sub

Private Sub Form_Activate()
'�������
Labels(2).Visible = False
If IsYuzu Then
    Me.Caption = "NSģ�������� " & Version & " - Yuzu ����"
    Me.Icon = frmMain.Icon
Else
    Me.Caption = "NSģ�������� " & Version & " - Ryujinx ����"
    Images(0).Visible = False
    Images(1).Visible = True
    Images(2).Visible = False
End If
'��������
If IsYuzu Then
    If CheckFileExists(YuzuInstallFolder & "\YuzuConfig.ini") = False Then
        frmYuzuConfig.IsMissing = True
        frmYuzuConfig.Show
    End If
    YuzuVersion = GetIni("Yuzu", "Version", YuzuInstallFolder & "\YuzuConfig.ini")
    YuzuBranch = GetIni("Yuzu", "Branch", YuzuInstallFolder & "\YuzuConfig.ini")
    If Left(YuzuBranch, 3) = "���߰�" Then
        Images(0).Visible = False
        Images(1).Visible = False
        Images(2).Visible = True
    Else
        Images(0).Visible = True
        Images(1).Visible = False
        Images(2).Visible = False
    End If
    YuzuFirmware = GetIni("Yuzu", "Firmware", YuzuInstallFolder & "\YuzuConfig.ini")
    Labels(0).Caption = "ģ�����汾��" & YuzuBranch
    Labels(0).Caption = Labels(0).Caption & " " & YuzuVersion
    Labels(1).Caption = "�̼��汾��" & YuzuFirmware
    YuzuCustomDataFolder = GetIni("Yuzu", "CustomDataFolder", YuzuInstallFolder & "\YuzuConfig.ini")
    If YuzuCustomDataFolder <> "False" Then
        Labels(2).Visible = True
        Labels(2).Caption = "�����ļ��У�" & YuzuCustomDataFolder
    End If
Else
End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
frmMain.Show
End Sub


Private Sub Form_Initialize()
InitCommonControls
End Sub

