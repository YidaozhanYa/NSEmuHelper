VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{A5E8A7E4-5CB9-46EB-8987-15503F7E5563}#34.0#0"; "yfui.ocx"
Begin VB.Form frmRyujinxConfig 
   BackColor       =   &H80000005&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "frmYuzuConfig"
   ClientHeight    =   4920
   ClientLeft      =   5625
   ClientTop       =   3120
   ClientWidth     =   6540
   BeginProperty Font 
      Name            =   "΢���ź� Light"
      Size            =   12
      Charset         =   134
      Weight          =   290
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmRyujinxConfig.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4920
   ScaleWidth      =   6540
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   1200
      Top             =   120
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   2
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmRyujinxConfig.frx":54AA
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmRyujinxConfig.frx":A964
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin YFUI.YFComboBox ImageCombo1 
      Height          =   375
      Left            =   1560
      TabIndex        =   4
      Tag             =   "W"
      Top             =   960
      Width           =   2895
      _ExtentX        =   5106
      _ExtentY        =   661
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "΢���ź� Light"
         Size            =   9
         Charset         =   134
         Weight          =   290
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   2039583
      EnabledColor    =   14014426
      ItemFocusColor  =   14014426
      Radius          =   3
   End
   Begin YFUI.YFTextBox txtVersion 
      Height          =   375
      Left            =   4560
      TabIndex        =   5
      Tag             =   "W"
      Top             =   960
      Width           =   1815
      _ExtentX        =   3201
      _ExtentY        =   661
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "΢���ź� Light"
         Size            =   9
         Charset         =   134
         Weight          =   290
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   2039583
      EnabledColor    =   14014426
   End
   Begin YFUI.YFComboBox cbFirmware 
      Height          =   375
      Left            =   1560
      TabIndex        =   6
      Tag             =   "W"
      Top             =   1680
      Width           =   2895
      _ExtentX        =   5106
      _ExtentY        =   661
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "΢���ź� Light"
         Size            =   9
         Charset         =   134
         Weight          =   290
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   2039583
      EnabledColor    =   14014426
      ItemFocusColor  =   14014426
      Radius          =   3
   End
   Begin YFUI.YFCheckBox Checks 
      Height          =   255
      Left            =   2280
      TabIndex        =   7
      Top             =   2820
      Width           =   855
      _ExtentX        =   1508
      _ExtentY        =   450
      Caption         =   "YFCheckBox1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "΢���ź� Light"
         Size            =   9
         Charset         =   134
         Weight          =   290
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      DownColor       =   14014426
      FocusColor      =   16761716
      EnabledColor    =   14014426
      DisabledColor   =   14014426
      HighColor       =   13224910
      SelColor        =   16761716
      Style           =   1
   End
   Begin YFUI.YFTextBox txtDataFolder 
      Height          =   375
      Left            =   120
      TabIndex        =   8
      Tag             =   "W"
      Top             =   3240
      Width           =   5055
      _ExtentX        =   8916
      _ExtentY        =   661
      Tip             =   "<�����������>"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "΢���ź� Light"
         Size            =   9
         Charset         =   134
         Weight          =   290
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   2039583
      EnabledColor    =   14014426
      Text            =   "<�����������>"
   End
   Begin YFUI.YFButton btnBrowse 
      Default         =   -1  'True
      Height          =   375
      Left            =   5280
      TabIndex        =   9
      Top             =   3240
      Width           =   1095
      _ExtentX        =   1931
      _ExtentY        =   661
      Caption         =   "���"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "΢���ź� Light"
         Size            =   12
         Charset         =   134
         Weight          =   290
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   2039583
      DownColor       =   16185594
      DownBorderColor =   14014426
      FocusColor      =   16185594
      FocusBorderColor=   13882840
      EnabledColor    =   16185594
      EnabledBorderColor=   14014426
      DisabledBorderColor=   14014426
      HighColor       =   15988473
      HighBorderColor =   15132905
      Radius          =   3
      Data            =   "frmRyujinxConfig.frx":307FE
   End
   Begin YFUI.YFButton btnCancel 
      Cancel          =   -1  'True
      Height          =   495
      Left            =   4920
      TabIndex        =   10
      Tag             =   "T"
      Top             =   4200
      Width           =   1455
      _ExtentX        =   2566
      _ExtentY        =   873
      Caption         =   "ȡ��"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "΢���ź� Light"
         Size            =   12
         Charset         =   134
         Weight          =   290
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   2039583
      DownColor       =   16185594
      DownBorderColor =   14014426
      FocusColor      =   16185594
      FocusBorderColor=   13882840
      EnabledColor    =   16185594
      EnabledBorderColor=   14014426
      DisabledBorderColor=   14014426
      HighColor       =   15988473
      HighBorderColor =   15132905
      Radius          =   3
      Data            =   "frmRyujinxConfig.frx":30816
   End
   Begin YFUI.YFButton btnSave 
      Height          =   495
      Left            =   3240
      TabIndex        =   11
      Tag             =   "T"
      Top             =   4200
      Width           =   1455
      _ExtentX        =   2566
      _ExtentY        =   873
      Caption         =   "����"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "΢���ź� Light"
         Size            =   12
         Charset         =   134
         Weight          =   290
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   2039583
      DownColor       =   16185594
      DownBorderColor =   14014426
      FocusColor      =   16185594
      FocusBorderColor=   13882840
      EnabledColor    =   16185594
      EnabledBorderColor=   14014426
      DisabledBorderColor=   14014426
      HighColor       =   15988473
      HighBorderColor =   15132905
      Radius          =   3
      Data            =   "frmRyujinxConfig.frx":3082E
   End
   Begin VB.Label Labels 
      BackStyle       =   0  'Transparent
      Caption         =   "�Զ��������ļ��У�"
      Height          =   495
      Index           =   3
      Left            =   120
      TabIndex        =   3
      Top             =   2760
      Width           =   2415
   End
   Begin VB.Image Image1 
      Height          =   735
      Left            =   5640
      Stretch         =   -1  'True
      Top             =   120
      Width           =   735
   End
   Begin VB.Label Labels 
      BackStyle       =   0  'Transparent
      Caption         =   "�̼��汾��"
      Height          =   495
      Index           =   2
      Left            =   120
      TabIndex        =   2
      Top             =   1680
      Width           =   1695
   End
   Begin VB.Label Labels 
      BackStyle       =   0  'Transparent
      Caption         =   "ģ�����汾��"
      Height          =   495
      Index           =   1
      Left            =   120
      TabIndex        =   1
      Top             =   960
      Width           =   1695
   End
   Begin VB.Label Labels 
      BackStyle       =   0  'Transparent
      Caption         =   "Label1"
      Height          =   735
      Index           =   0
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   6255
   End
End
Attribute VB_Name = "frmRyujinxConfig"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public IsMissing As Boolean, RyujinxPreDataFolder As String
Attribute RyujinxPreDataFolder.VB_VarUserMemId = 1073938432

Private Sub btnBrowse_Click()
    txtDataFolder.Text = ChooseDir("�Զ��������ļ���", Me)
    If txtDataFolder.Text = RyujinxInstallFolder & "\portable" Then
        txtDataFolder.Text = "<�����������>"
        btnBrowse.Visible = False
        txtDataFolder.Visible = False
        Checks.Value = False
        MsgBox "�Զ��������ļ��в��ܺ�Ĭ�������ļ���һ����", vbOKOnly + vbExclamation, "����"
    End If
End Sub

Private Sub btnCancel_Click()
    If IsMissing Then
        Unload frmManage
        frmMain.Show
    Else
        frmManage.Show
    End If
    Unload Me
End Sub

Private Sub btnSave_Click()
'��������
    If cbFirmware.Text <> "������ ..." Then
        RyujinxBranch = ImageCombo1.Text
        RyujinxVersion = txtVersion.Text
        RyujinxFirmware = cbFirmware.Text
        WriteIni "Ryujinx", "Version", RyujinxVersion, RyujinxInstallFolder & "\RyujinxConfig.ini"
        WriteIni "Ryujinx", "Branch", RyujinxBranch, RyujinxInstallFolder & "\RyujinxConfig.ini"
        WriteIni "Ryujinx", "Firmware", RyujinxFirmware, RyujinxInstallFolder & "\RyujinxConfig.ini"

        If IsMissing = False Then
            If Checks.Value = False Then
                RyujinxCustomDataFolder = "False"
            Else
                If txtDataFolder.Text = "<�����������>" Then
                    RyujinxCustomDataFolder = "False"
                Else
                    RyujinxCustomDataFolder = txtDataFolder.Text
                End If
            End If
            If RyujinxCustomDataFolder = RyujinxInstallFolder & "\portable" Then RyujinxCustomDataFolder = "False"
            MoveRyujinxDataFolder
            WriteIni "Ryujinx", "CustomDataFolder", RyujinxCustomDataFolder, RyujinxInstallFolder & "\RyujinxConfig.ini"
        Else
            RyujinxCustomDataFolder = "False"
            WriteIni "Ryujinx", "CustomDataFolder", RyujinxCustomDataFolder, RyujinxInstallFolder & "\RyujinxConfig.ini"
        End If
        If IsMissing Then
            Unload frmManage
            frmMain.Show
        Else
            frmManage.Show
        End If

        'Ǩ���������
        Dim fso As Object
        If Dir$(Environ("AppData") & "\Ryujinx", vbDirectory) <> "" Then
            'appdata����
            If Dir$(RyujinxInstallFolder & "\portable", vbDirectory) <> "" Then
            Else
                'user������
                Set fso = CreateObject("Scripting.FileSystemObject")    '����FSO
                Set folder = fso.GetFolder(Environ("AppData") & "\Ryujinx")
                folder.Move RyujinxInstallFolder & "\portable"
                Set folder = Nothing
                Set fso = Nothing
                MsgBox "֮ǰ��ģ�������ݴ���� C �̣��Ѿ��Զ�Ǩ�Ƶ�ģ�����ļ��С�", vbOKOnly + vbInformation, "��ʾ"
            End If
        End If
        Unload Me
    End If
End Sub


Private Sub cbFirmware_KeyPress(KeyAscii As Integer)
KeyAscii = 0
End Sub

Private Sub Checks_Click()
'ѡ��
    If Checks.Value = True Then
        btnBrowse.Visible = True: txtDataFolder.Visible = True
    Else
        btnBrowse.Visible = False: txtDataFolder.Visible = False
    End If
End Sub

Private Sub Form_Activate()
'�������úͽ���
    Debug.Print RyujinxCustomDataFolder
    If RyujinxCustomDataFolder = RyujinxInstallFolder & "\portable" Then
        RyujinxCustomDataFolder = "False"
        WriteIni "Ryujinx", "CustomDataFolder", RyujinxCustomDataFolder, RyujinxInstallFolder & "\RyujinxConfig.ini"
    End If

    If RyujinxCustomDataFolder = "False" Then
        Checks.Value = False
        btnBrowse.Visible = False
        txtDataFolder.Visible = False
    Else
        Checks.Value = True
        btnBrowse.Visible = True
        txtDataFolder.Visible = True
        txtDataFolder.Text = RyujinxCustomDataFolder
    End If
    If Left(RyujinxBranch, 3) = "LDN" Then
        Image1.Picture = frmRyujinxInstaller.ImageList2.ListImages(2).Picture
    Else
        Image1.Picture = frmRyujinxInstaller.ImageList2.ListImages(1).Picture
    End If
    'Unload frmRyujinxInstaller
    RyujinxPreDataFolder = RyujinxCustomDataFolder

    Me.Caption = "Ryujinx ģ�����������"
    If IsMissing Then
        'û��RyujinxConfig.ini
        Labels(0).Caption = "��ģ���������ñ����߰�װ�ģ�" & vbCrLf & "�����������İ汾��Ϣ��"
        Labels(3).Visible = False
        Checks.Visible = False
        txtDataFolder.Visible = False
        btnBrowse.Visible = fase
        btnSave.Top = 2520
        btnCancel.Top = 2520
        Me.Height = 3650

        frmManage.Hide
        frmRyujinxConfig.SetFocus
    Else
        Labels(0).Caption = "Ryujinx �汾��Ϣ����" & vbCrLf & "������ֶ�������ģ�����������ڴ˸��İ汾��Ϣ��"
        btnSave.Top = 4200
        btnCancel.Top = 4200
        Me.Height = 5325
    End If
    ImageCombo1.Clear
    ImageCombo1.AddItem "���߰�"
    ImageCombo1.AddItem "���İ�"
    ImageCombo1.AddItem "LDN������"
    ImageCombo1.AddItem "Vulkan"
    cbFirmware.Text = "������ ..."

    DoEvents
    WindowList = ""
    Shell RyujinxInstallFolder & "\Ryujinx.exe"
    Dim tmpRyujinxName As String
    Do Until InStr(tmpRyujinxName, "Ryujinx Console") <> False
        '�������д��ھ��
        Call EnumWindows(AddressOf EnumAllWindows, ByVal 0&)
        tmpRyujinxName = Join(Filter(Split(WindowList, vbCrLf), "Ryujinx Console"), vbCrLf)
        DoEvents
        Sleep 100
    Loop
    Shell "cmd /c taskkill /f /im Ryujinx.exe"
    tmpRyujinxName = Replace(tmpRyujinxName, "Ryujinx Console ", "")
    If InStr(tmpRyujinxName, "vulkan") Then
        ImageCombo1.Text = "Vulkan"
        txtVersion.Text = Replace(tmpRyujinxName, "-vulkan", "")
    ElseIf InStr(tmpRyujinxName, "ldn") Then
        ImageCombo1.Text = "LDN������"
        txtVersion.Text = tmpRyujinxName
    Else
        ImageCombo1.Text = "���߰�"
        txtVersion.Text = tmpRyujinxName
    End If
    txtVersion.SetFocus

    Dim FirmwareVersionArr() As String
    If AlwaysUseCloudFlare = "Never" Then
        FirmwareVersionArr = Split(Replace(Replace(Join(Filter(Split(Replace(Replace(GetDataStr2("https://archive.org/download/nintendo-switch-global-firmwares/nintendo-switch-global-firmwares_files.xml"), Chr(34), ""), " ", ""), vbLf), ".zip"), vbCrLf), "<filename=Firmware", ""), ".zipsource=original>", ""), vbCrLf)
    Else
        FirmwareVersionArr = Split(Replace(Replace(Join(Filter(Split(Replace(Replace(GetDataStr2(CloudFlareReverseProxyUrl & "/https://archive.org/download/nintendo-switch-global-firmwares/nintendo-switch-global-firmwares_files.xml"), Chr(34), ""), " ", ""), vbLf), ".zip"), vbCrLf), "<filename=Firmware", ""), ".zipsource=original>", ""), vbCrLf)
    End If
    Dim I As Integer
    For I = 0 To (UBound(FirmwareVersionArr) - LBound(FirmwareVersionArr))
        cbFirmware.AddItem FirmwareVersionArr(I)
    Next
    If IsMissing Then
        cbFirmware.Text = "ѡ��̼��汾"
    Else
        cbFirmware.Text = RyujinxFirmware
    End If

End Sub

Private Sub Form_Initialize()
    InitCommonControls
End Sub

Private Sub ImageCombo1_Click()
    txtVersion.Text = "������ ..."
    If ImageCombo1.ListIndex = 2 Then
        Image1.Picture = frmRyujinxInstaller.ImageList2.ListImages(2).Picture
        Dim Tmp() As String
        Tmp = Split(GetRyujinxLDNVersionAli, vbCrLf)
        txtVersion.Text = Tmp(UBound(Tmp))
    Else
        Image1.Picture = frmRyujinxInstaller.ImageList2.ListImages(1).Picture
        txtVersion.Text = GetRyujinxVersion
    End If
    txtVersion.SetFocus
End Sub

Private Sub ImageCombo1_KeyPress(KeyAscii As Integer)
KeyAscii = 0
End Sub

Private Sub txtVersion_KeyPress(KeyAscii As Integer)
'ֻ����������
    If KeyAscii = 8 Or KeyAscii = 46 Then Exit Sub
    If KeyAscii < 48 Or KeyAscii > 57 Then KeyAscii = 0
End Sub

Private Sub MoveRyujinxDataFolder()
    On Error GoTo MoveFailed2
    Dim fso As Object, folder As Object
    'Ǩ�� Ryujinx �����ļ���
    'RyujinxPreDataFolder ǰ�����ļ���
    If RyujinxPreDataFolder = RyujinxCustomDataFolder Then Exit Sub
    If RyujinxPreDataFolder = "False" Or RyujinxPreDataFolder = "<�����������>" Then RyujinxPreDataFolder = RyujinxInstallFolder & "\portable"
    If RyujinxCustomDataFolder = "False" Or RyujinxCustomDataFolder = "<�����������>" Then RyujinxCustomDataFolder = RyujinxInstallFolder & "\portable"
    If TestEmptyFolder(RyujinxCustomDataFolder) = False Then
        MsgBox "�µ������ļ���Ϊ:" & RyujinxCustomDataFolder & vbCrLf & "����ļ��зǿգ�Ǩ��ʧ�ܣ�" & vbCrLf & "����ո��ļ���֮�����ԡ�", vbOKOnly + vbCritical, "����"
        GoTo MoveFailed
    End If
    If RyujinxCustomDataFolder <> RyujinxInstallFolder & "\portable" Then
        '���ļ��п��ˣ�����Ǩ��
        '�ƶ�����
        Set fso = CreateObject("Scripting.FileSystemObject")    '����FSO
        Set folder = fso.GetFolder(RyujinxPreDataFolder)
        RmDir RyujinxCustomDataFolder
        folder.Move RyujinxCustomDataFolder
        Set folder = Nothing
        Set fso = Nothing
        '������������
        Shell "cmd /c mklink /d /j " & Chr(34) & RyujinxInstallFolder & "\portable" & Chr(34) & " " & Chr(34) & RyujinxCustomDataFolder & Chr(34)
    Else
        'Ǩ�ƻ� portable �ļ���
        Shell "cmd /c rmdir " & Chr(34) & RyujinxInstallFolder & "\portable" & Chr(34)    ' ɾ���ɵķ�������
        '�ƶ�����
        Set fso = CreateObject("Scripting.FileSystemObject")    '����FSO
        Set folder = fso.GetFolder(RyujinxPreDataFolder)
        RmDir RyujinxInstallFolder & "\portable"
        folder.Move RyujinxInstallFolder & "\portable"
        Set folder = Nothing
        Set fso = Nothing
    End If
    MsgBox "�����ļ���Ǩ�Ƴɹ���" & vbCrLf & vbCrLf & "�� " & RyujinxPreDataFolder & "��" & vbCrLf & "Ǩ�Ƶ��� " & RyujinxCustomDataFolder & "��", vbOKOnly + vbInformation, "��ʾ"
    Exit Sub

MoveFailed:
    If RyujinxPreDataFolder = RyujinxInstallFolder & "\portable" Then RyujinxPreDataFolder = "False"
    If RyujinxCustomDataFolder = RyujinxInstallFolder & "\portable" Then RyujinxCustomDataFolder = "False"
    RyujinxCustomDataFolder = RyujinxPreDataFolder
    WriteIni "Ryujinx", "CustomDataFolder", RyujinxCustomDataFolder, RyujinxInstallFolder & "\RyujinxConfig.ini"
    Exit Sub

MoveFailed2:
    MsgBox "Ǩ��ʧ�ܣ�������δ֪����" & vbCrLf & "����ʱ���� " & CStr(Err.Number) & "��" & Err.Description, vbOKOnly + vbCritical, "����"
    If RyujinxPreDataFolder = RyujinxInstallFolder & "\portable" Then RyujinxPreDataFolder = "False"
    If RyujinxCustomDataFolder = RyujinxInstallFolder & "\portable" Then RyujinxCustomDataFolder = "False"
    RyujinxCustomDataFolder = RyujinxPreDataFolder
    WriteIni "Ryujinx", "CustomDataFolder", RyujinxCustomDataFolder, RyujinxInstallFolder & "\RyujinxConfig.ini"
    Exit Sub
End Sub

Private Function TestEmptyFolder(FolderName As String) As Boolean
    On Error GoTo Err
    RmDir (FolderName)    'ɾ��Ŀ¼����������ʾ��Ϊ��
    MkDir (FolderName)    '���½�Ŀ¼
    TestEmptyFolder = True
    Exit Function
Err:
    TestEmptyFolder = False
End Function
