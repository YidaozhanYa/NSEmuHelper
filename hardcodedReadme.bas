Attribute VB_Name = "hardcodedReadme"
Sub Readme()
    MsgBox "NS ģ�������� " & Version & " ֮��ǰ�ض�" & vbCrLf & vbCrLf & _
         " ------------------------------------------ " & vbCrLf & vbCrLf & "�������ṩ NS ģ�����İ�װ�������Լ���Կ���̼�����Դ�Ĺ����ܡ�" & vbCrLf & _
           "���еĹ̼��ļ���Ȩ���������á�  Nintendo Switch ��Ϊ�����õ��̱ꡣ�����߼� Yuzu��Ryujinx ģ�������������������á�" & vbCrLf & vbCrLf & _
           "��������ʱ�����������⿨���أ����ڱ����ߵ��������л���һ������Դ��������绷�������ԡ�" & vbCrLf & _
           "��������Ȼʹ�� Visual Basic �����Ϲű�����Ա�д��������֤�� Windows 7 ���������У����Խ���ʹ�� Windows 10 ϵͳ��" & vbCrLf & _
           "���������ܽ�������⣬�����ڱ����ߵĿ�Դ�ֿ���� issue������ ���� - ���� ���ҵ����ߵ���ϵ��ʽ��" & vbCrLf & _
           "�������ǿ�Դ����������� ���� - ���� - л־ ���ҵ�������ʹ�õĿ�Դ�����Լ������ߵ�Դ�룬Ҳ��ӭ�������߹��״��롣" & vbCrLf & _
           "������ʹ�ð������̺ͼ����ƺ���ƽ̨�ṩ�������ط��񣬵���һ���ȶ������ϣ��������һֱ�ȶ��ṩ�������أ���ӭ������������" & vbCrLf & vbCrLf & _
           "2021-2022 ��һ��ն��" _
         , vbExclamation, "NS ģ�������� " & Version & " ֮��ǰ�ض�"
    WriteIni "Tool", "ReadmeCompleted", "Yes", App.Path & "\Config.ini"
End Sub

Sub ForceAnnouncement()
    Dim Announcement As String
    Announcement = GetDataStr2(AnnouncementUrl)
    MsgBox Announcement, vbOKOnly, "NSģ�������� - ����"
End Sub
