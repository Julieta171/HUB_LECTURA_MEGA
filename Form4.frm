VERSION 5.00
Begin VB.Form Form4 
   Caption         =   "Form4"
   ClientHeight    =   8805
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   13905
   LinkTopic       =   "Form4"
   Picture         =   "Form4.frx":0000
   ScaleHeight     =   8805
   ScaleWidth      =   13905
   StartUpPosition =   3  'Windows Default
   Begin VB.ListBox List1 
      BackColor       =   &H0080FF80&
      Height          =   1185
      ItemData        =   "Form4.frx":22156
      Left            =   4680
      List            =   "Form4.frx":22158
      Style           =   1  'Checkbox
      TabIndex        =   3
      Top             =   2640
      Width           =   6015
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H000000FF&
      Caption         =   "VOLVER"
      Height          =   495
      Left            =   11400
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   7680
      Width           =   1575
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H0080FF80&
      Caption         =   "VER DETALLES"
      Height          =   495
      Left            =   1200
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   5640
      Width           =   2535
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "LIBROS POR LEER"
      BeginProperty Font 
         Name            =   "Wide Latin"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   4320
      TabIndex        =   2
      Top             =   480
      Width           =   6495
   End
   Begin VB.Image Image1 
      Height          =   3015
      Left            =   1200
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   2535
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
    Private Sub Command1_Click()
    Form2.Show
    Unload Me
    End Sub
    
    Private Sub Command3_Click()
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
              "FROM Libros_por_leer LL " & _
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
            libroInfo = rs("Titulo") & " - por leer por: " & rs("Lector")
            
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
