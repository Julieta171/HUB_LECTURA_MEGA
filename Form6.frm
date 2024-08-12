VERSION 5.00
Begin VB.Form Form6 
   Caption         =   "Form6"
   ClientHeight    =   8220
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   13470
   LinkTopic       =   "Form6"
   Picture         =   "Form6.frx":0000
   ScaleHeight     =   8220
   ScaleWidth      =   13470
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      BackColor       =   &H000000FF&
      Caption         =   "VOLVER"
      Height          =   495
      Left            =   10680
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   6720
      Width           =   1935
   End
   Begin VB.ListBox List1 
      BackColor       =   &H0080FF80&
      Height          =   735
      Left            =   4680
      Style           =   1  'Checkbox
      TabIndex        =   1
      Top             =   2520
      Width           =   5415
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H0080FF80&
      Caption         =   "VER DETALLES"
      Height          =   615
      Left            =   1320
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   4920
      Width           =   2295
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "GÉNEROS FAVORITOS"
      BeginProperty Font 
         Name            =   "Wide Latin"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   3600
      TabIndex        =   3
      Top             =   360
      Width           =   5775
   End
   Begin VB.Image Image1 
      Height          =   2535
      Left            =   1320
      Stretch         =   -1  'True
      Top             =   2400
      Width           =   2295
   End
End
Attribute VB_Name = "Form6"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Form2.Show
Unload Me
End Sub


Private Sub Command2_Click()
Form1.Show
    Unload Me
End Sub

Private Sub Form_Load()
    Me.Image1.Picture = Form1.imagen1(5).Picture
    Dim rs As ADODB.Recordset
    Dim sql As String
    Dim generoInfo As String
    
    ' Abrir la conexión
    AbrirConexion
    
    ' Consulta SQL para obtener los datos de Generos_Favoritos junto con información del usuario
    sql = "SELECT GF.UsuarioID, GF.Genero, U.Nombre AS Lector " & _
          "FROM Generos_Favoritos GF " & _
          "INNER JOIN Usuarios U ON GF.UsuarioID = U.UsuarioID"
    
    ' Crear y ejecutar el Recordset
    Set rs = New ADODB.Recordset
    rs.Open sql, cn, adOpenStatic, adLockReadOnly
    
    ' Limpiar el ListBox por si acaso
    List1.Clear
    
    ' Llenar el ListBox con los datos
    Do While Not rs.EOF
        ' Creamos una cadena con la información del género favorito
        generoInfo = rs("Genero") & " - Género favorito elegido por: " & rs("Lector")
        
        ' Añadir el item al ListBox
        List1.AddItem generoInfo
        
        ' Almacenar el UsuarioID en la propiedad ItemData
        List1.ItemData(List1.NewIndex) = rs("UsuarioID")
        
        rs.MoveNext
    Loop
    
    ' Cerrar el Recordset
    rs.Close
    Set rs = Nothing
    
    ' Cerrar la conexión
    CerrarConexion
End Sub



