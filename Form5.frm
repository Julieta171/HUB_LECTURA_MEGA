VERSION 5.00
Begin VB.Form Form5 
   Caption         =   "Form5"
   ClientHeight    =   8010
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   12705
   LinkTopic       =   "Form5"
   Picture         =   "Form5.frx":0000
   ScaleHeight     =   8010
   ScaleWidth      =   12705
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      BackColor       =   &H000000FF&
      Caption         =   "VOLVER"
      Height          =   375
      Left            =   9720
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   6840
      Width           =   2055
   End
   Begin VB.ListBox List1 
      BackColor       =   &H0080FF80&
      Height          =   960
      Left            =   4320
      Style           =   1  'Checkbox
      TabIndex        =   2
      Top             =   2280
      Width           =   5055
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H0080FF80&
      Caption         =   "VER DETALLES"
      Height          =   495
      Left            =   1440
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   4800
      Width           =   2295
   End
   Begin VB.Image Image1 
      Height          =   2535
      Left            =   1440
      Stretch         =   -1  'True
      Top             =   2280
      Width           =   2295
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "LIBROS  DESCARTADOS"
      BeginProperty Font 
         Name            =   "Wide Latin"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   2280
      TabIndex        =   0
      Top             =   360
      Width           =   7095
   End
End
Attribute VB_Name = "Form5"
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
    Dim libroInfo As String
    
    ' Abrir la conexión
    AbrirConexion
    
    ' Consulta SQL para obtener los datos de Libros_por_leer junto con información del libro y usuario
    sql = "SELECT LL.LibroID, L.Titulo, U.Nombre AS Lector " & _
          "FROM Libros_Descartados LL " & _
          "INNER JOIN Libros L ON LL.LibroID = L.LibroID " & _
          "INNER JOIN Usuarios U ON LL.UsuarioID = U.UsuarioID"
    
    ' Crear y ejecutar el Recordset
    Set rs = New ADODB.Recordset
    rs.Open sql, cn, adOpenStatic, adLockReadOnly
    
    ' Limpiar el ListBox por si acaso
    List1.Clear
    
    ' Llenar el ListBox con los datos
    Do While Not rs.EOF
        ' Creamos una cadena con la información del libro leído
        libroInfo = rs("Titulo") & " - que no me gustaron por: " & rs("Lector")
        
        ' Añadir el item al ListBox
        List1.AddItem libroInfo
        
        ' Almacenar el LibroID en la propiedad ItemData
        List1.ItemData(List1.NewIndex) = rs("LibroID")
        
        rs.MoveNext
    Loop
    
    ' Cerrar el Recordset
    rs.Close
    Set rs = Nothing
    
    ' Cerrar la conexión
    CerrarConexion
 End Sub

