VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{48E59290-9880-11CF-9754-00AA00C00908}#1.0#0"; "MSINET.OCX"
Begin VB.Form frmYuzuInstaller 
   BackColor       =   &H80000005&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "��װ Yuzu"
   ClientHeight    =   5085
   ClientLeft      =   5625
   ClientTop       =   4485
   ClientWidth     =   8760
   BeginProperty Font 
      Name            =   "΢���ź� Light"
      Size            =   12
      Charset         =   134
      Weight          =   290
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmYuzuInstaller.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5085
   ScaleWidth      =   8760
   Begin VB.ComboBox ComboVersion 
      BeginProperty Font 
         Name            =   "΢���ź� Light"
         Size            =   10.5
         Charset         =   134
         Weight          =   290
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   420
      Left            =   4080
      TabIndex        =   20
      Text            =   "Combo1"
      Top             =   2520
      Width           =   1695
   End
   Begin VB.CommandButton btnShortcut 
      Caption         =   "���������ݷ�ʽ"
      Height          =   555
      Left            =   240
      TabIndex        =   18
      Top             =   4320
      Width           =   2775
   End
   Begin VB.CommandButton btnDelNo 
      Caption         =   "��"
      Height          =   555
      Left            =   7080
      TabIndex        =   17
      Top             =   4320
      Width           =   1455
   End
   Begin VB.CommandButton btnDelYes 
      Caption         =   "��"
      Height          =   555
      Left            =   5280
      TabIndex        =   16
      Top             =   4320
      Width           =   1455
   End
   Begin InetCtlsObjects.Inet Inet1 
      Left            =   840
      Top             =   4320
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
   End
   Begin NSEmuHelper.ucDownload ucDownload1 
      Height          =   255
      Left            =   0
      TabIndex        =   15
      Top             =   4800
      Width           =   615
      _ExtentX        =   1085
      _ExtentY        =   450
   End
   Begin VB.ComboBox cbFirmware 
      BeginProperty Font 
         Name            =   "΢���ź� Light"
         Size            =   10.5
         Charset         =   134
         Weight          =   290
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   420
      Left            =   3120
      TabIndex        =   12
      Text            =   "Combo1"
      Top             =   3120
      Width           =   4095
   End
   Begin VB.OptionButton opFirmware 
      BackColor       =   &H80000005&
      Caption         =   "��������"
      Height          =   375
      Index           =   1
      Left            =   1320
      TabIndex        =   11
      Top             =   3120
      Width           =   1455
   End
   Begin VB.OptionButton opFirmware 
      BackColor       =   &H80000005&
      Caption         =   "����ѡ��"
      Height          =   375
      Index           =   0
      Left            =   1320
      TabIndex        =   10
      Top             =   2520
      Value           =   -1  'True
      Width           =   1455
   End
   Begin VB.TextBox txtFirmware 
      BeginProperty Font 
         Name            =   "΢���ź� Light"
         Size            =   10.5
         Charset         =   134
         Weight          =   290
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      IMEMode         =   3  'DISABLE
      Left            =   3120
      TabIndex        =   9
      Text            =   "<�������������֮�����·�ѡ��汾��>"
      Top             =   2520
      Width           =   4095
   End
   Begin VB.TextBox txtKey 
      BeginProperty Font 
         Name            =   "΢���ź� Light"
         Size            =   10.5
         Charset         =   134
         Weight          =   290
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      IMEMode         =   3  'DISABLE
      Left            =   1560
      TabIndex        =   8
      Text            =   "<�����������>"
      Top             =   2520
      Width           =   5655
   End
   Begin VB.CommandButton btnBrowse 
      Caption         =   "���"
      Height          =   375
      Left            =   7560
      TabIndex        =   7
      Top             =   2520
      Width           =   975
   End
   Begin VB.CommandButton btnNextStep 
      Caption         =   "��һ��"
      Height          =   555
      Left            =   7080
      TabIndex        =   6
      Top             =   4320
      Width           =   1455
   End
   Begin VB.TextBox txtVersion 
      BeginProperty Font 
         Name            =   "΢���ź� Light"
         Size            =   10.5
         Charset         =   134
         Weight          =   290
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      IMEMode         =   3  'DISABLE
      Left            =   4080
      TabIndex        =   5
      Text            =   "������ ..."
      Top             =   2520
      Width           =   1695
   End
   Begin MSComctlLib.ImageList ImageList2 
      Left            =   6120
      Top             =   3840
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   256
      ImageHeight     =   256
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   2
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmYuzuInstaller.frx":54AA
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmYuzuInstaller.frx":6FAE
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   7320
      Top             =   1320
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
            Picture         =   "frmYuzuInstaller.frx":B911
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmYuzuInstaller.frx":10DCB
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ImageCombo ImageCombo1 
      Height          =   435
      Left            =   1560
      TabIndex        =   0
      Top             =   2520
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   767
      _Version        =   393216
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "΢���ź� Light"
         Size            =   10.5
         Charset         =   134
         Weight          =   290
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Text            =   "ImageCombo1"
      ImageList       =   "ImageList1"
   End
   Begin VB.Label lblProgBar 
      BackStyle       =   0  'Transparent
      Height          =   375
      Left            =   120
      TabIndex        =   19
      Top             =   3120
      Width           =   8535
   End
   Begin VB.Label Labels 
      BackStyle       =   0  'Transparent
      Caption         =   "indicator2"
      Height          =   495
      Index           =   5
      Left            =   120
      TabIndex        =   14
      Top             =   2520
      Width           =   8415
   End
   Begin VB.Label Labels 
      BackStyle       =   0  'Transparent
      Caption         =   "indicator1"
      Height          =   495
      Index           =   4
      Left            =   120
      TabIndex        =   13
      Top             =   2040
      Width           =   8415
   End
   Begin VB.Label Labels 
      BackStyle       =   0  'Transparent
      Caption         =   "ģ�����汾��"
      Height          =   495
      Index           =   3
      Left            =   120
      TabIndex        =   4
      Top             =   2520
      Width           =   2175
   End
   Begin VB.Label Labels 
      BackStyle       =   0  'Transparent
      Caption         =   "Steps"
      Height          =   975
      Index           =   2
      Left            =   120
      TabIndex        =   3
      Top             =   1200
      Width           =   6615
   End
   Begin VB.Image Image1 
      Height          =   1215
      Left            =   7320
      Stretch         =   -1  'True
      Top             =   240
      Width           =   1215
   End
   Begin VB.Label Labels 
      BackStyle       =   0  'Transparent
      Caption         =   "Steps"
      BeginProperty Font 
         Name            =   "΢���ź� Light"
         Size            =   15.75
         Charset         =   134
         Weight          =   290
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   1
      Left            =   120
      TabIndex        =   2
      Top             =   600
      Width           =   6975
   End
   Begin VB.Label Labels 
      BackStyle       =   0  'Transparent
      Caption         =   "��װ Yuzu"
      Height          =   495
      Index           =   0
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   3735
   End
End
Attribute VB_Name = "frmYuzuInstaller"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public DownloadCompleted As Boolean, TitlePrefix As String
Attribute DownloadCompleted.VB_VarHelpID = -1
'1��������װ
'2������ģ����
'3���̼�
Public iIsEarlyAccess As Boolean, iVersion As String, iKeyPath As String, iFirmwareOnline As Boolean, iFirmwarePath As String, iFirmwareVersion As String
'1����֧ True EA False Mainline
'2���汾��
Public CurrentStep As Integer, YuzuVersionName As String
Private Sub btnBrowse_Click()
Debug.Print CurrentStep
'���
Select Case CurrentStep
    Case 2
        txtKey.Text = ChooseFile("ѡ����Կ�ļ� (prod.keys)", "NS ��Կ�ļ�", "*.keys", frmYuzuInstaller.hWnd)
    Case 3
        If opFirmware(0).Value Then
            txtFirmware.Text = ChooseFile("ѡ��̼��� (zip ѹ���ļ�)", "NS �̼���", "*.zip", frmYuzuInstaller.hWnd)
            If txtFirmware.Text <> "" Then
                Dim TmpName As String
                TmpName = Split(txtFirmware.Text, "\")(UBound(Split(txtFirmware.Text, "\")))
                If InStr(TmpName, "Firmware ") <> 0 Then
                    cbFirmware.Text = Replace(Replace(TmpName, ".zip", ""), "Firmware ", "")
                ElseIf InStr(TmpName, "Firmware_") <> 0 Then
                    cbFirmware.Text = Replace(Replace(TmpName, ".zip", ""), "Firmware_", "")
                ElseIf InStr(TmpName, "registered-") <> 0 Then
                    cbFirmware.Text = Replace(Replace(TmpName, ".zip", ""), "registered-", "")
                End If
            End If
        End If
    Case Else
        Exit Sub
End Select
End Sub


Private Sub btnNextStep_Click()
'��һ��
If InstallMode = 1 Then
    Select Case CurrentStep
        Case 1
            Step2
        Case 2
            Step3
        Case 3
            Step4
        Case Else
            Exit Sub
    End Select
ElseIf InstallMode = 2 Then
    Step4
ElseIf InstallMode = 3 Then
    Step4
End If
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
MsgBox "��ݷ�ʽ�����ɹ���", vbOKOnly, "��ʾ"
End Sub

Private Sub Form_Activate()
'����
If InstallMode = 1 Then
    If YuzuInstallFolder = "D:\Yuzu" Then
        If MsgBox("��ǰģ������װĿ¼ΪĬ�ϵ� D:\Yuzu����ȷ���Ƿ�װ�����ļ��У�" & vbCrLf & "�㡰���Իص������棬������½ǵ����ø���ģ�����ļ��С�" & vbCrLf & "��Ҳ���԰�ģ�����ļ�����Ϊ���Ѿ�װ�õ�ģ����λ�ã�������Զ�ʶ��", vbQuestion + vbYesNo, "ȷ����") = 7 Then
            frmMain.Show
            Unload Me
            Exit Sub
        End If
    End If
    TitlePrefix = "��װ Yuzu"
    Labels(0).Caption = TitlePrefix
    DoEvents
    CurrentStep = 1
    Step1
ElseIf InstallMode = 2 Then
    TitlePrefix = "���� Yuzu"
    Labels(0).Caption = TitlePrefix
    DoEvents
    CurrentStep = 1
    Step1
ElseIf InstallMode = 3 Then
    TitlePrefix = "���¹̼�"
    Labels(0).Caption = TitlePrefix
    DoEvents
    CurrentStep = 3
    Step3
End If
If InstallMode <> 1 Then RemoveTemps

End Sub

Private Sub Step1()
'��һ��
'����
btnShortcut.Visible = False
btnDelYes.Visible = False
btnDelNo.Visible = False
Labels(4).Visible = False
Labels(5).Visible = False
cbFirmware.Visible = False
opFirmware(0).Visible = False
opFirmware(1).Visible = False
btnBrowse.Visible = False
txtFirmware.Visible = False
txtKey.Visible = False
txtVersion.Visible = True
ComboVersion.Visible = True
Image1.Picture = ImageList2.ListImages(1).Picture
If InstallMode = 1 Then
Me.Caption = TitlePrefix & " - Step 1"
    Labels(1).Caption = "Step 1 - ѡ��ģ�����汾"
    Labels(2).Caption = "�ڰ�װģ����֮ǰ������Ҫ�Ƚ��м���ѡ��" & vbCrLf & "���׷�����¹��ܣ���ʹ��Ԥ�Ȳ��԰棬���׷���ȶ�����ʹ�����߰档"
Else
    Me.Caption = TitlePrefix
    Labels(1).Caption = "ѡ��ģ�����汾"
    Labels(2).Caption = "��ѡ��Ҫ��������ģ�����汾��" & vbCrLf & "���׷�����¹��ܣ���ʹ��Ԥ�Ȳ��԰棬���׷���ȶ�����ʹ�����߰档"
End If
Labels(3).Caption = "ģ�����汾��"
ImageCombo1.ComboItems.Clear
ImageCombo1.ComboItems.Add 1, "EA", "Ԥ�Ȳ��԰�", 1
ImageCombo1.ComboItems.Add 2, "Mainline", "���߰�", 2
ImageCombo1.ComboItems(1).Selected = True
If DownloadSource = "Github" Then
    txtVersion.Visible = True
    ComboVersion.Visible = False
    txtVersion.Text = GetYuzuVersion
    txtVersion.SetFocus
Else
    txtVersion.Visible = False
    ComboVersion.Visible = True
    Dim YuzuVersion() As String
    ComboVersion.Clear
    ComboVersion.Text = "������ ..."
    YuzuVersion = Split(GetYuzuVersionAli, vbCrLf)
    Dim I As Integer
    For I = 0 To (UBound(YuzuVersion) - LBound(YuzuVersion))
    ComboVersion.AddItem YuzuVersion(I)
    ComboVersion.Text = YuzuVersion(I)
    ComboVersion.SetFocus
    Next
End If
'ȷ���ļ��д���
MkDirs YuzuInstallFolder
End Sub

Private Sub Step2()
On Error GoTo Step2Error
If DownloadSource = "Github" Then
    If txtVersion.Text = "������ ..." Then Exit Sub
    iVersion = txtVersion.Text
Else
    If ComboVersion.Text = "������ ..." Then Exit Sub
    iVersion = ComboVersion.Text
End If
CurrentStep = 2
'�ڶ���
'���õ�һ�����
If ImageCombo1.SelectedItem.Index = 1 Then
    iIsEarlyAccess = True
    YuzuVersionName = "yuzu-windows-msvc-early-access"
ElseIf ImageCombo1.SelectedItem.Index = 2 Then
    iIsEarlyAccess = False
    YuzuVersionName = "yuzu-windows-msvc"
Else
    Exit Sub
End If
'����
ImageCombo1.Visible = False
txtVersion.Visible = False
ComboVersion.Visible = False
btnBrowse.Visible = True
txtKey.Visible = True
Me.Caption = TitlePrefix & " - Step 2"
Labels(1).Caption = "Step 2 - ѡ����Կ�ļ�"
Labels(2).Caption = "NS ģ������Ҫ��Կ (Keys) �ļ���������Ϸ��" & vbCrLf & "���������ص�Ⱥ���ҵ��� (prod.keys)����������򿪡�"
Labels(3).Caption = "��Կ�ļ���"

Exit Sub
Step2Error:
ImageCombo1.ComboItems(1).Selected = True
Exit Sub
End Sub

Private Sub Step3()
If InstallMode = 1 Then
If txtKey.Text = "<�����������>" Or txtKey.Text = "" Then Exit Sub
CurrentStep = 3
'������
'���õڶ������
iKeyPath = txtKey.Text
'����
End If
ComboVersion.Visible = False
ImageCombo1.Visible = False
btnShortcut.Visible = False
btnDelYes.Visible = False
btnDelNo.Visible = False
Labels(4).Visible = False
Labels(5).Visible = False
cbFirmware.Visible = True
btnBrowse.Visible = True
cbFirmware.Visible = True
txtKey.Visible = False
txtFirmware.Visible = True
opFirmware(0).Visible = True
opFirmware(1).Visible = True
If InstallMode = 1 Then
    Me.Caption = TitlePrefix & " - Step 3"
    Labels(1).Caption = "Step 3 - ѡ��̼�"
    Labels(2).Caption = "Yuzu ��Ҫ�̼�����ʹ�󲿷���Ϸ�������С�" & vbCrLf & "���������ص�Ⱥ���ҵ��̼�������ʹ�á��������ء���" & vbCrLf & "�̼��汾��ҪС�ڵ�����Կ�汾��"
ElseIf InstallMode = 3 Then
    If Left(YuzuBranch, 5) = "Ԥ�Ȳ��԰�" Then
        Image1.Picture = ImageList2.ListImages(1).Picture
    Else
        Image1.Picture = ImageList2.ListImages(2).Picture
    End If
    Me.Caption = TitlePrefix & " - ѡ��̼�"
    Labels(1).Caption = "���¹̼��汾"
    Labels(2).Caption = "������ڴ˸��»�����̼��İ汾��" & vbCrLf & "���������ص�Ⱥ���ҵ��̼�������ʹ�á��������ء���" & vbCrLf & "�̼��汾��ҪС�ڵ�����Կ�汾��"
End If
Labels(3).Caption = "�̼�����"
'----
cbFirmware.Clear
cbFirmware.Text = "������ ..."
Dim FirmwareVersionArr() As String
FirmwareVersionArr = Split(Replace(Replace(Join(Filter(Split(Replace(Replace(GetDataStr2(CloudFlareReverseProxyUrl & "/https://archive.org/download/nintendo-switch-global-firmwares/nintendo-switch-global-firmwares_files.xml"), Chr(34), ""), " ", ""), vbLf), ".zip"), vbCrLf), "<filename=Firmware", ""), ".zipsource=original>", ""), vbCrLf)
Dim I As Integer
For I = 0 To (UBound(FirmwareVersionArr) - LBound(FirmwareVersionArr))
cbFirmware.AddItem FirmwareVersionArr(I)
Next
cbFirmware.Text = "ѡ��̼��汾"
End Sub

Private Sub Step4()
Dim fso As Object, folder As Object
Set fso = CreateObject("scripting.filesystemobject") '����FSO����
'dependencies
    
On Error Resume Next
'���Ĳ�����ʼ��װ��
If InstallMode = 1 Or InstallMode = 3 Then
    '��һ�����
    If cbFirmware.Text = "ѡ��̼��汾" Then Exit Sub
    If opFirmware(0).Value Then
        If txtFirmware.Text = "<�������������֮�����·�ѡ��汾��>" Or txtFirmware.Text = "" Then Exit Sub
        iFirmwareOnline = False
        iFirmwareVersion = cbFirmware.Text
        iFirmwarePath = txtFirmware.Text
    Else
        iFirmwareOnline = True
        iFirmwareVersion = cbFirmware.Text
        If DownloadSource = "Github" Then
            iFirmwarePath = CloudFlareReverseProxyUrl & "/https://archive.org/download/nintendo-switch-global-firmwares/Firmware " & cbFirmware.Text & ".zip"
        Else
            iFirmwarePath = "https://" & AliyundriveDomain & "/ns_emu_helper/NSFirmwareMirror/Firmware_" & cbFirmware.Text & ".zip"
        End If
        'Legacy reverse proxy for testing purpose, uncomment it when new reverse proxy is not work
        'iFirmwarePath = "https://download.sydzy.workers.dev/api/download?url=https://archive.org/download/nintendo-switch-global-firmwares/Firmware " & cbFirmware.Text & ".zip"
    End If
ElseIf InstallMode = 2 Then
    If DownloadSource = "Github" Then
        If txtVersion.Text = "������ ..." Then Exit Sub
        iVersion = txtVersion.Text
    Else
        If ComboVersion.Text = "������ ..." Then Exit Sub
        iVersion = ComboVersion.Text
    End If
    '���õ�һ�����
    If ImageCombo1.SelectedItem.Index = 1 Then
        iIsEarlyAccess = True
        YuzuVersionName = "yuzu-windows-msvc-early-access"
    ElseIf ImageCombo1.SelectedItem.Index = 2 Then
        iIsEarlyAccess = False
        YuzuVersionName = "yuzu-windows-msvc"
    Else
        Exit Sub
    End If
End If

CurrentStep = 4
'����
ImageCombo1.Visible = False
txtVersion.Visible = False
ComboVersion.Visible = False
cbFirmware.Visible = False
txtFirmware.Visible = False
opFirmware(0).Visible = False
opFirmware(1).Visible = False
Labels(3).Visible = False
btnNextStep.Visible = False
btnBrowse.Visible = False
Labels(4).Visible = True
Labels(5).Visible = True

Labels(2).Caption = "�������Ҫʮ�����ӣ�������������ȱ��衣" & vbCrLf & "��������״���͵������ܣ���װ�ٶȻ�������ͬ��"
If InstallMode = 1 Then
    Me.Caption = "��װ Yuzu - ���ڰ�װ"
    If iIsEarlyAccess Then
        Labels(1).Caption = "���ڰ�װ Yuzu Ԥ�Ȳ��԰� " & iVersion & " ..."
    Else
        Labels(1).Caption = "���ڰ�װ Yuzu ���߰� " & iVersion & " ..."
    End If
ElseIf InstallMode = 2 Then
    Me.Caption = "���� Yuzu - ���ڰ�װ"
    If iIsEarlyAccess Then
        Labels(1).Caption = "���ڸ��� Yuzu ��Ԥ�Ȳ��԰� " & iVersion & " ..."
    Else
        Labels(1).Caption = "���ڸ��� Yuzu �����߰� " & iVersion & " ..."
    End If
ElseIf InstallMode = 3 Then
    Me.Caption = "���¹̼� - ���ڰ�װ"
    Labels(1).Caption = "���ڰ�װ�̼� ..."
    GoTo FirmwareInstallation
End If

'����ģ������������
DoEvents
Labels(4).Caption = "׼����װ ..."
Labels(5).Caption = ""
iVersion = CStr(CInt(iVersion))
Dim YuzuUrl As String
If DownloadSource = "Github" Then
    If iIsEarlyAccess Then
        YuzuUrl = "https://github.com/PineappleEA/pineapple-src/releases/download/EA-" & iVersion & "/Windows-Yuzu-EA-" & iVersion & ".7z"
    Else
        '����
        Dim TmpArr() As String
        TmpArr = Split(Replace(GetDataStr2(CloudFlareReverseProxyUrl & "/https://api.github.com/repos/yuzu-emu/yuzu-mainline/releases"), Chr(34), ""), ",")
        If Err.Number = 9 Then
            MsgBox "����ʱ���� (9): �±�Խ�磬�������������� CloudFlare ��ͨ�������⡣"
            End
        End If
        Dim I As Integer, j As Integer
        For I = LBound(TmpArr) To UBound(TmpArr)
            If TmpArr(I) = "tag_name:mainline-0-" & iVersion Then Exit For
        Next
        j = I
        For I = j To UBound(TmpArr)
            If InStr(TmpArr(I), ".7z") <> 0 Then
                Exit For
            End If
        Next
        YuzuUrl = "https://github.com/yuzu-emu/yuzu-mainline/releases/download/mainline-0-" & iVersion & "/" & Replace(TmpArr(I), "name:", "")
    End If
Else
    '����
    If iIsEarlyAccess Then
        YuzuUrl = "https://" & AliyundriveDomain & "/ns_emu_helper/YuzuEAMirror/Windows-Yuzu-EA-" & iVersion & ".7z"
    Else
        YuzuUrl = "https://" & AliyundriveDomain & "/ns_emu_helper/YuzuMainlineMirror/yuzu-windows-msvc-" & iVersion & ".7z"
    End If
End If

If CheckFileExists(YuzuInstallFolder & "\Yuzu.7z") = False Then
If DownloadSource = "Github" Then
    If AlwaysUseCloudFlare = False Then
        DoEvents
        'github��ͨ�Բ���
        Labels(4).Caption = "���ڲ��� Github ��ͨ�� ..."
        Labels(5).Caption = "��� Github ������ͨ����ʹ�� CloudFlare Workers��"
        Dim Tmp As String
        Tmp = "timeout"
        Inet1.Cancel
        Inet1.Protocol = icHTTPS
        Inet1.Url = "https://github.com/opensearch.xml"
        Inet1.RequestTimeout = 10
        Tmp = Inet1.OpenURL
        If Err.Number = 35761 Then
            Labels(4).Caption = "��������ģ������ʹ�� CloudFlare Workers ..."
            YuzuUrl = CloudFlareReverseProxyUrl & "\" & YuzuUrl
        Else
            If InStr(Tmp, "OpenSearchDescription") = 2 Then
                Labels(4).Caption = "��������ģ������ʹ�� Github ..."
            Else
                Labels(4).Caption = "��������ģ������ʹ�� CloudFlare Workers ..."
                YuzuUrl = CloudFlareReverseProxyUrl & "\" & YuzuUrl
            End If
        End If
        Labels(5).Caption = "׼������ ..."
    Else
        YuzuUrl = CloudFlareReverseProxyUrl & "\" & YuzuUrl
    End If
Else
    Labels(4).Caption = "��������ģ���� ..."
End If
End If

DoEvents
'����ģ����
If CheckFileExists(YuzuInstallFolder & "\Yuzu.7z") = False Then
    PBarLoad 1, Me.hWnd, lblProgBar.Left \ Screen.TwipsPerPixelX, lblProgBar.Top \ Screen.TwipsPerPixelY, lblProgBar.Width \ Screen.TwipsPerPixelX, lblProgBar.Height \ Screen.TwipsPerPixelY
    PBarSetRange 1, 0, 100
    PBarSetPos 1, 0
    AsyncReads(0) = YuzuUrl
    AsyncReads(1) = YuzuInstallFolder & "\Yuzu.7z"
    ucDownload1.DownloadFile AsyncReads(0), AsyncReads(1)
    DoEvents
    DownloadCompleted = False
    Do Until DownloadCompleted
        Sleep 100
        DoEvents
    Loop
    Sleep 2000
    DoEvents
    PBarUnload 1
End If

FirmwareInstallation:
If InstallMode = 1 Or InstallMode = 3 Then
    '���ع̼�
    DoEvents
    If CheckFileExists(YuzuInstallFolder & "\Firmware.zip") = False Then
        If iFirmwareOnline Then
            Labels(4).Caption = "�������ع̼��������ĵȴ� ..."
            Labels(5).Caption = "׼������ ..."
            PBarLoad 1, Me.hWnd, lblProgBar.Left \ Screen.TwipsPerPixelX, lblProgBar.Top \ Screen.TwipsPerPixelY, lblProgBar.Width \ Screen.TwipsPerPixelX, lblProgBar.Height \ Screen.TwipsPerPixelY
            PBarSetRange 1, 0, 100
            PBarSetPos 1, 0
            DoEvents
            AsyncReads(0) = iFirmwarePath
            AsyncReads(1) = YuzuInstallFolder & "\Firmware.zip"
            ucDownload1.DownloadFile AsyncReads(0), AsyncReads(1)
            DoEvents
            DownloadCompleted = False
            Do Until DownloadCompleted
                Sleep 100
                DoEvents
            Loop
            Sleep 2000
            DoEvents
            PBarUnload 1
            DoEvents
        Else
            Labels(4).Caption = "���ڼ��� ..."
            Labels(5).Caption = ""
            PBarUnload 1
            DoEvents
        End If
    End If
End If

If InstallMode = 1 Then
    DoEvents
    '���� Sysdata (shared fonts)
    If CheckFileExists(YuzuInstallFolder & "\Sysdata.zip") = False Then
        Labels(4).Caption = "�������� Shared fonts ..."
        PBarLoad 1, Me.hWnd, lblProgBar.Left \ Screen.TwipsPerPixelX, lblProgBar.Top \ Screen.TwipsPerPixelY, lblProgBar.Width \ Screen.TwipsPerPixelX, lblProgBar.Height \ Screen.TwipsPerPixelY
        PBarSetRange 1, 0, 100
        PBarSetPos 1, 0
        AsyncReads(0) = "https://" & AliyundriveDomain & "/ali/%E6%9D%82%E4%B8%83%E6%9D%82%E5%85%AB/sysdata.zip"
        AsyncReads(1) = YuzuInstallFolder & "\Sysdata.zip"
        ucDownload1.DownloadFile AsyncReads(0), AsyncReads(1)
        DoEvents
        DownloadCompleted = False
        Do Until DownloadCompleted
            Sleep 100
            DoEvents
        Loop
        Sleep 2000
        PBarUnload 1
        DoEvents
    End If
End If

ReInstall:
If InstallMode = 1 Or InstallMode = 2 Then

    'ɾ���ɰ汾
    If InstallMode = 2 Then
        Labels(4).Caption = "����ɾ��֮ǰ��ģ���� ..."
        Labels(5).Caption = ""
        DoEvents
        Shell "cmd /c rd /s /q " & Chr(34) & YuzuInstallFolder & "\plugins" & Chr(34), vbMinimizedNoFocus
        Shell "cmd /c cd " & Chr(34) & YuzuInstallFolder & Chr(34) & " && del /s /q *.tar.xz", vbMinimizedNoFocus
        DoEvents
        Shell "cmd /c del /s /q " & Chr(34) & YuzuInstallFolder & "\*.dll" & Chr(34)
        Shell "cmd /c del /s /q " & Chr(34) & YuzuInstallFolder & "\*.conf" & Chr(34)
        Shell "cmd /c del /s /q " & Chr(34) & YuzuInstallFolder & "\*.exe" & Chr(34)
        DoEvents
    End If
    '��װģ���� ��ѹ
    Labels(4).Caption = "���ڽ�ѹ������װģ���� ..."
    Labels(5).Caption = ""
    PBarLoad 1, Me.hWnd, lblProgBar.Left \ Screen.TwipsPerPixelX, lblProgBar.Top \ Screen.TwipsPerPixelY, lblProgBar.Width \ Screen.TwipsPerPixelX, lblProgBar.Height \ Screen.TwipsPerPixelY
    PBarSetRange 1, 0, 100
    PBarSetPos 1, 100
    DoEvents
    Unzip YuzuInstallFolder & "\Yuzu.7z", YuzuInstallFolder
    PBarUnload 1
    DoEvents
    '�����ļ�
    Set folder = fso.GetFolder(YuzuInstallFolder & "\" & YuzuVersionName & "\plugins")
    folder.Move YuzuInstallFolder & "\plugins"
    'XCopy YuzuInstallFolder & "\" & YuzuVersionName & "\plugins", YuzuInstallFolder & "\plugins"
    fso.CopyFile YuzuInstallFolder & "\" & YuzuVersionName & "\*.*", YuzuInstallFolder & "\", True
    DoEvents
    Shell "cmd /c rd /s /q " & Chr(34) & YuzuInstallFolder & "\" & YuzuVersionName & "" & Chr(34), vbHide
    DoEvents
    Shell "cmd /c cd " & Chr(34) & YuzuInstallFolder & Chr(34) & " && del /s /q *.tar.xz", vbHide
    DoEvents
End If
    
If CheckFileExists(YuzuInstallFolder & "\yuzu.exe") Then
    GoTo ReInstall
    Labels(5).Caption = "��ѹʧ�ܣ��������½�ѹ ..."
End If
If InstallMode = 1 Then
    '��װ��Կ
    Labels(4).Caption = "���ڰ�װ��Կ ..."
    DoEvents
    MkDirs YuzuInstallFolder & "\user\keys"
    FileCopy iKeyPath, YuzuInstallFolder & "\user\keys\prod.keys"
End If

If InstallMode = 1 Or InstallMode = 3 Then
    If InstallMode = 3 Then
        Labels(4).Caption = "����ɾ���ɹ̼� ..."
        DoEvents
        Shell "cmd /c rd /s /q " & Chr(34) & YuzuInstallFolder & "\user\nand\system\Contents" & Chr(34), vbMinimizedNoFocus
        Sleep 10000
    End If
    '��װ�̼�
        '�ļ���
    Labels(4).Caption = "���ڽ�ѹ������װ�̼��� ..."
    DoEvents
    MkDirs YuzuInstallFolder & "\user\nand\system\Contents\registered"
    DoEvents
        '��ѹ
    PBarLoad 1, Me.hWnd, lblProgBar.Left \ Screen.TwipsPerPixelX, lblProgBar.Top \ Screen.TwipsPerPixelY, lblProgBar.Width \ Screen.TwipsPerPixelX, lblProgBar.Height \ Screen.TwipsPerPixelY
    PBarSetRange 1, 0, 100
    PBarSetPos 1, 0
    DoEvents
    If iFirmwareOnline Then
        Unzip YuzuInstallFolder & "\Firmware.zip", YuzuInstallFolder & "\user\nand\system\Contents\registered"
    Else
        Unzip iFirmwarePath, YuzuInstallFolder & "\user\nand\system\Contents\registered"
    End If
    PBarUnload 1
    DoEvents
End If

If InstallMode = 1 Then
    'sysdata
    Labels(4).Caption = "���ڽ�ѹ������װ Shared fonts ..."
    MkDirs YuzuInstallFolder & "\user\sysdata"
    PBarLoad 1, Me.hWnd, lblProgBar.Left \ Screen.TwipsPerPixelX, lblProgBar.Top \ Screen.TwipsPerPixelY, lblProgBar.Width \ Screen.TwipsPerPixelX, lblProgBar.Height \ Screen.TwipsPerPixelY
    PBarSetRange 1, 0, 100
    PBarSetPos 1, 0
    DoEvents
    Unzip YuzuInstallFolder & "\Sysdata.zip", YuzuInstallFolder & "\user\sysdata"
    PBarUnload 1
    DoEvents
    DoEvents
    
    'MSVC
    If CheckFileExists("C:\Windows\System32\MSVCP140_ATOMIC_WAIT.DLL") = False And CheckFileExists("C:\Windows\System32\msvcp140_atomic_wait.dll") = False Then
        Labels(4).Caption = "ϵͳ��ȱ��MSVC2019���п⣬���ڰ�װ ..."
        If CheckFileExists(YuzuInstallFolder & "\VC2019.exe") = False Then
            Labels(5).Caption = "�������� MSVC ���п� ..."
            PBarLoad 1, Me.hWnd, lblProgBar.Left \ Screen.TwipsPerPixelX, lblProgBar.Top \ Screen.TwipsPerPixelY, lblProgBar.Width \ Screen.TwipsPerPixelX, lblProgBar.Height \ Screen.TwipsPerPixelY
            PBarSetRange 1, 0, 100
            PBarSetPos 1, 0
            DoEvents
            ucDownload1.DownloadFile "https://aka.ms/vs/17/release/vc_redist.x64.exe", YuzuInstallFolder & "\VC2019.exe"
            DoEvents
            DownloadCompleted = False
            Do Until DownloadCompleted
                Sleep 100
                DoEvents
            Loop
            Sleep 1000
            PBarUnload 1
            DoEvents
        End If
        Labels(5).Caption = "���ڰ�װ MSVC ���п� ..."
        Shell YuzuInstallFolder & "\VC2019.exe /quiet"
        Labels(5).Caption = ""
    DoEvents
    End If
End If
'���� ini ������
If InstallMode = 1 Then
    YuzuVersion = iVersion
    If iIsEarlyAccess Then
        YuzuBranch = "Ԥ�Ȳ��԰�"
    Else
        YuzuBranch = "���߰�"
    End If
    YuzuFirmware = iFirmwareVersion
    WriteIni "Yuzu", "Version", YuzuVersion, YuzuInstallFolder & "\YuzuConfig.ini"
    WriteIni "Yuzu", "Branch", YuzuBranch, YuzuInstallFolder & "\YuzuConfig.ini"
    WriteIni "Yuzu", "Firmware", YuzuFirmware, YuzuInstallFolder & "\YuzuConfig.ini"
    MkDirs YuzuInstallFolder & "\user\nand\user\save\0000000000000000"
    YuzuCustomDataFolder = "False"
    WriteIni "Yuzu", "CustomDataFolder", "False", YuzuInstallFolder & "\YuzuConfig.ini"
ElseIf InstallMode = 2 Then
    YuzuVersion = iVersion
    If iIsEarlyAccess Then
        YuzuBranch = "Ԥ�Ȳ��԰�"
    Else
        YuzuBranch = "���߰�"
    End If
    WriteIni "Yuzu", "Version", YuzuVersion, YuzuInstallFolder & "\YuzuConfig.ini"
    WriteIni "Yuzu", "Branch", YuzuBranch, YuzuInstallFolder & "\YuzuConfig.ini"
ElseIf InstallMode = 3 Then
    YuzuFirmware = iFirmwareVersion
    WriteIni "Yuzu", "Firmware", YuzuFirmware, YuzuInstallFolder & "\YuzuConfig.ini"
End If

'���
If InstallMode = 1 Or InstallMode = 2 Then
    If iIsEarlyAccess Then
        Labels(1).Caption = "Yuzu Ԥ�Ȳ��԰� " & iVersion & " ��װ��ɣ�"
    Else
        Labels(1).Caption = "Yuzu ���߰� " & iVersion & " ��װ��ɣ�"
    End If
ElseIf InstallMode = 3 Then
    Labels(1).Caption = "Yuzu �̼� " & iFirmwareVersion & " ��װ��ɣ�"
End If
Labels(2).Caption = "�Ƿ�Ҫɾ����װ�����в�������ʱ�ļ���"
Labels(4).Visible = False
Labels(5).Visible = False
btnDelYes.Visible = True
btnDelNo.Visible = True

        '�ͷ��ڴ�
    Set fso = Nothing
    Set folder = Nothing
    Set file = Nothing
    
If InstallMode = 1 Then
    btnShortcut.Visible = True
End If

End Sub

Private Sub btnDelNo_Click()
Unload Me
End Sub

Private Sub btnDelYes_Click()
RemoveTemps
Unload Me
End Sub

Private Sub RemoveTemps()
'ɾ������ѹ����
On Error Resume Next
Kill YuzuInstallFolder & "\Yuzu.7z"
Kill YuzuInstallFolder & "\Firmware.zip"
Kill YuzuInstallFolder & "\Sysdata.zip"
Kill YuzuInstallFolder & "\VC2019.exe"
End Sub

Private Sub Form_Unload(Cancel As Integer)
If InstallMode = 1 Then
    frmMain.Show
Else
    frmManage.Show
End If
End Sub

Private Sub opFirmware_Click(Index As Integer)
'�л��̼����ط�ʽ
Dim FirmwareVersionArr() As String
Dim I As Integer
If Index = 1 Then
    '����
    txtFirmware.Visible = False
    btnBrowse.Visible = False
    cbFirmware.Top = 2520
    cbFirmware.Clear
    cbFirmware.Text = "������ ..."
    FirmwareVersionArr = Filter(Split(GetDataStr2("https://" & AliyundriveDomain & "/ns_emu_helper/NSFirmwareMirror/?json"), Chr(34)), "firmware_")
    For I = 0 To (UBound(FirmwareVersionArr) - LBound(FirmwareVersionArr))
        cbFirmware.AddItem Replace(Replace(FirmwareVersionArr(I), "firmware_", ""), ".zip", "")
    Next
    cbFirmware.Text = "ѡ��̼��汾"
Else
    '����
    txtFirmware.Visible = True
    btnBrowse.Visible = True
    cbFirmware.Top = 3120
    cbFirmware.Clear
    cbFirmware.Text = "������ ..."
    FirmwareVersionArr = Split(Replace(Replace(Join(Filter(Split(Replace(Replace(GetDataStr2(CloudFlareReverseProxyUrl & "/https://archive.org/download/nintendo-switch-global-firmwares/nintendo-switch-global-firmwares_files.xml"), Chr(34), ""), " ", ""), vbLf), ".zip"), vbCrLf), "<filename=Firmware", ""), ".zipsource=original>", ""), vbCrLf)
    For I = 0 To (UBound(FirmwareVersionArr) - LBound(FirmwareVersionArr))
        cbFirmware.AddItem FirmwareVersionArr(I)
    Next
    cbFirmware.Text = "ѡ��̼��汾"
End If

End Sub


Private Sub ucDownload1_DownloadProgress(ByVal BytesRead As Long, ByVal BytesTotal As Long)
'ˢ�½�����
  Labels(5).Caption = Format(BytesRead / BytesTotal, "Percent") & " " & CStr(FormatNumber(BytesRead / 1048576, 2, vbTrue)) & "MB / " & CStr(FormatNumber(BytesTotal / 1048576, 2, vbTrue)) & "MB"
  PBarSetPos 1, CInt(BytesRead / BytesTotal * 100)
End Sub

Private Sub ucDownload1_DownloadFailed(ByVal Status As String, ByVal StatusCode As AsyncStatusCodeConstants)
' Visual Basic, F**K YOU!!!
' �ɷ���, F**K YOU!!!
Labels(5).Caption = "����ʧ�ܣ����ڳ���ʹ�ñ������� ..."
DoEvents
ShellAndWait Chr(34) & App.Path & "\Dependencies\curl.exe" & Chr(34) & " -fkL " & Chr(34) & AsyncReads(0) & Chr(34) & " -o " & Chr(34) & AsyncReads(1) & Chr(34)
DoEvents
Labels(5).Caption = "�������سɹ���"
DoEvents
DownloadCompleted = True
End Sub
Private Sub ucDownload1_DownloadComplete()
DownloadCompleted = True
End Sub


Private Sub ImageCombo1_Click()
Image1.Picture = ImageList2.ListImages(ImageCombo1.SelectedItem.Index).Picture
Dim YuzuVersion() As String
Dim I As Integer
If ImageCombo1.SelectedItem.Index = 1 Then
    If DownloadSource = "Github" Then
        txtVersion.SetFocus
        txtVersion.Text = "������ ..."
        txtVersion.Text = GetYuzuVersion
    Else
        ComboVersion.Clear
        ComboVersion.Text = "������ ..."
        YuzuVersion = Split(GetYuzuVersionAli, vbCrLf)
        For I = 0 To (UBound(YuzuVersion) - LBound(YuzuVersion))
        ComboVersion.AddItem YuzuVersion(I)
        ComboVersion.Text = YuzuVersion(I)
        Next
    End If
Else
    If DownloadSource = "Github" Then
        txtVersion.SetFocus
        txtVersion.Text = "������ ..."
        txtVersion.Text = GetYuzuMLVersion
    Else
        ComboVersion.Clear
        ComboVersion.Text = "������ ..."
        YuzuVersion = Split(GetYuzuMLVersionAli, vbCrLf)
        For I = 0 To (UBound(YuzuVersion) - LBound(YuzuVersion))
        ComboVersion.AddItem YuzuVersion(I)
        ComboVersion.Text = YuzuVersion(I)
        Next
    End If
End If
End Sub

Private Sub Form_Initialize()
InitCommonControls
End Sub

Private Sub txtVersion_KeyPress(KeyAscii As Integer)
'ֻ����������
If KeyAscii = 8 Then Exit Sub
If KeyAscii < 48 Or KeyAscii > 57 Then KeyAscii = 0
If Len(txtVersion.Text) >= 4 Then KeyAscii = 0
End Sub
