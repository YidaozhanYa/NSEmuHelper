VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{48E59290-9880-11CF-9754-00AA00C00908}#1.0#0"; "MSINET.OCX"
Object = "{A5E8A7E4-5CB9-46EB-8987-15503F7E5563}#34.0#0"; "YFUI.ocx"
Begin VB.Form frmRyujinxInstaller 
   BackColor       =   &H80000005&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "��װ Ryujinx"
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
   Icon            =   "frmRyujinxInstaller.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5085
   ScaleWidth      =   8760
   Begin YFUI.YFProgressBar PBar 
      Height          =   300
      Left            =   120
      Top             =   3480
      Visible         =   0   'False
      Width           =   8415
      _ExtentX        =   14843
      _ExtentY        =   529
      BarFullColor    =   16761716
      Radius          =   3
   End
   Begin YFUI.YFOptionButton opFirmware 
      Height          =   375
      Index           =   0
      Left            =   1440
      TabIndex        =   11
      Top             =   2520
      Width           =   1455
      _ExtentX        =   2566
      _ExtentY        =   661
      Caption         =   "����ѡ��"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "΢���ź� Light"
         Size            =   12
         Charset         =   134
         Weight          =   290
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      DownColor       =   16185594
      DownBorderColor =   14014426
      DownSelBorderColor=   14014426
      FocusColor      =   16755285
      FocusBorderColor=   14014426
      FocusSelBorderColor=   16761716
      EnabledColor    =   16755285
      EnabledBorderColor=   14014426
      EnabledSelBorderColor=   16761716
      HighColor       =   16761716
      HighBorderColor =   15132905
      HighSelBorderColor=   16761716
      Value           =   -1  'True
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
      TabIndex        =   6
      Top             =   4800
      Width           =   615
      _ExtentX        =   1085
      _ExtentY        =   450
   End
   Begin MSComctlLib.ImageList ImageList2 
      Left            =   6120
      Top             =   3840
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   128
      ImageHeight     =   128
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   2
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmRyujinxInstaller.frx":54AA
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmRyujinxInstaller.frx":5F8B
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
      ImageWidth      =   72
      ImageHeight     =   72
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   2
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmRyujinxInstaller.frx":7163
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmRyujinxInstaller.frx":C61D
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin YFUI.YFButton btnShortcut 
      Height          =   495
      Left            =   240
      TabIndex        =   7
      Tag             =   "T"
      Top             =   4320
      Width           =   2775
      _ExtentX        =   4895
      _ExtentY        =   873
      Caption         =   "���������ݷ�ʽ"
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
      Data            =   "frmRyujinxInstaller.frx":324B7
   End
   Begin YFUI.YFButton btnDelYes 
      Height          =   495
      Left            =   5160
      TabIndex        =   8
      Tag             =   "T"
      Top             =   4320
      Width           =   1455
      _ExtentX        =   2566
      _ExtentY        =   873
      Caption         =   "��"
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
      Data            =   "frmRyujinxInstaller.frx":324CF
   End
   Begin YFUI.YFButton btnDelNo 
      Height          =   495
      Left            =   7080
      TabIndex        =   9
      Tag             =   "T"
      Top             =   4320
      Width           =   1455
      _ExtentX        =   2566
      _ExtentY        =   873
      Caption         =   "��"
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
      Data            =   "frmRyujinxInstaller.frx":324E7
   End
   Begin YFUI.YFButton btnNextStep 
      Height          =   495
      Left            =   7080
      TabIndex        =   10
      Tag             =   "T"
      Top             =   4320
      Width           =   1455
      _ExtentX        =   2566
      _ExtentY        =   873
      Caption         =   "��һ��"
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
      Data            =   "frmRyujinxInstaller.frx":324FF
   End
   Begin YFUI.YFOptionButton opFirmware 
      Height          =   375
      Index           =   1
      Left            =   1440
      TabIndex        =   12
      Top             =   3120
      Width           =   1455
      _ExtentX        =   2566
      _ExtentY        =   661
      Caption         =   "��������"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "΢���ź� Light"
         Size            =   12
         Charset         =   134
         Weight          =   290
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      DownColor       =   16185594
      DownBorderColor =   14014426
      DownSelBorderColor=   14014426
      FocusColor      =   16755285
      FocusBorderColor=   14014426
      FocusSelBorderColor=   16761716
      EnabledColor    =   16755285
      EnabledBorderColor=   14014426
      EnabledSelBorderColor=   16761716
      HighColor       =   16755285
      HighBorderColor =   15132905
      HighSelBorderColor=   16761716
   End
   Begin YFUI.YFButton btnBrowse 
      Height          =   375
      Left            =   7440
      TabIndex        =   13
      Tag             =   "T"
      Top             =   2520
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
      Data            =   "frmRyujinxInstaller.frx":32517
   End
   Begin YFUI.YFComboBox cbFirmware 
      Height          =   375
      Left            =   3240
      TabIndex        =   14
      Tag             =   "W"
      Top             =   3120
      Width           =   3975
      _ExtentX        =   7011
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
   Begin YFUI.YFComboBox ComboVersion 
      Height          =   375
      Left            =   4080
      TabIndex        =   15
      Tag             =   "W"
      Top             =   2520
      Width           =   1695
      _ExtentX        =   2990
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
   Begin YFUI.YFTextBox txtFirmware 
      Height          =   375
      Left            =   3240
      TabIndex        =   16
      Tag             =   "W"
      Top             =   2520
      Width           =   3975
      _ExtentX        =   7011
      _ExtentY        =   661
      Tip             =   "<�������������֮�����·�ѡ��汾��>"
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
      Radius          =   3
   End
   Begin YFUI.YFTextBox txtKey 
      Height          =   375
      Left            =   1560
      TabIndex        =   17
      Tag             =   "W"
      Top             =   2520
      Width           =   5655
      _ExtentX        =   9975
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
      Radius          =   3
   End
   Begin YFUI.YFTextBox txtVersion 
      Height          =   375
      Left            =   4080
      TabIndex        =   18
      Tag             =   "W"
      Top             =   2520
      Width           =   1695
      _ExtentX        =   2990
      _ExtentY        =   661
      Tip             =   "������ ..."
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
      Radius          =   3
   End
   Begin YFUI.YFComboBox ImageCombo1 
      Height          =   375
      Left            =   2160
      TabIndex        =   19
      Tag             =   "W"
      Top             =   2520
      Width           =   1695
      _ExtentX        =   2990
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
   Begin YFUI.YFButton btnVersionHelp 
      Height          =   375
      Left            =   6000
      TabIndex        =   20
      Tag             =   "T"
      Top             =   2520
      Width           =   375
      _ExtentX        =   661
      _ExtentY        =   661
      Caption         =   "?"
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
      Data            =   "frmRyujinxInstaller.frx":3252F
   End
   Begin VB.Image Image2 
      Height          =   375
      Left            =   1560
      Stretch         =   -1  'True
      Top             =   2520
      Width           =   375
   End
   Begin VB.Label Labels 
      BackStyle       =   0  'Transparent
      Caption         =   "indicator2"
      ForeColor       =   &H001F1F1F&
      Height          =   495
      Index           =   5
      Left            =   120
      TabIndex        =   5
      Top             =   2520
      Width           =   8415
   End
   Begin VB.Label Labels 
      BackStyle       =   0  'Transparent
      Caption         =   "indicator1"
      ForeColor       =   &H001F1F1F&
      Height          =   495
      Index           =   4
      Left            =   120
      TabIndex        =   4
      Top             =   1920
      Width           =   8415
   End
   Begin VB.Label Labels 
      BackStyle       =   0  'Transparent
      Caption         =   "ģ�����汾��"
      ForeColor       =   &H001F1F1F&
      Height          =   495
      Index           =   3
      Left            =   120
      TabIndex        =   3
      Top             =   2520
      Width           =   2175
   End
   Begin VB.Label Labels 
      BackStyle       =   0  'Transparent
      Caption         =   "Steps"
      ForeColor       =   &H001F1F1F&
      Height          =   975
      Index           =   2
      Left            =   120
      TabIndex        =   2
      Top             =   1200
      Width           =   6615
   End
   Begin VB.Image Image1 
      Height          =   1215
      Left            =   7320
      Stretch         =   -1  'True
      Tag             =   "L"
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
      ForeColor       =   &H001F1F1F&
      Height          =   495
      Index           =   1
      Left            =   120
      TabIndex        =   1
      Top             =   600
      Width           =   6975
   End
   Begin VB.Label Labels 
      BackStyle       =   0  'Transparent
      Caption         =   "��װ Ryujinx"
      ForeColor       =   &H001F1F1F&
      Height          =   495
      Index           =   0
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   3735
   End
End
Attribute VB_Name = "frmRyujinxInstaller"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public DownloadCompleted As Boolean, TitlePrefix As String
'1��������װ
'2������ģ����
'3���̼�
Public iBranch As String, iVersion As String, iKeyPath As String, iFirmwareOnline As Boolean, iFirmwarePath As String, iFirmwareVersion As String
'1����֧ True EA False Mainline
'2���汾��
Public CurrentStep As Integer
Private Sub btnBrowse_Click()
    Debug.Print CurrentStep
    '���
    Select Case CurrentStep
    Case 2
        txtKey.Text = ChooseFile("ѡ����Կ�ļ� (prod.keys)", "NS ��Կ�ļ�", "*.keys", frmRyujinxInstaller.hwnd)
    Case 3
        If opFirmware(0).Value Then
            txtFirmware.Text = ChooseFile("ѡ��̼��� (zip ѹ���ļ�)", "NS �̼���", "*.zip", frmRyujinxInstaller.hwnd)
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
    Set sh = CreateObject("wscript.shell")
    nPath = sh.RegRead("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders\Desktop")    '��ȡ��ǰ�û�������Ŀ¼
    If Right(nPath, 1) <> "" Then nPath = nPath & "\"
    ShortF = nPath & "Ryujinx.lnk"
    Set ShortCut = sh.CreateShortcut(ShortF)    '��ʼ������ݷ�ʽ����
    ShortCut.TargetPath = RyujinxInstallFolder & "\Ryujinx.exe"    '��ݷ�ʽָ���Ŀ���ļ���д����·��
    ShortCut.Save
    MsgBox "��ݷ�ʽ�����ɹ���", vbOKOnly, "��ʾ"
End Sub

Private Sub btnVersionHelp_Click()
    MsgBox "���߰棺Ryujinx �ٷ������İ汾��δ���κ��޸ġ�" & vbCrLf & vbCrLf & _
           "�����棺�����Ƶĺ����汾�������߰��޸Ķ�����" & vbCrLf & vbCrLf & _
           "LDN�棺������֧�� UPnP ������¿�����С����������Ϸ��" & vbCrLf & vbCrLf & _
           "Vulkan�棺֧��Vulkan��Ⱦ����AMD/Intel�Կ��Ƽ�ʹ�á�"
End Sub

Private Sub Form_Activate()
'����
    If InstallMode = 1 Then
        If RyujinxInstallFolder = "D:\Ryujinx" Then
            If MsgBox("��ǰģ������װĿ¼ΪĬ�ϵ� D:\Ryujinx����ȷ���Ƿ�װ�����ļ��У�" & vbCrLf & "�㡰���Իص������棬������½ǵ����ø���ģ�����ļ��С�" & vbCrLf & "��Ҳ���԰�ģ�����ļ�����Ϊ���Ѿ�װ�õ�ģ����λ�ã�������Զ�ʶ��", vbQuestion + vbYesNo, "ȷ����") = 7 Then
                frmMain.Show
                Unload Me
                Exit Sub
            End If
        End If
        TitlePrefix = "��װ Ryujinx"
        Labels(0).Caption = TitlePrefix
        DoEvents
        CurrentStep = 1
        Step1
    ElseIf InstallMode = 2 Then
        TitlePrefix = "���� Ryujinx"
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
    On Error Resume Next
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
    btnVersionHelp.Visible = True
    ComboVersion.Visible = True
    Image1.Picture = ImageList2.ListImages(1).Picture
    Image2.Picture = ImageList2.ListImages(1).Picture
    If InstallMode = 1 Then
        Me.Caption = TitlePrefix & " - Step 1"
        Labels(1).Caption = "Step 1 - ѡ��ģ�����汾"
        Labels(2).Caption = "�ڰ�װģ����֮ǰ������Ҫ�Ƚ��м���ѡ��" & vbCrLf & "���Ե���·��ʺŰ�ť�Բ鿴������֧�汾����"
    Else
        Me.Caption = TitlePrefix
        Labels(1).Caption = "ѡ��ģ�����汾"
        Labels(2).Caption = "��ѡ��Ҫ��������ģ�����汾��" & vbCrLf & "���Ե���·��ʺŰ�ť�Բ鿴������֧�汾����"
    End If
    Labels(3).Caption = "ģ�����汾��"
    ImageCombo1.Clear
    ImageCombo1.AddItem "���߰�"
    ImageCombo1.AddItem "���İ�"
    ImageCombo1.AddItem "LDN������"
    ImageCombo1.AddItem "Vulkan"
    ImageCombo1.Text = "���߰�"
    If DownloadSource = "GitHub" Then
        txtVersion.Visible = True
        ComboVersion.Visible = False
        txtVersion.Text = GetRyujinxVersion
        txtVersion.SetFocus
    Else
        txtVersion.Visible = False
        ComboVersion.Visible = True
        Dim RyujinxVersion() As String
        ComboVersion.Clear
        ComboVersion.Text = "������ ..."
        RyujinxVersion = Split(GetRyujinxVersionAli, vbCrLf)
        Dim I As Integer
        For I = 0 To (UBound(RyujinxVersion) - LBound(RyujinxVersion))
            ComboVersion.AddItem RyujinxVersion(I)
            ComboVersion.Text = RyujinxVersion(I)
            ComboVersion.SetFocus
        Next
    End If
    'ȷ���ļ��д���
    MkDirs RyujinxInstallFolder
End Sub

Private Sub Step2()
    On Error GoTo Step2Error
    iBranch = ImageCombo1.Text
    If DownloadSource = "GitHub" Then
        If txtVersion.Text = "������ ..." Then Exit Sub
        iVersion = txtVersion.Text
    Else
        If ComboVersion.Text = "������ ..." Then Exit Sub
        iVersion = ComboVersion.Text
    End If
    CurrentStep = 2
    '�ڶ���
    '����
    Image2.Visible = False
    ImageCombo1.Visible = False
    txtVersion.Visible = False
    ComboVersion.Visible = False
    btnBrowse.Visible = True
    txtKey.Visible = True
    btnVersionHelp.Visible = False
    Me.Caption = TitlePrefix & " - Step 2"
    Labels(1).Caption = "Step 2 - ѡ����Կ�ļ�"
    Labels(2).Caption = "NS ģ������Ҫ��Կ (Keys) �ļ���������Ϸ��" & vbCrLf & "���������ص�Ⱥ���ҵ��� (prod.keys)����������򿪡�"
    Labels(3).Caption = "��Կ�ļ���"

    Exit Sub
Step2Error:
    ImageCombo1.Text = "���߰�"
    Image1.Picture = ImageList2.ListImages(1).Picture
    Image2.Picture = ImageList2.ListImages(1).Picture
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
    Image2.Visible = False
    ComboVersion.Visible = False
    btnVersionHelp.Visible = False
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
        Labels(2).Caption = "Ryujinx ��Ҫ�̼���������Ϸ��" & vbCrLf & "���������ص�Ⱥ���ҵ��̼�������ʹ�á��������ء���" & vbCrLf & "�̼��汾��ҪС�ڵ�����Կ�汾��"
    ElseIf InstallMode = 3 Then
        If Left(RyujinxBranch, 3) = "LDN" Then
            Image1.Picture = ImageList2.ListImages(2).Picture
        Else
            Image1.Picture = ImageList2.ListImages(1).Picture
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
    If AlwaysUseCloudFlare = "Never" Then
        FirmwareVersionArr = Split(Replace(Replace(Join(Filter(Split(Replace(Replace(GetDataStr2("https://archive.org/download/nintendo-switch-global-firmwares/nintendo-switch-global-firmwares_files.xml"), Chr(34), ""), " ", ""), vbLf), ".zip"), vbCrLf), "<filename=Firmware", ""), ".zipsource=original>", ""), vbCrLf)
    Else
        FirmwareVersionArr = Split(Replace(Replace(Join(Filter(Split(Replace(Replace(GetDataStr2(CloudFlareReverseProxyUrl & "/https://archive.org/download/nintendo-switch-global-firmwares/nintendo-switch-global-firmwares_files.xml"), Chr(34), ""), " ", ""), vbLf), ".zip"), vbCrLf), "<filename=Firmware", ""), ".zipsource=original>", ""), vbCrLf)
    End If
    Dim I As Integer
    For I = 0 To (UBound(FirmwareVersionArr) - LBound(FirmwareVersionArr))
        cbFirmware.AddItem FirmwareVersionArr(I)
    Next
    cbFirmware.Text = "ѡ��̼��汾"
End Sub

Private Sub Step4()
    Dim fso As Object, folder As Object
    Set fso = CreateObject("scripting.filesystemobject")    '����FSO����
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
            If DownloadSource = "GitHub" Then
                If AlwaysUseCloudFlare = "Never" Then
                    iFirmwarePath = "https://archive.org/download/nintendo-switch-global-firmwares/Firmware " & cbFirmware.Text & ".zip"
                Else
                    iFirmwarePath = CloudFlareReverseProxyUrl & "/https://archive.org/download/nintendo-switch-global-firmwares/Firmware " & cbFirmware.Text & ".zip"
                End If
            Else
                iFirmwarePath = "https://" & AliyundriveDomain & "/NSFirmwareMirror/Firmware_" & cbFirmware.Text & ".zip"
            End If
            'Legacy reverse proxy for testing purpose, uncomment it when new reverse proxy is not work
            'iFirmwarePath = "https://download.sydzy.workers.dev/api/download?url=https://archive.org/download/nintendo-switch-global-firmwares/Firmware " & cbFirmware.Text & ".zip"
        End If
    ElseIf InstallMode = 2 Then
        iBranch = ImageCombo1.Text
        If DownloadSource = "GitHub" Then
            If txtVersion.Text = "������ ..." Then Exit Sub
            iVersion = txtVersion.Text
        Else
            If ComboVersion.Text = "������ ..." Then Exit Sub
            iVersion = ComboVersion.Text
        End If
        '���õ�һ�����
    End If

    CurrentStep = 4
    '����
    ImageCombo1.Visible = False
    Image2.Visible = False
    txtVersion.Visible = False
    ComboVersion.Visible = False
    btnVersionHelp.Visible = False
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
        Me.Caption = "��װ Ryujinx - ���ڰ�װ"
        Labels(1).Caption = "���ڰ�װ Ryujinx " & iBranch & " " & iVersion & " ..."
    ElseIf InstallMode = 2 Then
        Me.Caption = "���� Ryujinx - ���ڰ�װ"
        Labels(1).Caption = "���ڸ��� Ryujinx �� " & iBranch & " " & iVersion & " ..."
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
    Dim RyujinxUrl As String
    Select Case iBranch
    Case "���߰�"
        '����
        If DownloadSource = "GitHub" Then
            RyujinxUrl = "https://github.com/Ryujinx/release-channel-master/releases/download/" & iVersion & "/ryujinx-" & iVersion & "-win_x64.zip"
        Else
            RyujinxUrl = "https://" & AliyundriveDomain & "/RyujinxMainlineMirror/ryujinx-" & iVersion & "-win_x64.zip"
        End If
    Case "LDN������"
        'LDN
        RyujinxUrl = "https://" & AliyundriveDomain & "/RyujinxLDNMirror/ryujinx-" & iVersion & "-win_x64.zip"
    Case "���İ�"
    Debug.Print "����"
        '����
        If DownloadSource = "GitHub" Then
            RyujinxUrl = "https://github.com/YidaozhanYa/RyujinxCN/releases/download/" & iVersion & "/ryujinx-cn-" & iVersion & "-win_x64.zip"
        Else
            RyujinxUrl = "https://" & AliyundriveDomain & "/RyujinxCNBuilds/ryujinx-cn-" & iVersion & "-win_x64.zip"
        End If
    Case "Vulkan"
        'Vulkan
        If DownloadSource = "GitHub" Then
            RyujinxUrl = "https://github.com/YidaozhanYa/RyujinxCN/releases/download/" & iVersion & "/ryujinx-cn-vulkan-" & iVersion & "-win_x64.zip"
        Else
            RyujinxUrl = "https://" & AliyundriveDomain & "/RyujinxCNVulkanBuilds/ryujinx-cn-vulkan-" & iVersion & "-win_x64.zip"
        End If
    End Select

    If CheckFileExists(RyujinxInstallFolder & "\Ryujinx.zip") = False Then
        If iBranch <> "LDN������" Then
            If DownloadSource = "GitHub" Then
                If AlwaysUseCloudFlare = "False" Then
                    DoEvents
                    'github��ͨ�Բ���
                    Labels(4).Caption = "���ڲ��� GitHub ��ͨ�� ..."
                    Labels(5).Caption = "��� GitHub ������ͨ����ʹ�� CloudFlare Workers��"
                    Dim Tmp As String
                    Tmp = "timeout"
                    Inet1.Cancel
                    Inet1.Protocol = icHTTPS
                    Inet1.Url = "https://github.com/opensearch.xml"
                    Inet1.RequestTimeout = 10
                    Tmp = Inet1.OpenURL
                    If Err.Number = 35761 Then
                        Labels(4).Caption = "��������ģ������ʹ�� CloudFlare Workers ..."
                        RyujinxUrl = CloudFlareReverseProxyUrl & "\" & RyujinxUrl
                    Else
                        If InStr(Tmp, "OpenSearchDescription") = 2 Then
                            Labels(4).Caption = "��������ģ������ʹ�� GitHub ..."
                        Else
                            Labels(4).Caption = "��������ģ������ʹ�� CloudFlare Workers ..."
                            RyujinxUrl = CloudFlareReverseProxyUrl & "\" & RyujinxUrl
                        End If
                    End If
                    Labels(5).Caption = "׼������ ..."
                ElseIf AlwaysUseCloudFlare = "False" Then
                    RyujinxUrl = RyujinxUrl
                Else
                    RyujinxUrl = CloudFlareReverseProxyUrl & "\" & RyujinxUrl
                End If
            Else
                Labels(4).Caption = "��������ģ���� ..."
            End If
        End If
    End If

    DoEvents
    '����ģ����
    If CheckFileExists(RyujinxInstallFolder & "\Ryujinx.zip") = False Then
ReDownload:
        PBar.Visible = True
        PBar.Value = 0
        AsyncReads(0) = RyujinxUrl
        AsyncReads(1) = RyujinxInstallFolder & "\Ryujinx.zip"
        ucDownload1.DownloadFile AsyncReads(0), AsyncReads(1)
        DoEvents
        DownloadCompleted = False
        Do Until DownloadCompleted
            Sleep 100
            DoEvents
        Loop
        Sleep 2000
        DoEvents
        PBar.Visible = False
        If CheckFileExists(RyujinxInstallFolder & "\Ryujinx.zip") = False Then
            Sleep 1000
            Sleep 1000
            Sleep 1000
            Sleep 1000
            Sleep 1000
            GoTo ReDownload
        End If
    End If

FirmwareInstallation:
    If InstallMode = 1 Or InstallMode = 3 Then
        '���ع̼�
        DoEvents
        If CheckFileExists(RyujinxInstallFolder & "\Firmware.zip") = False Then
            If iFirmwareOnline Then
ReDownload2:
                Labels(4).Caption = "�������ع̼��������ĵȴ� ..."
                Labels(5).Caption = "׼������ ..."
                PBar.Visible = True
                PBar.Value = 0
                DoEvents
                AsyncReads(0) = iFirmwarePath
                AsyncReads(1) = RyujinxInstallFolder & "\Firmware.zip"
                ucDownload1.DownloadFile AsyncReads(0), AsyncReads(1)
                DoEvents
                DownloadCompleted = False
                Do Until DownloadCompleted
                    Sleep 100
                    DoEvents
                Loop
                Sleep 2000
                DoEvents
                PBar.Visible = False
                DoEvents
                If CheckFileExists(RyujinxInstallFolder & "\Firmware.zip") = False Then
                    Sleep 1000
                    Sleep 1000
                    Sleep 1000
                    Sleep 1000
                    Sleep 1000
                    GoTo ReDownload2
                End If
            Else
                Labels(4).Caption = "���ڼ��� ..."
                Labels(5).Caption = ""
                PBar.Visible = False
                DoEvents
            End If
        End If
    End If

    If InstallMode = 1 Or InstallMode = 2 Then
ReInstall:
        'ɾ���ɰ汾
        If InstallMode = 2 Then
            Labels(4).Caption = "����ɾ��֮ǰ��ģ���� ..."
            Labels(5).Caption = ""
            DoEvents
            Shell "cmd /c rd /s /q " & Chr(34) & RyujinxInstallFolder & "\bin" & Chr(34)
            DoEvents
            Shell "cmd /c rd /s /q " & Chr(34) & RyujinxInstallFolder & "\etc" & Chr(34)
            DoEvents
            Shell "cmd /c rd /s /q " & Chr(34) & RyujinxInstallFolder & "\lib" & Chr(34)
            DoEvents
            Shell "cmd /c rd /s /q " & Chr(34) & RyujinxInstallFolder & "\Logs" & Chr(34)
            DoEvents
            Shell "cmd /c rd /s /q " & Chr(34) & RyujinxInstallFolder & "\share" & Chr(34)
            DoEvents
            Shell "cmd /c del /s /q " & Chr(34) & RyujinxInstallFolder & "\*.dll" & Chr(34)
            DoEvents
            Shell "cmd /c del /s /q " & Chr(34) & RyujinxInstallFolder & "\*.so" & Chr(34)
            Shell "cmd /c del /s /q " & Chr(34) & RyujinxInstallFolder & "\*.dylib" & Chr(34)
            DoEvents
            Shell "cmd /c del /s /q " & Chr(34) & RyujinxInstallFolder & "\*.pdb" & Chr(34)
            Shell "cmd /c del /s /q " & Chr(34) & RyujinxInstallFolder & "\*.config" & Chr(34)
            DoEvents
            Shell "cmd /c del /s /q " & Chr(34) & RyujinxInstallFolder & "\alsoft.ini" & Chr(34)
            Shell "cmd /c del /s /q " & Chr(34) & RyujinxInstallFolder & "\*.exe" & Chr(34)
            DoEvents
        End If
        '��װģ���� ��ѹ
        Labels(4).Caption = "���ڽ�ѹ��ģ���� ..."
        Labels(5).Caption = ""
        PBar.Visible = True
        PBar.Value = 50
        DoEvents
        Unzip RyujinxInstallFolder & "\Ryujinx.zip", RyujinxInstallFolder
        PBar.Visible = False
        DoEvents
        Labels(4).Caption = "���ڰ�װģ���� ..."
        '�����ļ�
        DoEvents
        XCopy RyujinxInstallFolder & "\publish", RyujinxInstallFolder
        Shell "cmd /c rd /s /q " & Chr(34) & RyujinxInstallFolder & "\publish" & Chr(34), vbHide
        DoEvents
        ''''''''''''
        Sleep 1000
        If CheckFileExists(RyujinxInstallFolder & "\Ryujinx.exe") = False Then
            Labels(5).Caption = "��ѹʧ�ܣ��������½�ѹ ..."
            GoTo ReInstall
        End If
    End If

    If InstallMode = 1 Then
        '��װ��Կ
        Labels(4).Caption = "���ڰ�װ��Կ ..."
        DoEvents
        MkDirs RyujinxInstallFolder & "\portable\system"
        FileCopy iKeyPath, RyujinxInstallFolder & "\portable\system\prod.keys"
    End If

    If InstallMode = 1 Or InstallMode = 3 Then
        If InstallMode = 3 Then
            Labels(4).Caption = "����ɾ���ɹ̼� ..."
            DoEvents
            Shell "cmd /c rd /s /q " & Chr(34) & RyujinxInstallFolder & "\portable\bis\system\Contents" & Chr(34), vbMinimizedNoFocus
            Sleep 10000
        End If
        '��װ�̼�
        '�ļ���
        Labels(4).Caption = "���ڽ�ѹ������װ�̼��� ..."
        DoEvents
        MkDirs RyujinxInstallFolder & "\portable\bis\system\Contents\registered"
        MkDirs RyujinxInstallFolder & "\FWTMP"
        DoEvents
        '��ѹ
        PBar.Visible = True
        PBar.Value = 75
        DoEvents
        If iFirmwareOnline Then
            Unzip RyujinxInstallFolder & "\Firmware.zip", RyujinxInstallFolder & "\FWTMP"
        Else
            Unzip iFirmwarePath, RyujinxInstallFolder & "\FWTMP"
        End If
        PBar.Visible = False
        DoEvents
        'Ryujinx�̼���װ
        Dim FileName() As String
        Dim file As Object
        Set folder = fso.GetFolder(RyujinxInstallFolder & "\FWTMP")
        For Each file In folder.Files    '�������ļ����µ��ļ�
            DoEvents
            MkDir RyujinxInstallFolder & "\portable\bis\system\Contents\registered\" & Replace(Replace(file, RyujinxInstallFolder & "\FWTMP", ""), ".cnmt", "")
            FileCopy file, RyujinxInstallFolder & "\portable\bis\system\Contents\registered\" & Replace(Replace(file, RyujinxInstallFolder & "\FWTMP", ""), ".cnmt", "") & "\00"
        Next
        'ɾ����ʱ�ļ�
        Shell "cmd /c rd /s /q " & Chr(34) & RyujinxInstallFolder & "\FWTMP" & Chr(34), vbMinimizedNoFocus
    End If

    '���� ini ������
    If InstallMode = 1 Then
        RyujinxVersion = iVersion
        RyujinxBranch = iBranch
        RyujinxFirmware = iFirmwareVersion
        WriteIni "Ryujinx", "Version", RyujinxVersion, RyujinxInstallFolder & "\RyujinxConfig.ini"
        WriteIni "Ryujinx", "Branch", RyujinxBranch, RyujinxInstallFolder & "\RyujinxConfig.ini"
        WriteIni "Ryujinx", "Firmware", RyujinxFirmware, RyujinxInstallFolder & "\RyujinxConfig.ini"
        MkDirs RyujinxInstallFolder & "\portable\bis\user\save"
        RyujinxCustomDataFolder = "False"
        WriteIni "Ryujinx", "CustomDataFolder", RyujinxCustomDataFolder, RyujinxInstallFolder & "\RyujinxConfig.ini"
    ElseIf InstallMode = 2 Then
        RyujinxVersion = iVersion
        RyujinxBranch = iBranch
        WriteIni "Ryujinx", "Version", RyujinxVersion, RyujinxInstallFolder & "\RyujinxConfig.ini"
        WriteIni "Ryujinx", "Branch", RyujinxBranch, RyujinxInstallFolder & "\RyujinxConfig.ini"
    ElseIf InstallMode = 3 Then
        RyujinxFirmware = iFirmwareVersion
        WriteIni "Ryujinx", "Firmware", RyujinxFirmware, RyujinxInstallFolder & "\RyujinxConfig.ini"
    End If

    '���
    If InstallMode = 1 Or InstallMode = 2 Then
        Labels(1).Caption = "Ryujinx " & iBranch & " " & iVersion & " ��װ��ɣ�"
    ElseIf InstallMode = 3 Then
        Labels(1).Caption = "Ryujinx �̼� " & iFirmwareVersion & " ��װ��ɣ�"
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
    On Error Resume Next
    Kill RyujinxInstallFolder & "\Ryujinx.zip"
    Kill RyujinxInstallFolder & "\Firmware.zip"
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
        txtVersion.Visible = False
        cbFirmware.Clear
        cbFirmware.Text = "������ ..."
        FirmwareVersionArr = Filter(Split(GetDataStr2("https://" & AliyundriveDomain & "/NSFirmwareMirror/?json"), Chr(34)), "firmware_")
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
        If AlwaysUseCloudFlare = "Never" Then
            FirmwareVersionArr = Split(Replace(Replace(Join(Filter(Split(Replace(Replace(GetDataStr2("https://archive.org/download/nintendo-switch-global-firmwares/nintendo-switch-global-firmwares_files.xml"), Chr(34), ""), " ", ""), vbLf), ".zip"), vbCrLf), "<filename=Firmware", ""), ".zipsource=original>", ""), vbCrLf)
        Else
            FirmwareVersionArr = Split(Replace(Replace(Join(Filter(Split(Replace(Replace(GetDataStr2(CloudFlareReverseProxyUrl & "/https://archive.org/download/nintendo-switch-global-firmwares/nintendo-switch-global-firmwares_files.xml"), Chr(34), ""), " ", ""), vbLf), ".zip"), vbCrLf), "<filename=Firmware", ""), ".zipsource=original>", ""), vbCrLf)
        End If
        For I = 0 To (UBound(FirmwareVersionArr) - LBound(FirmwareVersionArr))
            cbFirmware.AddItem FirmwareVersionArr(I)
        Next
        cbFirmware.Text = "ѡ��̼��汾"
    End If

End Sub

Private Sub ucDownload1_DownloadProgress(ByVal BytesRead As Long, ByVal BytesTotal As Long)
'ˢ�½�����
    Labels(5).Caption = Format(BytesRead / BytesTotal, "Percent") & " " & CStr(FormatNumber(BytesRead / 1048576, 2, vbTrue)) & "MB / " & CStr(FormatNumber(BytesTotal / 1048576, 2, vbTrue)) & "MB"
    PBar.Value = CInt(BytesRead / BytesTotal * 100)
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
    If ImageCombo1.Text = "LDN������" Then
        Image1.Picture = ImageList2.ListImages(2).Picture
        Image2.Picture = ImageList2.ListImages(2).Picture
    Else
        Image1.Picture = ImageList2.ListImages(1).Picture
        Image2.Picture = ImageList2.ListImages(1).Picture
    End If
    Dim RyujinxVersion() As String
    Dim I As Integer
    Select Case ImageCombo1.Text
    Case "���߰�"
        If DownloadSource = "GitHub" Then
            txtVersion.Visible = True
            ComboVersion.Visible = False
            txtVersion.Text = GetRyujinxVersion
            txtVersion.SetFocus
        Else
            txtVersion.Visible = False
            ComboVersion.Visible = True
            ComboVersion.Clear
            ComboVersion.Text = "������ ..."
            RyujinxVersion = Split(GetRyujinxVersionAli, vbCrLf)
            For I = 0 To (UBound(RyujinxVersion) - LBound(RyujinxVersion))
                ComboVersion.AddItem RyujinxVersion(I)
                ComboVersion.Text = RyujinxVersion(I)
                ComboVersion.SetFocus
            Next
        End If
    Case "���İ�"
        If DownloadSource = "GitHub" Then
            txtVersion.Visible = True
            ComboVersion.Visible = False
            txtVersion.Text = GetRyujinxCNVersion
            txtVersion.SetFocus
        Else
            txtVersion.Visible = False
            ComboVersion.Visible = True
            ComboVersion.Clear
            ComboVersion.Text = "������ ..."
            RyujinxVersion = Split(GetRyujinxCNVersionAli, vbCrLf)
            For I = 0 To (UBound(RyujinxVersion) - LBound(RyujinxVersion))
                ComboVersion.AddItem RyujinxVersion(I)
                ComboVersion.Text = RyujinxVersion(I)
                ComboVersion.SetFocus
            Next
        End If
    Case "LDN������"
        txtVersion.Visible = False
        ComboVersion.Visible = True
        ComboVersion.Clear
        ComboVersion.Text = "������ ..."
        RyujinxVersion = Split(GetRyujinxLDNVersionAli, vbCrLf)
        For I = 0 To (UBound(RyujinxVersion) - LBound(RyujinxVersion))
            ComboVersion.AddItem RyujinxVersion(I)
            ComboVersion.Text = RyujinxVersion(I)
            ComboVersion.SetFocus
        Next
    Case "Vulkan"
        If DownloadSource = "GitHub" Then
            txtVersion.Visible = True
            ComboVersion.Visible = False
            txtVersion.Text = GetRyujinxCNVersion
            txtVersion.SetFocus
        Else
            txtVersion.Visible = False
            ComboVersion.Visible = True
            ComboVersion.Clear
            ComboVersion.Text = "������ ..."
            RyujinxVersion = Split(GetRyujinxVulkanVersionAli, vbCrLf)
            For I = 0 To (UBound(RyujinxVersion) - LBound(RyujinxVersion))
                ComboVersion.AddItem RyujinxVersion(I)
                ComboVersion.Text = RyujinxVersion(I)
                ComboVersion.SetFocus
            Next
        End If
    End Select
End Sub

Private Sub Form_Initialize()
    InitCommonControls
End Sub

Private Sub ImageCombo1_KeyPress(KeyAscii As Integer)
KeyAscii = 0
End Sub

Private Sub cbFirmware_KeyPress(KeyAscii As Integer)
KeyAscii = 0
End Sub


Private Sub ComboVersion_KeyPress(KeyAscii As Integer)
KeyAscii = 0
End Sub
Private Sub txtVersion_KeyPress(KeyAscii As Integer)
'ֻ����������
    If KeyAscii = 8 Then Exit Sub
    If KeyAscii < 48 Or KeyAscii > 57 Then KeyAscii = 0
    If Len(txtVersion.Text) >= 4 Then KeyAscii = 0
End Sub


