VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "GlobalVariables"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Public Class GlobalVariables
    Private Shared _userId As Integer

    Public Shared Property UserId As Integer
        Get
            Return _userId
        End Get
        Set(value As Integer)
            _userId = value
        End Set
    End Property

    ' Puedes agregar más propiedades globales aquí si es necesario
    ' Por ejemplo:
    ' Private Shared _userName As String
    ' Public Shared Property UserName As String
    '     Get
    '         Return _userName
    '     End Get
    '     Set(value As String)
    '         _userName = value
    '     End Set
    ' End Property
End Class
