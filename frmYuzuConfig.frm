VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{A5E8A7E4-5CB9-46EB-8987-15503F7E5563}#34.0#0"; "yfui.ocx"
Begin VB.Form frmYuzuConfig 
   BackColor       =   &H80000005&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "frmYuzuConfig"
   ClientHeight    =   4875
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
   Icon            =   "frmYuzuConfig.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4875
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
            Picture         =   "frmYuzuConfig.frx":54AA
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmYuzuConfig.frx":A964
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
      Data            =   "frmYuzuConfig.frx":F2C7
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
      Data            =   "frmYuzuConfig.frx":F2DF
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
      Data            =   "frmYuzuConfig.frx":F2F7
   End
   Begin VB.Label Labels 
      BackStyle       =   0  'Transparent
      Caption         =   "�Զ��������ļ��У�"
      ForeColor       =   &H001F1F1F&
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
      ForeColor       =   &H001F1F1F&
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
      ForeColor       =   &H001F1F1F&
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
      ForeColor       =   &H001F1F1F&
      Height          =   735
      Index           =   0
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   6255
   End
End
Attribute VB_Name = "frmYuzuConfig"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public IsMissing As Boolean, YuzuPreDataFolder As String
Attribute YuzuPreDataFolder.VB_VarUserMemId = 1073938432

Private Sub btnBrowse_Click()
    txtDataFolder.Text = ChooseDir("�Զ��������ļ���", Me)
    If txtDataFolder.Text = YuzuInstallFolder & "\user" Then
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
        YuzuBranch = ImageCombo1.Text
        YuzuVersion = txtVersion.Text
        YuzuFirmware = cbFirmware.Text
        WriteIni "Yuzu", "Version", YuzuVersion, YuzuInstallFolder & "\YuzuConfig.ini"
        WriteIni "Yuzu", "Branch", YuzuBranch, YuzuInstallFolder & "\YuzuConfig.ini"
        WriteIni "Yuzu", "Firmware", YuzuFirmware, YuzuInstallFolder & "\YuzuConfig.ini"

        If IsMissing = False Then
            If Checks.Value = False Then
                YuzuCustomDataFolder = "False"
            Else
                If txtDataFolder.Text = "<�����������>" Then
                    YuzuCustomDataFolder = "False"
                Else
                    YuzuCustomDataFolder = txtDataFolder.Text
                End If
            End If
            If YuzuCustomDataFolder = YuzuInstallFolder & "\user" Then YuzuCustomDataFolder = "False"
            MoveYuzuDataFolder
            WriteIni "Yuzu", "CustomDataFolder", YuzuCustomDataFolder, YuzuInstallFolder & "\YuzuConfig.ini"
        Else
            YuzuCustomDataFolder = "False"
            WriteIni "Yuzu", "CustomDataFolder", YuzuCustomDataFolder, YuzuInstallFolder & "\YuzuConfig.ini"
        End If
        If IsMissing Then
            Unload frmManage
            frmMain.Show
        Else
            frmManage.Show
        End If

        If IsMissing = True Then
            'Ǩ���������
            Dim fso As Object
            If Dir$(Environ("AppData") & "\yuzu", vbDirectory) <> "" Then
                'appdata����
                If Dir$(YuzuInstallFolder & "\user", vbDirectory) <> "" Then
                Else
                    'user������
                    Set fso = CreateObject("Scripting.FileSystemObject")    '����FSO
                    Set folder = fso.GetFolder(Environ("AppData") & "\yuzu")
                    folder.Move YuzuInstallFolder & "\user"
                    Set folder = Nothing
                    Set fso = Nothing
                    MsgBox "֮ǰ��ģ�������ݴ���� C �̣��Ѿ��Զ�Ǩ�Ƶ�ģ�����ļ��С�", vbOKOnly + vbInformation, "��ʾ"
                End If
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
    Debug.Print YuzuCustomDataFolder
    If YuzuCustomDataFolder = YuzuInstallFolder & "\user" Then
        YuzuCustomDataFolder = "False"
        WriteIni "Yuzu", "CustomDataFolder", YuzuCustomDataFolder, YuzuInstallFolder & "\YuzuConfig.ini"
    End If

    '�������úͽ���

    If YuzuCustomDataFolder = "False" Then
        Checks.Value = False
        btnBrowse.Visible = False
        txtDataFolder.Visible = False

        frmManage.Hide
        frmYuzuConfig.SetFocus
    Else
        Checks.Value = True
        btnBrowse.Visible = True
        txtDataFolder.Visible = True
        txtDataFolder.Text = YuzuCustomDataFolder
    End If
    If Left(YuzuBranch, 5) = "Ԥ�Ȳ��԰�" Then
        Image1.Picture = frmYuzuInstaller.ImageList2.ListImages(1).Picture
    Else
        Image1.Picture = frmYuzuInstaller.ImageList2.ListImages(2).Picture
    End If
    YuzuPreDataFolder = YuzuCustomDataFolder

    Me.Caption = "Yuzu ģ�����������"
    If IsMissing Then
        'û��YuzuConfig.ini
        Labels(0).Caption = "��ģ���������ñ����߰�װ�ģ�" & vbCrLf & "�����������İ汾��Ϣ��"
        Labels(3).Visible = False
        Checks.Visible = False
        txtDataFolder.Visible = False
        btnBrowse.Visible = fase
        btnSave.Top = 2520
        btnCancel.Top = 2520
        Me.Height = 3650
    Else
        Labels(0).Caption = "Yuzu �汾��Ϣ����" & vbCrLf & "������ֶ�������ģ�����������ڴ˸��İ汾��Ϣ��"
        btnSave.Top = 4200
        btnCancel.Top = 4200
        Me.Height = 5325
    End If

    ImageCombo1.Clear
    ImageCombo1.AddItem "Ԥ�Ȳ��԰�"
    ImageCombo1.AddItem "���߰�"
    ImageCombo1.Text = "Ԥ�Ȳ��԰�"
    txtVersion.SetFocus

    cbFirmware.Text = "������ ..."

    DoEvents
    'û��config
    WindowList = ""
    Shell YuzuInstallFolder & "\yuzu.exe", vbHide
    Dim tmpYuzuName As String
    Do Until InStr(tmpYuzuName, "yuzu") <> False
        '�������д��ھ��
        Call EnumWindows(AddressOf EnumAllWindows, ByVal 0&)
        tmpYuzuName = Join(Filter(Split(WindowList, vbCrLf), "yuzu"), vbCrLf)
        DoEvents
        Sleep 50
    Loop
    Shell "cmd /c taskkill /f /im yuzu.exe"
    If InStr(tmpYuzuName, "Early Access") Then
        ImageCombo1.Text = "Ԥ�Ȳ��԰�"
    Else
        ImageCombo1.Text = "���߰��"
    End If
    Image1.Picture = frmYuzuInstaller.ImageList2.ListImages(ImageCombo1.ListIndex + 1).Picture
    tmpYuzuName = Replace(Replace(tmpYuzuName, "yuzu Early Access ", ""), "yuzu ", "")
    txtVersion.Text = tmpYuzuName

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
        cbFirmware.Text = YuzuFirmware
    End If

End Sub


Private Sub Form_Initialize()
    InitCommonControls
End Sub

Private Sub Form_Unload(Cancel As Integer)
    If IsMissing Then
        frmMain.Show
    Else
        frmManage.Show
    End If
End Sub

Private Sub ImageCombo1_Click()
    Image1.Picture = frmYuzuInstaller.ImageList2.ListImages(ImageCombo1.ListIndex + 1).Picture
    txtVersion.SetFocus
    txtVersion.Text = "������ ..."
    If ImageCombo1.ListIndex = 0 Then
        txtVersion.Text = GetYuzuVersion
    Else
        txtVersion.Text = GetYuzuMLVersion
    End If
End Sub



Private Sub ImageCombo1_KeyPress(KeyAscii As Integer)
KeyAscii = 0
End Sub

Private Sub txtVersion_KeyPress(KeyAscii As Integer)
'ֻ����������
    If KeyAscii = 8 Then
        Exit Sub
    Else
        If KeyAscii < 48 Or KeyAscii > 57 Then KeyAscii = 0
        If Len(txtVersion.Text) >= 4 Then KeyAscii = 0
    End If
End Sub

Private Sub MoveYuzuDataFolder()
    On Error GoTo MoveFailed2
    Dim fso As Object, folder As Object
    'Ǩ�� Yuzu �����ļ���
    'YuzuPreDataFolder ǰ�����ļ���
    If YuzuPreDataFolder = YuzuCustomDataFolder Then Exit Sub
    If YuzuPreDataFolder = "False" Or YuzuPreDataFolder = "<�����������>" Then YuzuPreDataFolder = YuzuInstallFolder & "\user"
    If YuzuCustomDataFolder = "False" Or YuzuCustomDataFolder = "<�����������>" Then YuzuCustomDataFolder = YuzuInstallFolder & "\user"
    If TestEmptyFolder(YuzuCustomDataFolder) = False Then
        MsgBox "�µ������ļ���Ϊ:" & YuzuCustomDataFolder & vbCrLf & "����ļ��зǿգ�Ǩ��ʧ�ܣ�" & vbCrLf & "����ո��ļ���֮�����ԡ�", vbOKOnly + vbCritical, "����"
        GoTo MoveFailed
    End If
    If YuzuCustomDataFolder <> YuzuInstallFolder & "\user" Then
        '���ļ��п��ˣ�����Ǩ��
        '�ƶ�����
        Set fso = CreateObject("Scripting.FileSystemObject")    '����FSO
        Set folder = fso.GetFolder(YuzuPreDataFolder)
        RmDir YuzuCustomDataFolder
        folder.Move YuzuCustomDataFolder
        Set folder = Nothing
        Set fso = Nothing
        '������������
        Shell "cmd /c mklink /d /j " & Chr(34) & YuzuInstallFolder & "\user" & Chr(34) & " " & Chr(34) & YuzuCustomDataFolder & Chr(34)
    Else
        'Ǩ�ƻ� User �ļ���
        Shell "cmd /c rmdir " & Chr(34) & YuzuInstallFolder & "\user" & Chr(34)    ' ɾ���ɵķ�������
        '�ƶ�����
        Set fso = CreateObject("Scripting.FileSystemObject")    '����FSO
        Set folder = fso.GetFolder(YuzuPreDataFolder)
        RmDir YuzuInstallFolder & "\user"
        folder.Move YuzuInstallFolder & "\user"
        Set folder = Nothing
        Set fso = Nothing
    End If
    MsgBox "�����ļ���Ǩ�Ƴɹ���" & vbCrLf & vbCrLf & "�� " & YuzuPreDataFolder & "��" & vbCrLf & "Ǩ�Ƶ��� " & YuzuCustomDataFolder & "��", vbOKOnly + vbInformation, "��ʾ"
    Exit Sub

MoveFailed:
    If YuzuPreDataFolder = YuzuInstallFolder & "\user" Then YuzuPreDataFolder = "False"
    If YuzuCustomDataFolder = YuzuInstallFolder & "\user" Then YuzuCustomDataFolder = "False"
    YuzuCustomDataFolder = YuzuPreDataFolder
    WriteIni "Yuzu", "CustomDataFolder", YuzuCustomDataFolder, YuzuInstallFolder & "\YuzuConfig.ini"
    Exit Sub

MoveFailed2:
    MsgBox "Ǩ��ʧ�ܣ�������δ֪����" & vbCrLf & "����ʱ���� " & CStr(Err.Number) & "��" & Err.Description, vbOKOnly + vbCritical, "����"
    If YuzuPreDataFolder = YuzuInstallFolder & "\user" Then YuzuPreDataFolder = "False"
    If YuzuCustomDataFolder = YuzuInstallFolder & "\user" Then YuzuCustomDataFolder = "False"
    YuzuCustomDataFolder = YuzuPreDataFolder
    WriteIni "Yuzu", "CustomDataFolder", YuzuCustomDataFolder, YuzuInstallFolder & "\YuzuConfig.ini"
    Exit Sub
End Sub
