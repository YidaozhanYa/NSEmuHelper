VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form frMain 
   BackColor       =   &H00FFFFFF&
   Caption         =   "Yuzu �ǹٷ���װ�� By ��һ��ն��"
   ClientHeight    =   6045
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   10380
   BeginProperty Font 
      Name            =   "΢���ź�"
      Size            =   12
      Charset         =   134
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frMain.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   6045
   ScaleWidth      =   10380
   StartUpPosition =   3  '����ȱʡ
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   7800
      Top             =   360
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton btnUpdate 
      Caption         =   "��������ģ����"
      Height          =   615
      Left            =   7920
      TabIndex        =   19
      Top             =   5040
      Width           =   1935
   End
   Begin VB.CommandButton btnDelYes 
      Caption         =   "��"
      Height          =   615
      Left            =   5160
      TabIndex        =   18
      Top             =   5040
      Width           =   1935
   End
   Begin VB.CommandButton btnDelNo 
      Caption         =   "��"
      Height          =   615
      Left            =   7920
      TabIndex        =   17
      Top             =   5040
      Width           =   1935
   End
   Begin VB.CommandButton btnInstall4 
      Caption         =   "��һ��"
      Height          =   615
      Left            =   7920
      TabIndex        =   14
      Top             =   5040
      Width           =   1935
   End
   Begin VB.ComboBox Combo2 
      Height          =   435
      Left            =   2280
      Sorted          =   -1  'True
      TabIndex        =   13
      Text            =   "Combo2"
      Top             =   3120
      Width           =   2535
   End
   Begin VB.CommandButton btnInstall3 
      Caption         =   "��һ��"
      Height          =   615
      Left            =   7920
      TabIndex        =   12
      Top             =   5040
      Width           =   1935
   End
   Begin VB.CommandButton btnBrowse2 
      Caption         =   "���"
      Height          =   375
      Left            =   9000
      TabIndex        =   11
      Top             =   3120
      Width           =   855
   End
   Begin VB.TextBox txtKeys 
      ForeColor       =   &H00404040&
      Height          =   435
      IMEMode         =   3  'DISABLE
      Left            =   2280
      TabIndex        =   10
      Text            =   "txtKeys"
      Top             =   3120
      Width           =   6495
   End
   Begin VB.CommandButton btnInstall2 
      Caption         =   "��һ��"
      Height          =   615
      Left            =   7920
      TabIndex        =   9
      Top             =   5040
      Width           =   1935
   End
   Begin VB.ComboBox Combo1 
      Height          =   435
      Left            =   2280
      TabIndex        =   8
      Text            =   "Combo1"
      Top             =   3120
      Width           =   2535
   End
   Begin VB.CommandButton btnBrowse 
      Caption         =   "���"
      Height          =   375
      Left            =   9000
      TabIndex        =   5
      Top             =   3120
      Width           =   855
   End
   Begin VB.TextBox txtInstallFolder 
      ForeColor       =   &H00404040&
      Height          =   435
      IMEMode         =   3  'DISABLE
      Left            =   2280
      TabIndex        =   4
      Text            =   "txtInstallFolder"
      Top             =   3120
      Width           =   6495
   End
   Begin VB.CommandButton btnInstall 
      Caption         =   "��ʼ��װ"
      Height          =   615
      Left            =   7920
      TabIndex        =   3
      Top             =   4200
      Width           =   1935
   End
   Begin YuzuInstaller.ucDownload ucDownload1 
      Height          =   375
      Left            =   9960
      TabIndex        =   0
      Top             =   5520
      Width           =   375
      _ExtentX        =   661
      _ExtentY        =   661
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "2021 ��һ��ն��"
      ForeColor       =   &H00404040&
      Height          =   375
      Left            =   360
      TabIndex        =   20
      Top             =   5280
      Width           =   4455
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "���ڻ�ȡģ�������°汾�ţ����Ժ� ..."
      ForeColor       =   &H00404040&
      Height          =   975
      Left            =   2280
      TabIndex        =   16
      Top             =   2160
      Width           =   7455
   End
   Begin VB.Label lblProgBar 
      BackStyle       =   0  'Transparent
      Height          =   375
      Left            =   2280
      TabIndex        =   15
      Top             =   3120
      Width           =   7575
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "���ڻ�ȡģ�������°汾�ţ����Ժ� ..."
      ForeColor       =   &H00404040&
      Height          =   975
      Left            =   2280
      TabIndex        =   7
      Top             =   960
      Width           =   7455
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "��ģ������װ�� ..."
      ForeColor       =   &H00404040&
      Height          =   495
      Left            =   2280
      TabIndex        =   6
      Top             =   2640
      Width           =   7455
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "By ��һ��ն��"
      BeginProperty Font 
         Name            =   "΢���ź�"
         Size            =   15
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   615
      Left            =   2280
      TabIndex        =   2
      Top             =   960
      Width           =   7455
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Yuzu Early Access �ǹٷ���װ��"
      BeginProperty Font 
         Name            =   "΢���ź�"
         Size            =   18
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   615
      Left            =   2280
      TabIndex        =   1
      Top             =   360
      Width           =   7455
   End
   Begin VB.Image Image1 
      Height          =   1560
      Left            =   360
      Picture         =   "frMain.frx":54AA
      Stretch         =   -1  'True
      Top             =   360
      Width           =   1560
   End
End
Attribute VB_Name = "frMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Declare Function SysReAllocString Lib "oleaut32.dll" (ByVal pBSTR As Long, Optional ByVal pszStrPtr As Long) As Long
Private Declare Sub CoTaskMemFree Lib "ole32.dll" (ByVal pv As Long)
Private Declare Sub InitCommonControls Lib "comctl32.dll" ()
Dim m_hProgBar As Long   ' hWnd
Dim m_dwPBLeft As Long   ' static x position when vertical
Dim m_dwPBTop As Long   ' static y position when horizontal
Public Function BStrFromLPWStr(lpWStr As Long) As String
SysReAllocString VarPtr(BStrFromLPWStr), lpWStr
End Function

Private Sub btnBrowse2_Click()
On Error Resume Next
CommonDialog1.DialogTitle = "ѡ�� prod.keys �ļ�"
CommonDialog1.Filter = "NS ��Կ|prod.keys"
CommonDialog1.ShowOpen
txtKeys.Text = CommonDialog1.FileName
End Sub

Private Sub btnBrowse_Click()
On Error Resume Next
Dim pChooseDir As New FileOpenDialog
Dim psiResult As IShellItem
Dim lpPath As Long, sPath As String
With pChooseDir
    .SetOptions FOS_PICKFOLDERS
    .SetTitle "ѡ�� Yuzu �İ�װ�ļ���"
    .Show Me.hWnd
    .GetResult psiResult
    If (psiResult Is Nothing) = False Then
        psiResult.GetDisplayName SIGDN_FILESYSPATH, lpPath
        If lpPath Then
            SysReAllocString VarPtr(sPath), lpPath
            CoTaskMemFree lpPath
        End If
    End If
End With
If BStrFromLPWStr(lpPath) <> "" Then txtInstallFolder.Text = BStrFromLPWStr(lpPath)
End Sub


Private Sub btnInstall_Click()
'start installation
Specs(1) = txtInstallFolder.Text
Label2.Visible = False
Label3.Visible = False
txtInstallFolder.Visible = False
btnBrowse.Visible = False
btnInstall.Visible = False
btnUpdate.Visible = False
Label6.Visible = False
MkDirs txtInstallFolder.Text
UpdateMode = False
Label1.Caption = "ѡ��Ҫ��װ�İ汾"
Label4.Visible = True
DoEvents
Dim Version As String
Version = GetDataStr("https://gh-rp.sydzy2.workers.dev/https://api.github.com/repos/pineappleea/pineapple-src/releases")
Version = Replace(Filter(Split(Replace(Version, Chr(34), ""), ","), "tag_name:EA-")(0), "tag_name:EA-", "")
Label4.Caption = "��ǰ���°汾�� " & Version & "��" & vbCrLf & "��Ҳ�����ֶ�����汾������װ��"
Combo1.Visible = True
Combo1.Clear
Combo1.AddItem Version
Combo1.AddItem "<�Զ���>"
Combo1.Text = Version
btnInstall2.Visible = True
btnInstall2.SetFocus
End Sub

Private Sub btnInstall2_Click()
btnInstall2.Visible = False
'step 2
Combo1.Visible = False
Specs(2) = "https://hub.fastgit.org/PineappleEA/pineapple-src/releases/download/EA-" & CStr(CInt(Combo1.Text)) & "/Windows-Yuzu-EA-" & CStr(CInt(Combo1.Text)) & ".7z"
If UpdateMode Then
btnInstall4_Click
Else
Label1.Caption = "��װ��Կ"
Label4.Caption = "��ѡ������Ⱥ�ļ������ص� keys����Կ���ļ���" & vbCrLf & "�����ļ����� prod.keys ��"
txtKeys.Text = "<�����������>"
txtKeys.Visible = True
btnBrowse2.Visible = True
btnInstall3.Visible = True
End If
End Sub

Private Sub btnInstall3_Click()
If Right(txtKeys.Text, 4) <> "keys" Then
MsgBox "��ѡ�� prod.keys �ļ���", vbCritical + vbOKOnly, "����"
Else
btnInstall3.Visible = False
'step 3
Specs(3) = txtKeys.Text
txtKeys.Visible = False
btnBrowse2.Visible = False
Label1.Caption = "ѡ��̼��汾��"
Label4.Caption = "���ڻ�ȡ�̼��б����Ժ� ..."
Dim FirmwareVersionArr() As String
FirmwareVersionArr = Split(Replace(Replace(Join(Filter(Split(Replace(Replace(GetDataStr("https://gh-rp.sydzy2.workers.dev/https://archive.org/download/nintendo-switch-global-firmwares/nintendo-switch-global-firmwares_files.xml"), Chr(34), ""), " ", ""), vbLf), ".zip"), vbCrLf), "<filename=Firmware", ""), ".zipsource=original>", ""), vbCrLf)
Label4.Caption = "�̼��汾����Ҫ���ڻ�С����Կ�汾�š�"
Combo2.Clear
Dim i As Integer
For i = 0 To (UBound(FirmwareVersionArr) - LBound(FirmwareVersionArr))
Combo2.AddItem FirmwareVersionArr(i)
Next
Combo2.Visible = True
Combo2.Text = "13.1.0"
btnInstall4.Visible = True
btnInstall4.SetFocus
End If
End Sub

Private Sub btnInstall4_Click()
btnInstall4.Visible = False
'step 4
Specs(4) = "https://download.sydzy.workers.dev/api/download?url=https://archive.org/download/nintendo-switch-global-firmwares/Firmware " & Combo2.Text & ".zip"
Combo2.Visible = False
Label1.Caption = "���ڰ�װģ����"
Label4.Caption = "��װʱ�������Ҫʮ�����ӣ������ĵȺ� ..."
Label5.Visible = True
CaptionBase = "��������ģ���� ... (1/5)"
Label5.Caption = CaptionBase & vbCrLf & "׼������ ..."
    PBarLoad 1, Me.hWnd, lblProgBar.Left \ Screen.TwipsPerPixelX, lblProgBar.Top \ Screen.TwipsPerPixelY, lblProgBar.Width \ Screen.TwipsPerPixelX, lblProgBar.Height \ Screen.TwipsPerPixelY
    PBarSetRange 1, 0, 100
    PBarSetPos 1, 0
    'download emulator
    'specs(1) install folder
    'specs(2) emulator url
    'specs(3) keys
    'specs(4) firmware url
    If CheckFileExists(Specs(1) & "\Yuzu.7z") Then
    Else
  ucDownload1.DownloadFile Specs(2), Specs(1) & "\Yuzu.7z"
  DoEvents
  Status = 0
  Do Until Status = 100
  Sleep 100
  DoEvents
  Loop
  Sleep 5000
  DoEvents
  End If
  
If UpdateMode = False Then
CaptionBase = "�������ع̼� ... (2/5)"
Label5.Caption = CaptionBase & vbCrLf & "׼������ ..."
    If CheckFileExists(Specs(1) & "\Firmware.zip") Then
    Else
  ucDownload1.DownloadFile Specs(4), Specs(1) & "\Firmware.zip"
  Sleep 200
  Status = 0
  PBarSetPos 1, 0
  Do Until Status = 100
  Sleep 100
  DoEvents
  Loop
  Sleep 5000
  End If

CaptionBase = "��������������ļ���Sysdata�� ... (3/5)"
Label5.Caption = CaptionBase & vbCrLf & "׼������ ..."
    If CheckFileExists(Specs(1) & "\Sysdata.zip") Then
    Else
  ucDownload1.DownloadFile "https://yidaozhan-pan-yidaozhanya.vercel.app/ali/%E6%9D%82%E4%B8%83%E6%9D%82%E5%85%AB/sysdata.zip", Specs(1) & "\Sysdata.zip"
  Status = 0
  Sleep 200
  DoEvents
  Do Until Status = 100
  Sleep 100
  DoEvents
  Loop
  Sleep 5000
  End If
End If
CaptionBase = "���ڽ�ѹ���ļ� ... (4/5)"
PBarUnload 1
Label5.Caption = CaptionBase
DoEvents
'extract emulator
With New cVszArchive
    .OpenArchive Specs(1) & "\Yuzu.7z"
    .Extract Specs(1)
End With
DoEvents
Shell "cmd /c xcopy /s /y " & Chr(34) & Specs(1) & "\yuzu-windows-msvc-early-access\*" & Chr(34) & " " & Chr(34) & Specs(1) & Chr(34), vbMinimizedNoFocus
Sleep 200
DoEvents
Shell "cmd /c rd /s /q " & Chr(34) & Specs(1) & "\yuzu-windows-msvc-early-access" & Chr(34), vbMinimizedNoFocus
DoEvents
Sleep 200
Shell "cmd /c cd " & Chr(34) & Specs(1) & Chr(34) & " && del /s /q yuzu-windows-msvc-source*", vbMinimizedNoFocus
'Kill Specs(1) & "\Yuzu.7z"
If UpdateMode = False Then
'extract sysdata
MkDirs Specs(1) & "\user\sysdata"
With New cVszArchive
    .OpenArchive Specs(1) & "\Sysdata.zip"
    .Extract Specs(1) & "\user\sysdata"
End With
DoEvents
'Kill Specs(1) & "\Sysdata.zip"
CaptionBase = "���ڰ�װ�̼�����Կ ... (5/5)"
Label5.Caption = CaptionBase
DoEvents
'firmware
MkDirs Specs(1) & "\user\nand\system\Contents\registered"
MkDirs Specs(1) & "\FWTMP"
MkDirs Specs(1) & "\user\keys"
Dim FileName() As String, i As Long
DoEvents
With New cVszArchive
    .OpenArchive Specs(1) & "\Firmware.zip"
    .Extract Specs(1) & "\FWTMP"
End With
DoEvents

Dim fso As Object
Dim folder As Object
Dim file As Object
Set fso = CreateObject("scripting.filesystemobject") '����FSO����
Set folder = fso.GetFolder(Specs(1) & "\FWTMP")
For Each file In folder.Files '�������ļ����µ��ļ�
MkDir Specs(1) & "\user\nand\system\Contents\registered\" & Replace(Replace(file, Specs(1) & "\FWTMP", ""), ".cnmt", "")
FileCopy file, Specs(1) & "\user\nand\system\Contents\registered\" & Replace(Replace(file, Specs(1) & "\FWTMP", ""), ".cnmt", "") & "\00"
Next
Set fso = Nothing
Set folder = Nothing
Shell "cmd /c rd /s /q " & Chr(34) & Specs(1) & "\FWTMP" & Chr(34), vbMinimizedNoFocus
FileCopy Specs(3), Specs(1) & "\user\keys\prod.keys"
'Kill Specs(1) & "\Firmware.zip"
'completed
End If
DoEvents
'MSVC
If CheckFileExists("C:\Windows\System32\MSVCP140_ATOMIC_WAIT.DLL") = False And CheckFileExists("C:\Windows\System32\msvcp140_atomic_wait.dll") = False Then
Label4.Caption = "ϵͳ��ȱ��MSVC2019���п⣬���ڰ�װ ..."
CaptionBase = ""
  ucDownload1.DownloadFile "https://aka.ms/vs/17/release/vc_redist.x64.exe", Specs(1) & "\VC2019.exe"
  Status = 0
  Sleep 200
  DoEvents
  Do Until Status = 100
  Sleep 100
  DoEvents
  Loop
  Sleep 500
  Shell Specs(1) & "\VC2019.exe"
End If

DoEvents
btnDelYes.Visible = True
btnDelNo.Visible = True
Label1.Caption = "��װ��ɣ�"
Label4.Caption = "�Ƿ�Ҫɾ����װ�����в�������ʱ�ļ���"
Label5.Visible = False
btnDelYes.SetFocus
DoEvents
End Sub
Private Sub btnDelNo_Click()
End
End Sub

Private Sub btnDelYes_Click()
On Error Resume Next
Kill Specs(1) & "\Yuzu.7z"
Kill Specs(1) & "\Sysdata.zip"
Kill Specs(1) & "\Firmware.zip"
Kill Specs(1) & "\VC2019.exe"
End
End Sub

Private Sub btnUpdate_Click()
On Error Resume Next
'start installation
Specs(1) = txtInstallFolder.Text
Label2.Visible = False
Label3.Visible = False
txtInstallFolder.Visible = False
btnBrowse.Visible = False
btnInstall.Visible = False
btnUpdate.Visible = False
Label6.Visible = False
MkDirs txtInstallFolder.Text
Shell "cmd /c rd /s /q " & Chr(34) & Specs(1) & "\plugins" & Chr(34), vbMinimizedNoFocus
Shell "cmd /c cd " & Chr(34) & Specs(1) & Chr(34) & " && del /s /q yuzu-windows-msvc-source*", vbMinimizedNoFocus
Kill Specs(1) & "\avcodec-58.dll"
Kill Specs(1) & "\avutil-56.dll"
Kill Specs(1) & "\icudtl.dat"
Kill Specs(1) & "\libwinpthread-1.dll"
Kill Specs(1) & "\qt.conf"
Kill Specs(1) & "\SDL2.dll"
Kill Specs(1) & "\swscale-5.dll"
Kill Specs(1) & "\yuzu.exe"
Kill Specs(1) & "\yuzu-cmd.exe"
UpdateMode = True
Label1.Caption = "ѡ��Ҫ��װ�İ汾"
Label4.Visible = True
DoEvents
Dim Version As String
Version = GetDataStr("https://gh-rp.sydzy2.workers.dev/https://api.github.com/repos/pineappleea/pineapple-src/releases")
Version = Replace(Filter(Split(Replace(Version, Chr(34), ""), ","), "tag_name:EA-")(0), "tag_name:EA-", "")
Label4.Caption = "��ǰ���°汾�� " & Version & "��" & vbCrLf & "��Ҳ�����ֶ�����汾������װ��"
Combo1.Visible = True
Combo1.Clear
Combo1.AddItem Version
Combo1.AddItem "<�Զ���>"
Combo1.Text = Version
btnInstall2.Visible = True
End Sub

Private Sub Form_Unload(Cancel As Integer)
End
End Sub
Private Sub Form_Initialize()
InitCommonControls
End Sub
 Private Sub ucDownload1_DownloadProgress(ByVal BytesRead As Long, ByVal BytesTotal As Long)
  Label5.Caption = CaptionBase & vbCrLf & Format(BytesRead / BytesTotal, "Percent") & " " & CStr(FormatNumber(BytesRead / 1048576, 2, vbTrue)) & "MB / " & CStr(FormatNumber(BytesTotal / 1048576, 2, vbTrue)) & "MB"
  Status = CInt(BytesRead / BytesTotal * 100)
  PBarSetPos 1, Status
End Sub

Private Sub ucDownload1_DownloadFailed(ByVal Status As String, ByVal StatusCode As AsyncStatusCodeConstants)
  Label5.Caption = "����ʧ��:" & Status
  Label5.ForeColor = RGB(255, 0, 0)
End Sub
Private Sub Form_Load()
Label4.Visible = False
Combo1.Visible = False
Combo2.Visible = False
txtKeys.Visible = False
btnInstall2.Visible = False
btnInstall3.Visible = False
btnInstall4.Visible = False
btnBrowse2.Visible = False
Label5.Visible = False
btnDelYes.Visible = False
btnDelNo.Visible = False
btnInstall.Visible = True
txtInstallFolder.Text = "D:\Yuzu"
End Sub


