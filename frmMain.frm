VERSION 5.00
Begin VB.Form frmMain 
   BackColor       =   &H80000005&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "NS ģ�������� v1"
   ClientHeight    =   5595
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   5325
   BeginProperty Font 
      Name            =   "΢���ź� Light"
      Size            =   10.5
      Charset         =   134
      Weight          =   290
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5595
   ScaleWidth      =   5325
   StartUpPosition =   3  '����ȱʡ
   Begin VB.Label Labels 
      BackStyle       =   0  'Transparent
      Caption         =   "yuzu"
      BeginProperty Font 
         Name            =   "΢���ź� Light"
         Size            =   9
         Charset         =   134
         Weight          =   290
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000015&
      Height          =   615
      Index           =   7
      Left            =   2260
      TabIndex        =   7
      Top             =   3800
      Width           =   1695
   End
   Begin VB.Label Labels 
      BackStyle       =   0  'Transparent
      Caption         =   "yuzu"
      BeginProperty Font 
         Name            =   "΢���ź� Light"
         Size            =   9
         Charset         =   134
         Weight          =   290
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000015&
      Height          =   615
      Index           =   6
      Left            =   2260
      TabIndex        =   6
      Top             =   2350
      Width           =   1695
   End
   Begin VB.Image Images 
      Appearance      =   0  'Flat
      Height          =   495
      Index           =   2
      Left            =   120
      Picture         =   "frmMain.frx":54AA
      Stretch         =   -1  'True
      Top             =   4920
      Width           =   555
   End
   Begin VB.Label Labels 
      BackStyle       =   0  'Transparent
      Caption         =   "2021-2022 ��һ��ն��"
      ForeColor       =   &H80000015&
      Height          =   735
      Index           =   5
      Left            =   1080
      TabIndex        =   5
      Top             =   4920
      Width           =   4095
   End
   Begin VB.Label Labels 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "��Чȫ�ܵ� NS ģ������װ������"
      ForeColor       =   &H80000015&
      Height          =   375
      Index           =   4
      Left            =   120
      TabIndex        =   4
      Top             =   720
      Width           =   5055
   End
   Begin VB.Label Labels 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "NS ģ��������"
      BeginProperty Font 
         Name            =   "΢���ź� Light"
         Size            =   21.75
         Charset         =   134
         Weight          =   290
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Index           =   3
      Left            =   120
      TabIndex        =   3
      Top             =   120
      Width           =   5055
   End
   Begin VB.Label Labels 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "��ѡ��Ҫ�����ģ����"
      BeginProperty Font 
         Name            =   "΢���ź� Light"
         Size            =   14.25
         Charset         =   134
         Weight          =   290
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   2
      Left            =   120
      TabIndex        =   2
      Top             =   1200
      Width           =   5055
   End
   Begin VB.Image Images 
      Height          =   810
      Index           =   1
      Left            =   1320
      Picture         =   "frmMain.frx":6556
      Stretch         =   -1  'True
      Top             =   3360
      Width           =   810
   End
   Begin VB.Image Images 
      Height          =   840
      Index           =   0
      Left            =   1320
      Picture         =   "frmMain.frx":7027
      Stretch         =   -1  'True
      Top             =   2040
      Width           =   825
   End
   Begin VB.Label Labels 
      BackStyle       =   0  'Transparent
      Caption         =   "Ryujinx"
      BeginProperty Font 
         Name            =   "΢���ź� Light"
         Size            =   21.75
         Charset         =   134
         Weight          =   290
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Index           =   1
      Left            =   2245
      TabIndex        =   1
      Top             =   3240
      Width           =   1455
   End
   Begin VB.Label Labels 
      BackStyle       =   0  'Transparent
      Caption         =   "Yuzu"
      BeginProperty Font 
         Name            =   "΢���ź� Light"
         Size            =   18
         Charset         =   134
         Weight          =   290
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Index           =   0
      Left            =   2200
      TabIndex        =   0
      Top             =   1920
      Width           =   1095
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Form_Activate()
    Labels(5).Alignment = 1
    Labels(5).Caption = "2021-2022 ��һ��ն��" & vbCrLf & "�汾 " & Version
    If FirstActivate = False Then
        If AutoCheckForUpdate Then
            CheckUpdate (True)
            FirstActivate = True
        End If
    End If
End Sub

Private Sub Form_Initialize()
    InitCommonControls
    '��������
    ConfigFileVersion = ""
    If CheckFileExists(App.Path & "\Config.Defaults.ini") = False And CheckFileExists(App.Path & "\Config.ini") = False Then
        MsgBox "�����ļ������ڣ������޷�������", vbCritical
    End If
    If CheckFileExists(App.Path & "\Config.Defaults.ini") = True And CheckFileExists(App.Path & "\Config.ini") = False Then
        '����Ĭ������
        Name App.Path & "\Config.Defaults.ini" As App.Path & "\Config.ini"
    End If
    YuzuInstallFolder = GetIni("Folder", "YuzuInstallFolder", App.Path & "\Config.ini")
    RyujinxInstallFolder = GetIni("Folder", "RyujinxInstallFolder", App.Path & "\Config.ini")
    CloudflareReverseProxyUrl = GetIni("Network", "CloudflareReverseProxyUrl", App.Path & "\Config.ini")
    DownloadSource = GetIni("Network", "DownloadSource", App.Path & "\Config.ini")
    AliyundriveDomain = GetIni("Network", "AliyundriveDomain", App.Path & "\Config.ini")
    If AliyundriveDomain = "yidaozhan-pan-yidaozhanya.vercel.app" Then
        'v3�����ļ� ����������
        AliyundriveDomain = "nsemuhelper.herokuapp.com"
    End If
    ConfigFileVersion = GetIni("Tool", "ConfigFileVersion", App.Path & "\Config.ini")
    If Left(GetIni("Network", "AlwaysUseCloudflare", App.Path & "\Config.ini"), 4) = "True" Then
        AlwaysUseCloudflare = True
    Else
        AlwaysUseCloudflare = False
    End If
    If Left(GetIni("Tool", "AutoCheckForUpdate", App.Path & "\Config.ini"), 4) = "True" Then
        AutoCheckForUpdate = True
    Else
        AutoCheckForUpdate = False
    End If
    If ConfigFileVersion <> InternalConfigFileVersion Then
        If ConfigFileVersion = "" Then
            MsgBox "���θ��������������ļ�������Ҫ���´򿪳���֮���������� Yuzu �� Ryujinx ��·����", vbExclamation
            WriteIni "Tool", "ConfigFileVersion", "v2", App.Path & "\Config.ini"
            WriteIni "Folder", "YuzuInstallFolder", "D:\Yuzu", App.Path & "\Config.ini"
            WriteIni "Folder", "RyujinxInstallFolder", "D:\Ryujinx", App.Path & "\Config.ini"
            End
        End If
        If ConfigFileVersion = "v2" Then
            MsgBox "���θ��������������ļ�������Ҫ���´򿪳���", vbExclamation
            WriteIni "Tool", "ConfigFileVersion", "v3", App.Path & "\Config.ini"
            WriteIni "Network", "CloudflareReverseProxyUrl", "https://rp.ydz1.gq", App.Path & "\Config.ini"
            End
        End If
    End If
End Sub

Private Sub Form_Load()
'�������
    Me.Caption = "NSģ�������� " & Version
    Labels(6) = "������ģ����" & vbCrLf & "ȫ�ٳ���󲿷���Ϸ"
    Labels(7) = "������ģ����" & vbCrLf & "�����Ժ��ҹ���ǿ��"
End Sub

Private Sub Form_Terminate()
    End
End Sub

Private Sub Form_Unload(Cancel As Integer)
    End
End Sub

Private Sub Images_Click(index As Integer)
    Dim PopMsgBox As Integer
    'ͼƬ��ť�����
    If index = 2 Then
        frmConfig.Show
    Else
        If index = 0 Then
            'Yuzu
            frmManage.IsYuzu = True
            If CheckFileExists(YuzuInstallFolder & "\yuzu.exe") = False Then
                If YuzuInstallFolder = "D:\Yuzu" Then
                    PopMsgBox = MsgBox("��Ĭ�ϵİ�װλ�� D:\Yuzu ��û���ҵ� Yuzu ģ������" & vbCrLf & "�㡰�ǡ����ڸ�λ�ð�װģ������" & vbCrLf & "��Ҳ�������������������ѡ�����е�ģ����λ�ã�" & "���ߴ� Yuzu Tool 4.6 ���롣", vbYesNo, "Yuzu δ�ҵ�")
                Else
                    PopMsgBox = MsgBox("����ѡ��İ�װλ�� " & YuzuInstallFolder & " ��û���ҵ� Yuzu ģ������" & vbCrLf & "�� ���ǡ� ���ڸ�λ�ð�װģ������" & vbCrLf & "Ҳ�������������������ѡ�����е�ģ����λ�ã�" & "���ߴ� Yuzu Tool 4.6 ���롣", vbYesNo, "Yuzu δ�ҵ�")
                End If
                If PopMsgBox = vbYes Then
                    InstallMode = 1
                    frmYuzuInstaller.Show
                    Me.Hide
                End If
            Else
                Load frmManage
                frmManage.Show
                Me.Hide
            End If
        Else
            'Ryujinx
            frmManage.IsYuzu = False
            If CheckFileExists(RyujinxInstallFolder & "\Ryujinx.exe") = False Then
                If RyujinxInstallFolder = "D:\Ryujinx" Then
                    PopMsgBox = MsgBox("��Ĭ�ϵİ�װλ�� D:\Ryujinx ��û���ҵ� Ryujinx ģ������" & vbCrLf & "�㡰�ǡ�����Ĭ��λ�ð�װģ������" & vbCrLf & "��Ҳ�������������������ѡ�����е�ģ����λ�á�", vbYesNo, "Ryujinx δ�ҵ�")
                Else
                    PopMsgBox = MsgBox("����ѡ��İ�װλ�� " & RyujinxInstallFolder & " ��û���ҵ� Ryujinx ģ������" & vbCrLf & "�� ���ǡ� ���ڸ�λ�ð�װģ������" & vbCrLf & "Ҳ�������������������ѡ�����е�ģ����λ�á�", vbYesNo, "Ryujinx δ�ҵ�")
                End If
                If PopMsgBox = vbYes Then
                    InstallMode = 1
                    frmRyujinxInstaller.Show
                    Me.Hide
                End If
            Else
                Load frmManage
                frmManage.Show
                Me.Hide
            End If
        End If
    End If
End Sub

Private Sub Labels_Click(index As Integer)
    If index = 0 Then Images_Click (0)
    If index = 1 Then Images_Click (1)
End Sub
