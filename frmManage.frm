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
   Begin VB.CommandButton btnModDownloader 
      Caption         =   "��װ Mod"
      Height          =   495
      Left            =   1920
      TabIndex        =   10
      Top             =   2760
      Width           =   1455
   End
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
      Index           =   0
      Left            =   240
      Picture         =   "frmManage.frx":54AA
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
Private Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" (ByVal hwnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long
Public IsYuzu As Boolean

Private Sub btnFirmware_Click()
    InstallMode = 3
    If IsYuzu Then
        frmYuzuInstaller.Show
    Else
        frmRyujinxInstaller.Show
    End If
    frmManage.Hide
End Sub

Private Sub btnKey_Click()
    On Error Resume Next
    Dim KeyFile As String
    If IsYuzu Then
        KeyFile = ChooseFile("ѡ����Կ�ļ� (prod.keys)", "NS ��Կ�ļ�", "prod.keys", frmManage.hwnd)
        If KeyFile = "" Then Exit Sub
        Kill YuzuInstallFolder & "\user\keys\prod.keys"
        FileCopy KeyFile, YuzuInstallFolder & "\user\keys\prod.keys"
        MsgBox "Yuzu ��Կ�ļ����� / �滻�ɹ���", vbOKOnly + vbInformation, "��ʾ"
        Exit Sub
    Else
        KeyFile = ChooseFile("ѡ����Կ�ļ� (prod.keys)", "NS ��Կ�ļ�", "prod.keys", frmManage.hwnd)
        If KeyFile = "" Then Exit Sub
        Kill RyujinxInstallFolder & "\portable\system\prod.keys"
        FileCopy KeyFile, RyujinxInstallFolder & "\portable\system\prod.keys"
        MsgBox "Ryujinx ��Կ�ļ����� / �滻�ɹ���", vbOKOnly + vbInformation, "��ʾ"
        Exit Sub
    End If
End Sub


Private Sub btnModDownloader_Click()
    If CheckFileExists(App.Path & "\ModDownloader.exe") Then
        Shell App.Path & "\ModDownloader.exe", vbNormalFocus
        End
    Else
        MsgBox "ModDownloader.exe δ�ҵ��������°�װ�����ߡ�", vbCritical, "�ļ�δ�ҵ�"
    End If
End Sub

Private Sub btnSaveSettings_Click()
    If IsYuzu Then
        frmYuzuConfig.IsMissing = False
        frmYuzuConfig.Show
    Else
        frmRyujinxConfig.IsMissing = False
        frmRyujinxConfig.Show
    End If
End Sub

Private Sub btnShortcut_Click()
    Dim nPath As String, sh, ShortCut
    If IsYuzu Then
        On Error Resume Next
        Set sh = CreateObject("wscript.shell")    '
        nPath = sh.RegRead("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders\Desktop")    '��ȡ��ǰ�û�������Ŀ¼
        If Right(nPath, 1) <> "" Then nPath = nPath & "\"
        ShortF = nPath & "Yuzu.lnk"
        Set ShortCut = sh.CreateShortcut(ShortF)    '��ʼ������ݷ�ʽ����
        ShortCut.TargetPath = YuzuInstallFolder & "\yuzu.exe"    '��ݷ�ʽָ���Ŀ���ļ���д����·��
        ShortCut.Save
        MsgBox "Yuzu ��ݷ�ʽ�����ɹ���", vbOKOnly + vbInformation, "��ʾ"
    Else
        On Error Resume Next
        Set sh = CreateObject("wscript.shell")    '
        nPath = sh.RegRead("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders\Desktop")    '��ȡ��ǰ�û�������Ŀ¼
        If Right(nPath, 1) <> "" Then nPath = nPath & "\"
        ShortF = nPath & "Ryujinx.lnk"
        Set ShortCut = sh.CreateShortcut(ShortF)    '��ʼ������ݷ�ʽ����
        ShortCut.TargetPath = RyujinxInstallFolder & "\Ryujinx.exe"    '��ݷ�ʽָ���Ŀ���ļ���д����·��
        ShortCut.Save
        MsgBox "Ryujinx ��ݷ�ʽ�����ɹ���", vbOKOnly + vbInformation, "��ʾ"
    End If
End Sub

Private Sub btnLog_Click()
    If IsYuzu Then
        ShellExecute Me.hwnd, "open", YuzuInstallFolder & "\user\log\yuzu_log.txt", vbNullString, vbNullString, vbNormalFocus
    Else
        Shell "explorer.exe " & Chr(34) & ryujinsintallfolder & "\Logs" & Chr(34), vbNormalFocus
    End If
End Sub

Private Sub btnSaves_Click()
    If IsYuzu Then
        Shell "explorer.exe " & Chr(34) & YuzuInstallFolder & "\user\nand\user\save\0000000000000000" & Chr(34), vbNormalFocus
    Else
        Shell "explorer.exe " & Chr(34) & RyujinxInstallFolder & "\portable\bis\user\save" & Chr(34), vbNormalFocus
    End If
End Sub

Private Sub btnUpdate_Click()
    InstallMode = 2
    If IsYuzu Then
        frmYuzuInstaller.Show
    Else
        frmRyujinxInstaller.Show
    End If
    frmManage.Hide
End Sub

Private Sub Form_Activate()
'�������
    Labels(2).Visible = False
    If IsYuzu Then
        Me.Caption = "NSģ�������� " & App.Major & "." & App.Minor & "." & App.Revision & " - Yuzu ����"
        Me.Icon = frmMain.Icon
    Else
        Me.Caption = "NSģ�������� " & App.Major & "." & App.Minor & "." & App.Revision & " - Ryujinx ����"
        Me.Icon = frmRyujinxInstaller.Icon
        Unload frmRyujinxInstaller
    End If
    '��������
    If IsYuzu Then
        btnUpdate.Caption = "����ģ����"
        btnUpdate.Width = 1455
        btnModDownloader.Visible = True
        If CheckFileExists(YuzuInstallFolder & "\YuzuConfig.ini") = False Then
            frmYuzuConfig.IsMissing = True
            frmYuzuConfig.Show
        Else
            YuzuVersion = GetIni("Yuzu", "Version", YuzuInstallFolder & "\YuzuConfig.ini")
            YuzuBranch = GetIni("Yuzu", "Branch", YuzuInstallFolder & "\YuzuConfig.ini")
            If Left(YuzuBranch, 3) = "���߰�" Then
                Images(0).Picture = frmYuzuInstaller.ImageList2.ListImages(2).Picture
                Unload frmYuzuInstaller
            Else
                Images(0).Picture = frmYuzuInstaller.ImageList2.ListImages(1).Picture
                Unload frmYuzuInstaller
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
            DoEvents
        End If
    Else
        btnUpdate.Caption = "����ģ����������汾"
        btnUpdate.Width = 3135
        btnModDownloader.Visible = False
        If CheckFileExists(RyujinxInstallFolder & "\RyujinxConfig.ini") = False Then
            frmRyujinxConfig.IsMissing = True
            frmRyujinxConfig.Show
        Else
            RyujinxVersion = GetIni("Ryujinx", "Version", RyujinxInstallFolder & "\RyujinxConfig.ini")
            RyujinxBranch = GetIni("Ryujinx", "Branch", RyujinxInstallFolder & "\RyujinxConfig.ini")
            If Left(RyujinxBranch, 3) = "LDN" Then
                Images(0).Picture = frmRyujinxInstaller.ImageList2.ListImages(2).Picture
                Unload frmRyujinxInstaller
            Else
                Images(0).Picture = frmRyujinxInstaller.ImageList2.ListImages(1).Picture
                Unload frmRyujinxInstaller
            End If
            RyujinxFirmware = GetIni("Ryujinx", "Firmware", RyujinxInstallFolder & "\RyujinxConfig.ini")
            Labels(0).Caption = "ģ�����汾��" & RyujinxBranch
            Labels(0).Caption = Labels(0).Caption & " " & RyujinxVersion
            Labels(1).Caption = "�̼��汾��" & RyujinxFirmware
            RyujinxCustomDataFolder = GetIni("Ryujinx", "CustomDataFolder", RyujinxInstallFolder & "\RyujinxConfig.ini")
            If RyujinxCustomDataFolder <> "False" Then
                Labels(2).Visible = True
                Labels(2).Caption = "�����ļ��У�" & RyujinxCustomDataFolder
            End If
            DoEvents
        End If
    End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
    frmMain.Show
End Sub


Private Sub Form_Initialize()
    InitCommonControls
End Sub
