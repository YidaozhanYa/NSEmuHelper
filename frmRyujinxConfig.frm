VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
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
   Begin VB.CommandButton btnBrowse 
      Caption         =   "���"
      Height          =   375
      Left            =   5400
      TabIndex        =   11
      Top             =   3240
      Width           =   975
   End
   Begin VB.TextBox txtDataFolder 
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
      Left            =   120
      TabIndex        =   10
      Text            =   "<�����������>"
      Top             =   3240
      Width           =   5175
   End
   Begin VB.CheckBox Checks 
      BackColor       =   &H80000005&
      Caption         =   "��"
      Height          =   420
      Index           =   0
      Left            =   2520
      TabIndex        =   8
      Top             =   2760
      Width           =   735
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
      Left            =   1560
      TabIndex        =   7
      Text            =   "Combo1"
      Top             =   1680
      Width           =   2295
   End
   Begin VB.CommandButton btnSave 
      Caption         =   "����"
      Height          =   495
      Left            =   3240
      TabIndex        =   5
      Top             =   4200
      Width           =   1455
   End
   Begin VB.CommandButton btnCancel 
      Caption         =   "ȡ��"
      Height          =   495
      Left            =   4920
      TabIndex        =   4
      Top             =   4200
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
      TabIndex        =   3
      Text            =   "������ ..."
      Top             =   960
      Width           =   1695
   End
   Begin MSComctlLib.ImageCombo ImageCombo1 
      Height          =   435
      Left            =   1560
      TabIndex        =   2
      Top             =   960
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
   Begin VB.Label Labels 
      BackStyle       =   0  'Transparent
      Caption         =   "�Զ��������ļ��У�"
      Height          =   495
      Index           =   3
      Left            =   120
      TabIndex        =   9
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
      TabIndex        =   6
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

Private Sub btnBrowse_Click()
txtDataFolder.Text = ChooseDir("�Զ��������ļ���", Me)
If txtDataFolder.Text = RyujinxInstallFolder & "\portable" Then
    txtDataFolder.Text = "<�����������>"
    btnBrowse.Visible = False
    txtDataFolder.Visible = False
    Checks(0).Value = 0
    MsgBox "�Զ��������ļ��в��ܺ�Ĭ�������ļ���һ����", vbOKOnly + vbExclamation, "����"
End If
End Sub

Private Sub btnCancel_Click()
If IsMissing Then
    frmMain.Show
Else
    frmManage.Show
End If
Unload Me
End Sub

Private Sub btnSave_Click()
'��������
If cbFirmware.Text <> "������ ..." Then
If ImageCombo1.SelectedItem.Key = "Mainline" Then
    RyujinxBranch = "���߰�"
Else
    RyujinxBranch = "LDN������"
End If
RyujinxVersion = txtVersion.Text
RyujinxFirmware = cbFirmware.Text
WriteIni "Ryujinx", "Version", RyujinxVersion, RyujinxInstallFolder & "\RyujinxConfig.ini"
WriteIni "Ryujinx", "Branch", RyujinxBranch, RyujinxInstallFolder & "\RyujinxConfig.ini"
WriteIni "Ryujinx", "Firmware", RyujinxFirmware, RyujinxInstallFolder & "\RyujinxConfig.ini"

If IsMissing = False Then
    If Checks(0).Value = 0 Then
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
    frmMain.Show
Else
    frmManage.Show
End If
Unload Me
End If
End Sub

Private Sub Checks_Click(Index As Integer)
'ѡ��
If Checks(Index).Value = 1 Then
    Checks(Index).Caption = "��"
    If Index = 0 Then btnBrowse.Visible = True: txtDataFolder.Visible = True
Else
    Checks(Index).Caption = "��"
    If Index = 0 Then btnBrowse.Visible = False: txtDataFolder.Visible = False
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
    Checks(0).Value = 0
    Checks(0).Caption = "��"
    btnBrowse.Visible = False
    txtDataFolder.Visible = False
Else
    Checks(0).Value = 1
    Checks(0).Caption = "��"
    btnBrowse.Visible = True
    txtDataFolder.Visible = True
    txtDataFolder.Text = RyujinxCustomDataFolder
End If
If Left(RyujinxBranch, 3) = "���߰�" Then
    Image1.Picture = frmRyujinxInstaller.ImageList2.ListImages(1).Picture
Else
    Image1.Picture = frmRyujinxInstaller.ImageList2.ListImages(2).Picture
End If
'Unload frmRyujinxInstaller
RyujinxPreDataFolder = RyujinxCustomDataFolder

Me.Caption = "Ryujinx ģ�����������"
If IsMissing Then
    'û��RyujinxConfig.ini
    Labels(0).Caption = "��ģ���������ñ����߰�װ�ģ�" & vbCrLf & "�����������İ汾��Ϣ��"
    Labels(3).Visible = False
    Checks(0).Visible = False
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
ImageCombo1.ComboItems.Clear
ImageCombo1.ComboItems.Add 1, "Mainline", "���߰�", 1
ImageCombo1.ComboItems.Add 2, "LDN", "LDN������", 2
ImageCombo1.ComboItems(1).Selected = True
txtVersion.SetFocus
cbFirmware.Text = "������ ..."

txtVersion.Text = GetRyujinxVersion

Dim FirmwareVersionArr() As String
FirmwareVersionArr = Split(Replace(Replace(Join(Filter(Split(Replace(Replace(GetDataStr(CloudFlareReverseProxyUrl & "/https://archive.org/download/nintendo-switch-global-firmwares/nintendo-switch-global-firmwares_files.xml"), Chr(34), ""), " ", ""), vbLf), ".zip"), vbCrLf), "<filename=Firmware", ""), ".zipsource=original>", ""), vbCrLf)
Dim i As Integer
For i = 0 To (UBound(FirmwareVersionArr) - LBound(FirmwareVersionArr))
cbFirmware.AddItem FirmwareVersionArr(i)
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
Image1.Picture = frmRyujinxInstaller.ImageList2.ListImages(ImageCombo1.SelectedItem.Index).Picture
txtVersion.SetFocus
    txtVersion.Text = "������ ..."
If ImageCombo1.SelectedItem.Index = 1 Then
    txtVersion.Text = GetRyujinxVersion
Else
    Dim Tmp() As String
    Tmp = Split(GetRyujinxLDNVersionAli, vbCrLf)
    txtVersion.Text = Tmp(UBound(Tmp))
End If
End Sub

Private Sub txtVersion_KeyPress(KeyAscii As Integer)
'ֻ����������
If KeyAscii = 8 Then Exit Sub
If KeyAscii < 48 Or KeyAscii > 57 Then KeyAscii = 0
If Len(txtVersion.Text) >= 4 Then KeyAscii = 0
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
    Set fso = CreateObject("Scripting.FileSystemObject") '����FSO
    Set folder = fso.GetFolder(RyujinxPreDataFolder)
    RmDir RyujinxCustomDataFolder
    folder.Move RyujinxCustomDataFolder
    Set folder = Nothing
    Set fso = Nothing
    '������������
    Shell "cmd /c mklink /d /j " & Chr(34) & RyujinxInstallFolder & "\portable" & Chr(34) & " " & Chr(34) & RyujinxCustomDataFolder & Chr(34)
Else
    'Ǩ�ƻ� portable �ļ���
    Shell "cmd /c rmdir " & Chr(34) & RyujinxInstallFolder & "\portable" & Chr(34) ' ɾ���ɵķ�������
    '�ƶ�����
    Set fso = CreateObject("Scripting.FileSystemObject") '����FSO
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
RmDir (FolderName) 'ɾ��Ŀ¼����������ʾ��Ϊ��
MkDir (FolderName) '���½�Ŀ¼
TestEmptyFolder = True
Exit Function
Err:
TestEmptyFolder = False
End Function
