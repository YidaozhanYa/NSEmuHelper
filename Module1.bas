Attribute VB_Name = "Module1"
'��������
Public Declare Function WritePrivateProfileString Lib "kernel32" Alias _
"WritePrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As Any, ByVal lpString As Any, ByVal lpFileName As String) As Long
Public Declare Function GetPrivateProfileString Lib "kernel32" Alias _
"GetPrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As Any, ByVal lpDefault As String, ByVal lpReturnedString As String, ByVal nSize As Long, ByVal lpFileName As String) As Long
Public Declare Function SysReAllocString Lib "oleaut32.dll" (ByVal pBSTR As Long, Optional ByVal pszStrPtr As Long) As Long
Public Declare Sub CoTaskMemFree Lib "ole32.dll" (ByVal pv As Long)
Public Declare Sub InitCommonControls Lib "comctl32.dll" ()

'������������
Public Const Version As String = "Beta 0.2.2"
Public Const InternalVersion As String = "b0.2.2"


'��������
Public YuzuInstallFolder As String, RyujinxInstallFolder As String, AlwaysUseCloudFlare As Boolean, CloudFlareReverseProxyUrl As String, DownloadSource As String
Public YuzuVersion As String, YuzuBranch As String, YuzuFirmware As String, YuzuCustomDataFolder As String
Public RyujinxVersion As String, RyujinxBranch As String, RyujinxFirmware As String, RyujinxCustomDataFolder As String
Public AliyundriveDomain As String, AutoCheckForUpdate As Boolean
Public InstallMode As Integer

Public Function GetIni(appName As String, KeyName As String, mc_strIniFileName As String) As String
'��ȡ ini
    Dim strDefault As String
    Dim lngBuffLen As Long
    Dim strResu As String
    Dim X As Long
    Dim strIniFile As String
        strIniFile = mc_strIniFileName
    strResu = String(1025, vbNullChar): lngBuffLen = 1025
    strDefault = ""
    X = GetPrivateProfileString(appName, KeyName, strDefault, strResu, lngBuffLen, strIniFile)
    Debug.Print X
    Debug.Print strResu
    GetIni = Left(strResu, X)
    'GetIni = Left(GetIni, Len(GetIni) - 3)
End Function

Public Sub WriteIni(appName As String, KeyName As String, valueNew As String, mc_strIniFileName As String)
'д�� ini
    Dim X As Long
    Dim strIniFile As String
        strIniFile = mc_strIniFileName
    X = WritePrivateProfileString(appName, KeyName, valueNew, strIniFile)
    Debug.Print X
End Sub

Public Function BStrFromLPWStr(lpWStr As Long) As String
SysReAllocString VarPtr(BStrFromLPWStr), lpWStr
End Function

Public Function ChooseDir(ByVal frmTitle As String, onForm As Object) As String
'oleexp ѡ��Ŀ¼
On Error Resume Next
Dim pChooseDir As New FileOpenDialog
Dim psiResult As IShellItem
Dim lpPath As Long, sPath As String
With pChooseDir
    .SetOptions FOS_PICKFOLDERS
    .SetTitle frmTitle
    .Show onForm.hWnd
    .GetResult psiResult
    If (psiResult Is Nothing) = False Then
        psiResult.GetDisplayName SIGDN_FILESYSPATH, lpPath
        If lpPath Then
            SysReAllocString VarPtr(sPath), lpPath
            CoTaskMemFree lpPath
        End If
    End If
End With
If BStrFromLPWStr(lpPath) <> "" Then ChooseDir = BStrFromLPWStr(lpPath)
End Function

Public Function ChooseFile(ByVal frmTitle As String, ByVal fileDescription As String, ByVal fileFilter As String, ByVal onForm As Variant) As String
'oleexp ѡ���ļ�
On Error Resume Next
Dim pChoose As New FileOpenDialog
Dim psiResult As IShellItem
Dim lpPath As Long, sPath As String
Dim tFilt() As COMDLG_FILTERSPEC
ReDim tFilt(0)
tFilt(0).pszName = fileDescription
tFilt(0).pszSpec = fileFilter
With pChoose
    .SetFileTypes UBound(tFilt) + 1, VarPtr(tFilt(0))
    .SetTitle frmTitle
    .SetOptions FOS_FILEMUSTEXIST + FOS_DONTADDTORECENT
    .Show onForm
    .GetResult psiResult
    If (psiResult Is Nothing) = False Then
        psiResult.GetDisplayName SIGDN_FILESYSPATH, lpPath
        If lpPath Then
            SysReAllocString VarPtr(sPath), lpPath
            CoTaskMemFree lpPath
        End If
    End If
End With
If BStrFromLPWStr(lpPath) <> "" Then ChooseFile = BStrFromLPWStr(lpPath)
End Function

Public Function CheckFileExists(FilePath As String) As Boolean
'����ļ����Ƿ����
    On Error GoTo Err
    If Len(FilePath) < 2 Then CheckFileExists = False: Exit Function
            If Dir$(FilePath, vbAllFileAttrib) <> vbNullString Then CheckFileExists = True
    Exit Function
Err:
    CheckFileExists = False
End Function

Public Function GetDataStr(ByVal URL As String) As String
'xhr get �ַ���
  On Error GoTo Err:
  Dim XMLHTTP As Object
  Set XMLHTTP = CreateObject("Microsoft.XMLHTTP")
  XMLHTTP.Open "GET", URL, True
  XMLHTTP.send
  While XMLHTTP.readyState <> 4
  Sleep 10
    DoEvents
  Wend
    GetDataStr = XMLHTTP.responseText
  Set XMLHTTP = Nothing
  Exit Function
Err:
  GetDataStr = ""
End Function

Public Function GetDataStr2(ByVal URL As String) As String
'server xhr get �ַ��� (for github)
  On Error GoTo Err:
  Dim XMLHTTP As Object
  Set XMLHTTP = CreateObject("MSXML2.ServerXMLHTTP.6.0")
  XMLHTTP.Open "GET", URL, False
  XMLHTTP.setRequestHeader "User-Agent", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36"
  XMLHTTP.setRequestHeader "Authorization", "token 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"
  'XMLHTTP.SetOption 2, 13056 'ignore cert errors
  XMLHTTP.send
  While XMLHTTP.Status <> 200
    Sleep 10
    DoEvents
  Wend
    GetDataStr2 = XMLHTTP.responseText
  Set XMLHTTP = Nothing
  Exit Function
Err:
  GetDataStr2 = ""
End Function

Public Function GetYuzuVersion() As String
'��ȡ Yuzu Early Access �汾��
On Error GoTo ExitEA
Dim TmpEA As String
TmpEA = GetDataStr2("https://api.github.com/repos/pineappleea/pineapple-src/releases")
TmpEA = Replace(Replace(TmpEA, Chr(34), ""), " ", "")
TmpEA = Filter(Split(TmpEA, ","), "tag_name:EA")(0)
GetYuzuVersion = Split(TmpEA, "EA-")(1)
Exit Function
ExitEA:
MsgBox "Github API ���ó������ƣ����һ�����ԣ�����ʹ�ð�����������Դ��", vbCritical + vbOKOnly
GetYuzuVersion = "����"
End Function

Public Function GetYuzuMLVersion() As String
'��ȡ Yuzu ���߰�汾��
On Error GoTo ExitEA
Dim TmpML As String
TmpML = GetDataStr("https://api.github.com/repos/yuzu-emu/yuzu-mainline/releases")
TmpML = Replace(Replace(TmpML, Chr(34), ""), " ", "")
TmpML = Filter(Split(TmpML, ","), "tag_name:mainline")(0)
GetYuzuMLVersion = Split(TmpML, "mainline-0-")(1)
Exit Function
ExitEA:
MsgBox "Github API ���ó������ƣ����һ�����ԣ�����ʹ�ð�����������Դ��", vbCritical + vbOKOnly
GetYuzuMLVersion = "����"
End Function

Public Function GetYuzuVersionAli() As String
'��ȡ Yuzu Early Access �汾�� ��������
Dim TmpEAAli As String
Do Until TmpEAAli <> ""
    TmpEAAli = GetDataStr("https://" & AliyundriveDomain & "/ns_emu_helper/YuzuEAMirror/?json")
Loop
TmpEAAli = Replace(Replace(Join(Filter(Split(TmpEAAli, Chr(34)), "windows-yuzu-ea-"), vbCrLf), "windows-yuzu-ea-", ""), ".7z", "")
GetYuzuVersionAli = TmpEAAli
End Function

Public Function GetYuzuMLVersionAli() As String
'��ȡ Yuzu ���߰�汾�� ��������
Dim TmpMLAli As String
Do Until TmpMLAli <> ""
    TmpMLAli = GetDataStr("https://" & AliyundriveDomain & "/ns_emu_helper/YuzuMainlineMirror/?json")
Loop
TmpMLAli = Replace(Replace(Join(Filter(Split(Replace(TmpMLAli, Chr(34), ""), ","), "name:yuzu-windows-msvc-"), vbCrLf), "name:yuzu-windows-msvc-", ""), ".7z", "")
GetYuzuMLVersionAli = TmpMLAli
End Function

Public Function GetRyujinxVersion() As String
'��ȡ Ryujinx �汾��
On Error GoTo RetryML
Dim TmpML As String
RetryML:
TmpML = GetDataStr2("https://api.github.com/repos/Ryujinx/release-channel-master/releases/latest")
TmpML = Replace(Replace(TmpML, Chr(34), ""), " ", "")
TmpML = Filter(Split(TmpML, ","), "tag_name:")(0)
GetRyujinxVersion = Replace(Replace(Replace(TmpML, "tag_name:", ""), vbCrLf, ""), vbLf, "")
End Function

Public Function GetRyujinxVersionAli() As String
'��ȡ Ryujinx �汾�� ��������
Dim TmpMLAli As String
Do Until TmpMLAli <> ""
    TmpMLAli = GetDataStr("https://" & AliyundriveDomain & "/ns_emu_helper/RyujinxMainlineMirror/?json")
Loop
TmpMLAli = Replace(Replace(Join(Filter(Split(Replace(TmpMLAli, Chr(34), ""), ","), "name:ryujinx-"), vbCrLf), "name:ryujinx-", ""), "-win_x64.zip", "")
GetRyujinxVersionAli = TmpMLAli
End Function

Public Function GetRyujinxLDNVersionAli() As String
'��ȡ Ryujinx LDN �汾�� ��������
Dim TmpMLAli As String
Do Until TmpMLAli <> ""
    TmpMLAli = GetDataStr("https://" & AliyundriveDomain & "/ns_emu_helper/RyujinxLDNMirror/?json")
Loop
TmpMLAli = Replace(Replace(Join(Filter(Split(Replace(TmpMLAli, Chr(34), ""), ","), "name:ryujinx-"), vbCrLf), "name:ryujinx-", ""), "-win_x64.zip", "")
GetRyujinxLDNVersionAli = TmpMLAli
End Function

Public Function MkDirs(ByVal PathIn As String) As Boolean
'�������ļ��д���
   Dim nPos As Long
   MkDirs = True
   If Right(PathIn, 1) <> "\" Then PathIn = PathIn + "\"
   nPos = InStr(1, PathIn, "\")

   Do While nPos > 0
       If Dir$(Left$(PathIn, nPos), vbDirectory) = "" Then
           On Error GoTo Failed
               MkDir Left$(PathIn, nPos)
           On Error GoTo 0
       End If
       nPos = InStr(nPos + 1, PathIn, "\")
   Loop

   Exit Function
Failed:
   MkDirs = False
End Function

Public Function GetIniBase64(appName As String, KeyName As String, mc_strIniFileName As String) As String
'��ȡ ini base64
    Dim strDefault As String
    Dim lngBuffLen As Long
    Dim strResu As String
    Dim X As Long
    Dim strIniFile As String
        strIniFile = mc_strIniFileName
    strResu = String(1025, vbNullChar)
    lngBuffLen = 1025
    strDefault = ""
    X = GetPrivateProfileString(appName, KeyName, strDefault, strResu, lngBuffLen, strIniFile)
    Debug.Print X
    Debug.Print strResu
    'GetIniBase64 = Base64Decode(Left(strResu, X))
    GetIniBase64 = Base64Decode(Left(strResu, X))
    GetIniBase64 = Left(GetIniBase64, Len(GetIniBase64) - 3)
End Function

Public Sub WriteIniBase64(appName As String, KeyName As String, valueNew As String, mc_strIniFileName As String)
'д�� ini base64
    Dim X As Long
    Dim strIniFile As String
        strIniFile = mc_strIniFileName
    X = WritePrivateProfileString(appName, KeyName, Base64Encode(valueNew), strIniFile)
    Debug.Print X
End Sub

Public Function TestEmptyFolder(FolderName As String) As Boolean
'�����ļ����Ƿ����
On Error GoTo Err
RmDir (FolderName) 'ɾ��Ŀ¼����������ʾ��Ϊ��
MkDir (FolderName) '���½�Ŀ¼
TestEmptyFolder = True
Exit Function
Err:
TestEmptyFolder = False
End Function

Public Sub CheckUpdate(Slient As Boolean)
'������
On Error GoTo ExitUpd
Dim Tmp As String
If Slient Then
    Tmp = GetDataStr("https://api.github.com/repos/YidaozhanYa/NSEmuHelper/releases/latest")
Else
    Tmp = GetDataStr2("https://api.github.com/repos/YidaozhanYa/NSEmuHelper/releases/latest")
End If
Tmp = Replace(Replace(Tmp, Chr(34), ""), " ", "")
Tmp = Split(Filter(Split(Tmp, ","), "tag_name:")(0), "tag_name:")(1)
If Tmp <> InternalVersion Then
    '�и��£�
    frmMain.Hide
    frmConfig.Hide
    frmAbout.Hide
    Tmp = Replace(Tmp, "b", "Beta ")
    MsgBox "��⵽���£�" & vbCrLf & vbCrLf & "���°汾��" & Tmp & vbCrLf & "��ǰ�汾��" & Version, vbInformation
    OpenLink "https://pan.baidu.com/s/10ZS58nejQ5k43mfaJdv5ZQ?pwd=67d3"
    End
End If
Exit Sub
ExitUpd:
If Slient = False Then
    MsgBox "Github API ���ó������ƣ����һ�����ԡ�", vbCritical + vbOKOnly
End If
End Sub

Public Sub OpenLink(URL As String)
Shell "cmd /c start " & Chr(34) & " " & Chr(34) & " " & Chr(34) & URL & Chr(34), vbNormalFocus
End Sub
