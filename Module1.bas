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
Public Const Version As String = "V1.3.6"
Public Const InternalVersion As String = "v1.3.6"
Public Const InternalConfigFileVersion As String = "v3"


'��������
Public YuzuInstallFolder As String, RyujinxInstallFolder As String, AlwaysUseCloudFlare As Boolean, CloudFlareReverseProxyUrl As String, DownloadSource As String
Attribute RyujinxInstallFolder.VB_VarUserMemId = 1073741824
Attribute AlwaysUseCloudFlare.VB_VarUserMemId = 1073741824
Attribute CloudFlareReverseProxyUrl.VB_VarUserMemId = 1073741824
Attribute DownloadSource.VB_VarUserMemId = 1073741824
Public YuzuVersion As String, YuzuBranch As String, YuzuFirmware As String, YuzuCustomDataFolder As String
Attribute YuzuVersion.VB_VarUserMemId = 1073741829
Attribute YuzuBranch.VB_VarUserMemId = 1073741829
Attribute YuzuFirmware.VB_VarUserMemId = 1073741829
Attribute YuzuCustomDataFolder.VB_VarUserMemId = 1073741829
Public RyujinxVersion As String, RyujinxBranch As String, RyujinxFirmware As String, RyujinxCustomDataFolder As String
Attribute RyujinxVersion.VB_VarUserMemId = 1073741833
Attribute RyujinxBranch.VB_VarUserMemId = 1073741833
Attribute RyujinxFirmware.VB_VarUserMemId = 1073741833
Attribute RyujinxCustomDataFolder.VB_VarUserMemId = 1073741833
Public AliyundriveDomain As String, AutoCheckForUpdate As Boolean, ConfigFileVersion As String
Attribute AliyundriveDomain.VB_VarUserMemId = 1073741837
Attribute AutoCheckForUpdate.VB_VarUserMemId = 1073741837
Attribute ConfigFileVersion.VB_VarUserMemId = 1073741837
Public InstallMode As Integer
Attribute InstallMode.VB_VarUserMemId = 1073741840
Public FirstActivate As Boolean
Attribute FirstActivate.VB_VarUserMemId = 1073741841

'���������ݴ�
Public AsyncReads(0 To 1) As String
Attribute AsyncReads.VB_VarUserMemId = 1073741842

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
        .Show onForm.hwnd
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
'����ļ��Ƿ����
    On Error GoTo Err
    If Len(FilePath) < 2 Then CheckFileExists = False: Exit Function
    If Dir$(FilePath, vbAllFileAttrib) <> vbNullString Then CheckFileExists = True
    Exit Function
Err:
    CheckFileExists = False
End Function

Public Function GetDataStr2(ByVal Url As String) As String
'server xhr get �ַ��� (GetDataStr �Ѿ�����)
    On Error GoTo Err:
    Dim XMLHTTP As Object
    Set XMLHTTP = CreateObject("MSXML2.ServerXMLHTTP.6.0")
    XMLHTTP.Open "GET", Url, True
    XMLHTTP.setRequestHeader "User-Agent", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36"
    If InStr(Url, "github.com") <> 0 Then XMLHTTP.setRequestHeader "Authorization", "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"    ' github oauth token
    XMLHTTP.send
    XMLHTTP.waitForResponse 10
    If XMLHTTP.Status = 200 Then
        GetDataStr2 = XMLHTTP.responseText
    ElseIf XMLHTTP.Status = 404 Then
        MsgBox "HTTP���� 404 Not Found" & vbCrLf & "���ٴ��������֣��������а�����Դ��Ϊ GitHub CloudFlare��", vbCritical
        End
    ElseIf XMLHTTP.Status = 503 Then
        Debug.Print "ʹ�ñ������ط�����"
        XMLHTTP.Open "GET", Replace(Url, AliyundriveDomain, "pan.yidaozhan.ga/ns_emu_helper"), True
        AliyundriveDomain = "pan.yidaozhan.ga/ns_emu_helper"
        XMLHTTP.setRequestHeader "User-Agent", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36"
        XMLHTTP.send
        XMLHTTP.waitForResponse 10
        If XMLHTTP.Status = 200 Then
            GetDataStr2 = XMLHTTP.responseText
        Else
            MsgBox "HTTP���� " & XMLHTTP.Status & " " & XMLHTTP.statusText, vbCritical
            MsgBox "��ʹ�á��������绷���������ԡ�"
            End
        End If
    Else
        MsgBox "HTTP���� " & XMLHTTP.Status & " " & XMLHTTP.statusText, vbCritical
        End
    End If
    Set XMLHTTP = Nothing
    Exit Function
Err:
    GetDataStr2 = ""
End Function

Public Function GetYuzuVersion() As String
'��ȡ Yuzu Early Access �汾��
    On Error GoTo ExitEA
    Dim objJson As Object
    Set objJson = JSON.parse(GetDataStr2(CloudFlareReverseProxyUrl & "/https://api.github.com/repos/pineappleea/pineapple-src/releases"))
    GetYuzuVersion = Replace(objJson(2)("tag_name"), "EA-", "")
    If InStr(GetYuzuVersion, "continuous") Then MsgBox "������������ϵ�����ߡ�": End
    Exit Function
ExitEA:
    If frmYuzuConfig.Visible = False Then
        MsgBox "Github API ���ó������ƣ����һ�����ԣ�����ʹ�ð�����������Դ��", vbCritical + vbOKOnly
    Else
        MsgBox "�� Github ��ȡ�汾��ʧ�ܣ����ֶ�����汾�š�", vbCritical + vbOKOnly
    End If
    GetYuzuVersion = "����"
End Function

Public Function GetYuzuMLVersion() As String
'��ȡ Yuzu ���߰�汾��
    On Error GoTo ExitML
    Dim objJson As Object
    Set objJson = JSON.parse(GetDataStr2(CloudFlareReverseProxyUrl & "/https://api.github.com/repos/yuzu-emu/yuzu-mainline/releases/latest"))
    GetYuzuMLVersion = Replace(objJson("tag_name"), "mainline-0-", "")
    Exit Function
ExitML:
    If frmYuzuConfig.Visible = False Then
        MsgBox "Github API ���ó������ƣ����һ�����ԣ�����ʹ�ð�����������Դ��", vbCritical + vbOKOnly
    Else
        MsgBox "�� Github ��ȡ�汾��ʧ�ܣ����ֶ�����汾�š�", vbCritical + vbOKOnly
    End If
    GetYuzuMLVersion = "����"
End Function

Public Function GetYuzuVersionAli() As String
'��ȡ Yuzu Early Access �汾�� ��������
    Dim TmpEAAli As String
    Do Until TmpEAAli <> ""
        TmpEAAli = GetDataStr2("https://" & AliyundriveDomain & "/YuzuEAMirror/?json")
    Loop
    GetYuzuVersionAli = ""
    Dim objJson As Object, VersionName As Variant
    Set objJson = JSON.parse(TmpEAAli)
    For Each VersionName In objJson("list")
        GetYuzuVersionAli = GetYuzuVersionAli & Replace(Replace(VersionName, "windows-yuzu-ea-", ""), ".7z", "") & vbCrLf
    Next VersionName
    GetYuzuVersionAli = Left(GetYuzuVersionAli, Len(GetYuzuVersionAli) - 1)
End Function

Public Function GetYuzuMLVersionAli() As String
'��ȡ Yuzu ���߰�汾�� ��������
    Dim TmpMLAli As String
    Do Until TmpMLAli <> ""
        TmpMLAli = GetDataStr2("https://" & AliyundriveDomain & "/YuzuMainlineMirror/?json")
    Loop
    GetYuzuMLVersionAli = ""
    Dim objJson As Object, VersionName As Variant
    Set objJson = JSON.parse(TmpMLAli)
    For Each VersionName In objJson("list")
        GetYuzuMLVersionAli = GetYuzuMLVersionAli & Replace(Replace(VersionName, "yuzu-windows-msvc-", ""), ".7z", "") & vbCrLf
    Next VersionName
    GetYuzuMLVersionAli = Left(GetYuzuMLVersionAli, Len(GetYuzuMLVersionAli) - 1)
End Function

Public Function GetRyujinxVersion() As String
'��ȡ Ryujinx �汾��
    On Error GoTo ExitRyu
    Dim objJson As Object
    Set objJson = JSON.parse(GetDataStr2(CloudFlareReverseProxyUrl & "/https://api.github.com/repos/Ryujinx/release-channel-master/releases/latest"))
    GetRyujinxVersion = objJson("tag_name")
    Exit Function
ExitRyu:
    If frmRyujinxConfig.Visible = False Then
        MsgBox "Github API ���ó������ƣ����һ�����ԣ�����ʹ�ð�����������Դ��", vbCritical + vbOKOnly
    Else
        MsgBox "�� Github ��ȡ�汾��ʧ�ܣ����ֶ�����汾�š�", vbCritical + vbOKOnly
    End If
    GetRyujinxVersion = "����"
End Function

Public Function GetRyujinxCNVersion() As String
'��ȡ Ryujinx CN �汾��
    On Error GoTo ExitRyu
    Dim TmpML As String
    TmpML = GetDataStr2(CloudFlareReverseProxyUrl & "/https://api.github.com/repos/YidaozhanYa/RyujinxCN/releases/latest")
    TmpML = Replace(Replace(TmpML, Chr(34), ""), " ", "")
    TmpML = Filter(Split(TmpML, ","), "tag_name:")(0)
    GetRyujinxCNVersion = Replace(Replace(Replace(TmpML, "tag_name:", ""), vbCrLf, ""), vbLf, "")
    Exit Function
ExitRyu:
    If frmRyujinxConfig.Visible = False Then
        MsgBox "Github API ���ó������ƣ����һ�����ԣ�����ʹ�ð�����������Դ��", vbCritical + vbOKOnly
    Else
        MsgBox "�� Github ��ȡ�汾��ʧ�ܣ����ֶ�����汾�š�", vbCritical + vbOKOnly
    End If
    GetRyujinxCNVersion = "����"
End Function

Public Function GetRyujinxVersionAli() As String
'��ȡ Ryujinx �汾�� ��������
    Dim TmpMLAli As String
    Do Until TmpMLAli <> ""
        TmpMLAli = GetDataStr2("https://" & AliyundriveDomain & "/RyujinxMainlineMirror/?json")
    Loop
    GetRyujinxVersionAli = ""
    Dim objJson As Object, VersionName As Variant
    Set objJson = JSON.parse(TmpMLAli)
    For Each VersionName In objJson("list")
        GetRyujinxVersionAli = GetRyujinxVersionAli & Replace(Replace(VersionName, "ryujinx-", ""), "-win_x64.zip", "") & vbCrLf
    Next VersionName
    GetRyujinxVersionAli = Left(GetRyujinxVersionAli, Len(GetRyujinxVersionAli) - 1)
End Function

Public Function GetRyujinxLDNVersionAli() As String
'��ȡ Ryujinx LDN �汾�� ��������
    Dim TmpMLAli As String
    Do Until TmpMLAli <> ""
        TmpMLAli = GetDataStr2("https://" & AliyundriveDomain & "/RyujinxLDNMirror/?json")
    Loop
    GetRyujinxLDNVersionAli = ""
    Dim objJson As Object, VersionName As Variant
    Set objJson = JSON.parse(TmpMLAli)
    For Each VersionName In objJson("list")
        GetRyujinxLDNVersionAli = GetRyujinxLDNVersionAli & Replace(Replace(VersionName, "ryujinx-", ""), "-win_x64.zip", "") & vbCrLf
    Next VersionName
    GetRyujinxLDNVersionAli = Left(GetRyujinxLDNVersionAli, Len(GetRyujinxLDNVersionAli) - 1)
End Function

Public Function GetRyujinxCNVersionAli() As String
'��ȡ Ryujinx CN �汾�� ��������
    Dim TmpMLAli As String
    Do Until TmpMLAli <> ""
        TmpMLAli = GetDataStr2("https://" & AliyundriveDomain & "/RyujinxCNBuilds/?json")
    Loop
    GetRyujinxCNVersionAli = ""
    Dim objJson As Object, VersionName As Variant
    Set objJson = JSON.parse(TmpMLAli)
    For Each VersionName In objJson("list")
        If InStr(VersionName, "win") Then GetRyujinxCNVersionAli = GetRyujinxCNVersionAli & Replace(Replace(VersionName, "ryujinx-cn-", ""), "-win_x64.zip", "") & vbCrLf
    Next VersionName
    GetRyujinxCNVersionAli = Left(GetRyujinxCNVersionAli, Len(GetRyujinxCNVersionAli) - 1)
End Function

Public Function GetRyujinxVulkanVersionAli() As String
'��ȡ Ryujinx Vulkan �汾�� ��������
    Dim TmpMLAli As String
    Do Until TmpMLAli <> ""
        TmpMLAli = GetDataStr2("https://" & AliyundriveDomain & "/RyujinxCNVulkanBuilds/?json")
    Loop
    GetRyujinxVulkanVersionAli = ""
    Dim objJson As Object, VersionName As Variant
    Set objJson = JSON.parse(TmpMLAli)
    For Each VersionName In objJson("list")
        If InStr(VersionName, "win") Then GetRyujinxVulkanVersionAli = GetRyujinxVulkanVersionAli & Replace(Replace(VersionName, "ryujinx-cn-vulkan-", ""), "-win_x64.zip", "") & vbCrLf
    Next VersionName
    GetRyujinxVulkanVersionAli = Left(GetRyujinxVulkanVersionAli, Len(GetRyujinxVulkanVersionAli) - 1)
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


Public Function TestEmptyFolder(FolderName As String) As Boolean
'�����ļ����Ƿ����
    On Error GoTo Err
    RmDir (FolderName)    'ɾ��Ŀ¼����������ʾ��Ϊ��
    MkDir (FolderName)    '���½�Ŀ¼
    TestEmptyFolder = True
    Exit Function
Err:
    TestEmptyFolder = False
End Function

Public Sub CheckUpdate(Slient As Boolean)
'������
    On Error GoTo ExitUpd
    Dim objJson As Object, qwq As Variant
    Set objJson = JSON.parse(GetDataStr2(CloudFlareReverseProxyUrl & "/https://api.github.com/repos/YidaozhanYa/NSEmuHelper/releases/latest"))
    If objJson("tag_name") <> InternalVersion Then
        '�и��£�
        qwq = MsgBox("��⵽���£�" & vbCrLf & vbCrLf & "��ǰ�汾��" & Version & vbCrLf & "���°汾��" & Replace(CStr(objJson("body")), "##### ", ""), vbOKCancel)
        If qwq = vbOK Then
            frmMain.Hide
            frmConfig.Hide
            frmAbout.Hide
            OpenLink "https://pan.baidu.com/s/10ZS58nejQ5k43mfaJdv5ZQ?pwd=67d3"
            End
        Else
            Exit Sub
        End If
    Else
        If Slient = False Then MsgBox Version & " �Ѿ������°汾��", vbInformation
    End If
    Exit Sub
ExitUpd:
    If Slient = False Then
        MsgBox "������ʧ�ܣ���������Ϊ��Сʱ Github API ���ó������ƣ����һ�����ԡ�", vbCritical + vbOKOnly
    Else
        MsgBox "������ʧ�ܣ���������Ϊ�������� CloudFlare ��ͨ�������⣬�����������йر��Զ����¡�", vbCritical + vbOKOnly
    End If
End Sub

Public Sub OpenLink(Url As String)
    Shell "cmd /c start " & Chr(34) & " " & Chr(34) & " " & Chr(34) & Url & Chr(34), vbNormalFocus
End Sub

Public Sub XCopy(From As String, Destination As String)
    With CreateObject("WScript.Shell")
        .Run "cmd /c xcopy /e /i /y " & Chr(34) & From & Chr(34) & " " & Chr(34) & Destination & Chr(34), 0, True
    End With
End Sub

Public Sub ShellAndWait(pathFile As String)
    With CreateObject("WScript.Shell")
        .Run pathFile, 0, True
    End With
End Sub

Public Sub Unzip(ZipPath As String, UnzipTo As String)
    ShellAndWait Chr(34) & App.Path & "\Dependencies\7z.exe" & Chr(34) & " x " & Chr(34) & ZipPath & Chr(34) & " -o" & Chr(34) & UnzipTo & Chr(34) & " -aoa"
End Sub

Public Function GetIni(strSection As String, strKey As String, INIFileName As String)
    With New ClassINI
        .INIFileName = INIFileName
        GetIni = .GetIniKey(strSection, strKey)
    End With
End Function

Public Sub WriteIni(strSection As String, strKey As String, strNewValue As String, INIFileName As String)
    With New ClassINI
        .INIFileName = INIFileName
        .WriteIniKey strSection, strKey, strNewValue
    End With
End Sub
