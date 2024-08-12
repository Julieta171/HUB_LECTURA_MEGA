VERSION 5.00
Begin VB.Form Form3 
   Caption         =   "LIBROS LEIDOS"
   ClientHeight    =   8790
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   14010
   LinkTopic       =   "Form3"
   Picture         =   "Form3.frx":0000
   ScaleHeight     =   8790
   ScaleWidth      =   14010
   StartUpPosition =   3  'Windows Default
   Begin VB.ListBox List1 
      BackColor       =   &H0080FF80&
      Height          =   1185
      Left            =   4680
      Style           =   1  'Checkbox
      TabIndex        =   3
      Top             =   3000
      Width           =   5895
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H000000FF&
      Caption         =   "VOLVER"
      Height          =   495
      Left            =   11160
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   7680
      Width           =   1695
   End
   Begin VB.CommandButton VERDETALLES 
      BackColor       =   &H0080FF80&
      Caption         =   "VER DETALLES"
      Height          =   495
      Left            =   1440
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   6000
      Width           =   2535
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "LIBROS LEÍDOS"
      BeginProperty Font 
         Name            =   "Wide Latin"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3960
      TabIndex        =   1
      Top             =   480
      Width           =   5055
   End
   Begin VB.Image Image1 
      Height          =   3015
      Left            =   1440
      Stretch         =   -1  'True
      Top             =   3000
      Width           =   2535
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
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
    
    ' Consulta SQL para obtener los datos de Libros_leidos junto con información del libro y usuario
    sql = "SELECT LL.LibroID, L.Titulo, U.Nombre AS Lector " & _
          "FROM Libros_leidos LL " & _
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
        libroInfo = rs("Titulo") & " - Leído por: " & rs("Lector")
        
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


    

Private Sub VERDETALLES_Click()
Form2.Show
Unload Me
End Sub
