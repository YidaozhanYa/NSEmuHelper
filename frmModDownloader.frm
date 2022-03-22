VERSION 5.00
Object = "{7020C36F-09FC-41FE-B822-CDE6FBB321EB}#1.2#0"; "VBCCR17.OCX"
Begin VB.Form frmModDownloader 
   BackColor       =   &H80000005&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "NSģ�������� - Mod ����"
   ClientHeight    =   5715
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   10095
   BeginProperty Font 
      Name            =   "΢���ź� Light"
      Size            =   10.5
      Charset         =   134
      Weight          =   290
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmModDownloader.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5715
   ScaleWidth      =   10095
   StartUpPosition =   3  '����ȱʡ
   Begin VB.Frame Frame1 
      BackColor       =   &H80000005&
      Caption         =   "���õ� Mod"
      Height          =   5175
      Left            =   5760
      TabIndex        =   3
      Top             =   480
      Width           =   4215
      Begin VBCCR17.ListView lstMod 
         Height          =   4695
         Left            =   120
         TabIndex        =   4
         Top             =   360
         Width           =   3975
         _ExtentX        =   7011
         _ExtentY        =   8281
         View            =   2
         FullRowSelect   =   -1  'True
         GridLines       =   -1  'True
      End
   End
   Begin VB.Frame fTitle 
      BackColor       =   &H80000005&
      Caption         =   "�ҵ���Ϸ"
      Height          =   5175
      Left            =   120
      TabIndex        =   1
      Top             =   480
      Width           =   5535
      Begin VBCCR17.ListView lstTitle 
         Height          =   4695
         Left            =   120
         TabIndex        =   2
         Top             =   360
         Width           =   5295
         _ExtentX        =   9340
         _ExtentY        =   8281
         View            =   2
         FullRowSelect   =   -1  'True
         GridLines       =   -1  'True
      End
   End
   Begin VB.Label Label1 
      BackColor       =   &H80000007&
      BackStyle       =   0  'Transparent
      Caption         =   "�ڴ�ҳ��������Է���ظ� NS ģ�����е���Ϸ���� Mod��"
      Height          =   615
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   5775
   End
End
Attribute VB_Name = "frmModDownloader"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public LoadCompleted As Boolean
Public dictMarkDown As New Dictionary
Private Sub Form_Load()
    On Error Resume Next
    Debug.Print vbCrLf & vbCrLf & vbCrLf & vbCrLf
    LoadCompleted = False
    Dim fso As Object, SubFolder As Object
    Dim xhr As Object, strXML As String
    Dim strMarkDown As String
    Dim xmlDocument As New DOMDocument60
    Dim xmlNodeGame As IXMLDOMNode
    Dim CurrentTitleID As String
    Dim I As Integer

    If CheckFileExists(App.Path & "\NSEmuHelper.exe") = False Then MsgBox "���������ʧ�ܣ�ģ�������������Զ���ʹ�á�": End
    If CheckFileExists(App.Path & "\Config.ini") = False Then MsgBox "���NSģ�������ֵ�������": End
    YuzuInstallFolder = GetIni("Folder", "YuzuInstallFolder", App.Path & "\Config.ini")
    Set fso = New FileSystemObject
    For Each SubFolder In fso.GetFolder(YuzuInstallFolder & "\user\load").SubFolders
        LocalTitles = LocalTitles & " " & SubFolder.Name
    Next SubFolder
    LocalTitles = Trim(LocalTitles)

    lstTitle.ListItems.Clear
    lstTitle.ListItems.Add , , "������ ..."
    lstTitle.ListItems.Add , , "���ڻ�ȡ Title ID �б� ..."
    DoEvents
    Me.Show
    Set xhr = CreateObject("MSXML2.XMLHTTP")
    xhr.open "GET", TitleXmlUrl
    xhr.send
    Do Until xhr.readyState = 4
        DoEvents
        Sleep 10
    Loop
    strXML = xhr.responseText
    Set xhr = Nothing
    lstTitle.ListItems.Clear
    lstTitle.ListItems.Add , , "������ ..."
    lstTitle.ListItems.Add , , "���ڽ��� Title ID �б� ..."
    DoEvents
    '����xml
    xmlDocument.async = False
    xmlDocument.loadXML strXML
    Set xmlNodeGame = xmlDocument.selectSingleNode("/games")
    '����md
    lstTitle.ListItems.Clear
    lstTitle.ListItems.Add , , "������ ..."
    lstTitle.ListItems.Add , , "���ڻ�ȡ Mod �б� ..."
    DoEvents
    Set xhr = CreateObject("MSXML2.XMLHTTP")
    xhr.open "GET", ModsUrl
    xhr.send
    Do Until xhr.readyState = 4
        DoEvents
        Sleep 10
    Loop
    strMarkDown = xhr.responseText
    Set xhr = Nothing
    '����md
    lstTitle.ListItems.Clear
    lstTitle.ListItems.Add , , "������ ..."
    lstTitle.ListItems.Add , , "���ڽ��� Mod �б� ..."
    DoEvents

    Dim arrMarkDown() As String, arrMarkDown2() As String, arrMarkDown3() As String, iter As Variant
    Dim TitleName As String, ModName As String, ModLink As String
    arrMarkDown = Split(strMarkDown, "### ")
    For I = 2 To UBound(arrMarkDown)
        arrMarkDown2 = Split(arrMarkDown(I), vbLf)
        TitleName = Base64Encode(CStr(arrMarkDown2(0)))
        dictMarkDown.Add TitleName, New Collection
        For Each iter In arrMarkDown2
            '����ÿ��mod
            If Left(iter, 3) = "| [" Then
                arrMarkDown3 = Split(Right(iter, Len(iter) - 2), " | ")
                ModName = Split(Right(arrMarkDown3(0), Len(arrMarkDown3(0)) - 1), "](")(0)
                ModLink = Split(Left(arrMarkDown3(0), Len(arrMarkDown3(0)) - 1), "](")(1)
                dictMarkDown(TitleName).Add New Dictionary
                dictMarkDown(TitleName)(dictMarkDown(TitleName).Count).Add "name", ModName
                dictMarkDown(TitleName)(dictMarkDown(TitleName).Count).Add "link", ModLink
                dictMarkDown(TitleName)(dictMarkDown(TitleName).Count).Add "desc", arrMarkDown3(1)
                dictMarkDown(TitleName)(dictMarkDown(TitleName).Count).Add "version", Replace(arrMarkDown3(2), "`", "")
                Debug.Print UBound(arrMarkDown3)
            End If
        Next iter
    Next
    '�������
    lstTitle.ListItems.Clear
    For I = 0 To xmlNodeGame.childNodes.Length - 1
        CurrentTitleID = xmlNodeGame.childNodes.Item(I).childNodes.Item(1).Text
        If Replace(LocalTitles, CurrentTitleID, "") <> LocalTitles Then
            lstTitle.ListItems.Add , xmlNodeGame.childNodes.Item(I).childNodes.Item(1).Text, xmlNodeGame.childNodes.Item(I).childNodes.Item(0).Text
        End If
    Next
    lstMod.ListItems.Clear
    lstMod.ListItems.Add , , "���һ����Ϸ�Բ鿴���õ� Mod"
    LoadCompleted = True
End Sub

Private Sub lstMod_Click()
    frmModDetails.ModDetails lstMod.SelectedItem.key, lstMod.Tag
End Sub

Private Sub lstTitle_Click()
    Dim TitleID As String, iter As Variant
    lstMod.ListItems.Clear
    TitleID = Base64Encode(lstTitle.SelectedItem.Text)
    If dictMarkDown.Exists(TitleID) Then
        For Each iter In dictMarkDown(TitleID)
            lstMod.ListItems.Add , JSON.toString(iter), iter("name")
        Next iter
    Else
        lstMod.ListItems.Add , , "û�п��õ� Mod"
    End If
    lstMod.Tag = lstTitle.SelectedItem.key
End Sub
