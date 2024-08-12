VERSION 5.00
Begin VB.Form Form7 
   Caption         =   "Form7"
   ClientHeight    =   8250
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   12960
   LinkTopic       =   "Form7"
   Picture         =   "Form7.frx":0000
   ScaleHeight     =   8250
   ScaleWidth      =   12960
   StartUpPosition =   3  'Windows Default
   Begin VB.ListBox List2 
      BackColor       =   &H0080FF80&
      Height          =   2790
      Left            =   7560
      TabIndex        =   3
      Top             =   2400
      Width           =   4455
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H000000FF&
      Caption         =   "VOLVER"
      Height          =   735
      Left            =   9480
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   6360
      Width           =   2175
   End
   Begin VB.ListBox List1 
      BackColor       =   &H0080FF80&
      Height          =   1860
      Left            =   3960
      Style           =   1  'Checkbox
      TabIndex        =   0
      Top             =   3120
      Width           =   3135
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Por favor, selecciona el género que deseas ver en la lista de libros recomendados."
      BeginProperty Font 
         Name            =   "Leelawadee"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   3960
      TabIndex        =   4
      Top             =   2400
      Width           =   3255
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "LIBROS RECOMENDADOS"
      BeginProperty Font 
         Name            =   "Wide Latin"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   2880
      TabIndex        =   1
      Top             =   240
      Width           =   6735
   End
   Begin VB.Image Image1 
      Height          =   1935
      Left            =   840
      Stretch         =   -1  'True
      Top             =   360
      Width           =   1695
   End
End
Attribute VB_Name = "Form7"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    Me.Image1.Picture = Form1.perfil.Picture
    Dim rs As ADODB.Recordset
    Dim sql As String
    
    ' Abrir la conexión
    AbrirConexion
    
    ' Consulta SQL para obtener los géneros únicos
    sql = "SELECT DISTINCT Genero FROM Generos_Favoritos"
    
    ' Crear y ejecutar el Recordset
    Set rs = New ADODB.Recordset
    rs.Open sql, cn, adOpenStatic, adLockReadOnly
    
    ' Limpiar el ListBox por si acaso
    List1.Clear
    
    ' Llenar el ListBox con los géneros
    Do While Not rs.EOF
        List1.AddItem rs("Genero")
        rs.MoveNext
    Loop
    
    ' Cerrar el Recordset
    rs.Close
    Set rs = Nothing
    
    ' Cerrar la conexión
    CerrarConexion
End Sub

Private Sub List1_Click()
    Dim rs As ADODB.Recordset
    Dim sql As String
    Dim generoSeleccionado As String
    
    ' Obtener el género seleccionado
    generoSeleccionado = List1.Text
    
    ' Abrir la conexión
    AbrirConexion
    
    ' Consulta SQL para obtener los libros del género seleccionado
    sql = "SELECT Titulo FROM Libros WHERE Genero = '" & generoSeleccionado & "'"
    
    ' Crear y ejecutar el Recordset
    Set rs = New ADODB.Recordset
    rs.Open sql, cn, adOpenStatic, adLockReadOnly
    
    ' Limpiar el ListBox2 (asumimos que tienes un segundo ListBox para mostrar los libros)
    List2.Clear
    
    ' Llenar el ListBox2 con los libros del género seleccionado
    Do While Not rs.EOF
        List2.AddItem rs("Titulo")
        rs.MoveNext
    Loop
    
    ' Cerrar el Recordset
    rs.Close
    Set rs = Nothing
    
    ' Cerrar la conexión
    CerrarConexion
End Sub

Private Sub Command2_Click()
Form1.Show
    Unload Me
End Sub
