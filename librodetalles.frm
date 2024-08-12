VERSION 5.00
Begin VB.Form Form2 
   Caption         =   "Form2"
   ClientHeight    =   9735
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   15735
   LinkTopic       =   "Form2"
   Picture         =   "librodetalles.frx":0000
   ScaleHeight     =   9735
   ScaleWidth      =   15735
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Recomendados 
      BackColor       =   &H0080FF80&
      Caption         =   "RECOMENDADOS"
      Height          =   735
      Left            =   7680
      Style           =   1  'Graphical
      TabIndex        =   12
      Top             =   7920
      Width           =   2775
   End
   Begin VB.CommandButton Favoritos 
      BackColor       =   &H0080FF80&
      Caption         =   "FAVORITOS"
      Height          =   735
      Left            =   3360
      Style           =   1  'Graphical
      TabIndex        =   11
      Top             =   7920
      Width           =   3015
   End
   Begin VB.CommandButton Descartar 
      BackColor       =   &H0080FF80&
      Caption         =   "DESCARTAR"
      Height          =   735
      Left            =   10320
      Style           =   1  'Graphical
      TabIndex        =   10
      Top             =   6240
      Width           =   2895
   End
   Begin VB.CommandButton PorLeer 
      BackColor       =   &H0080FF80&
      Caption         =   "POR LEER"
      Height          =   735
      Left            =   6240
      Style           =   1  'Graphical
      TabIndex        =   9
      Top             =   6240
      Width           =   2775
   End
   Begin VB.CommandButton Leido 
      BackColor       =   &H0080FF80&
      Caption         =   "LEÍDO"
      Height          =   735
      Left            =   2040
      Style           =   1  'Graphical
      TabIndex        =   8
      Top             =   6240
      Width           =   2895
   End
   Begin VB.CommandButton Volver 
      BackColor       =   &H000000FF&
      Caption         =   "Volver"
      Height          =   495
      Left            =   13200
      Style           =   1  'Graphical
      TabIndex        =   7
      Top             =   8520
      Width           =   1935
   End
   Begin VB.Label SinopsisR 
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Leelawadee"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2055
      Left            =   7080
      TabIndex        =   6
      Top             =   2640
      Width           =   6255
   End
   Begin VB.Label GeneroR 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Leelawadee"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   6840
      TabIndex        =   5
      Top             =   1920
      Width           =   3975
   End
   Begin VB.Label AutorR 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Leelawadee"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   6960
      TabIndex        =   4
      Top             =   1320
      Width           =   3735
   End
   Begin VB.Label SinopsisL 
      BackStyle       =   0  'Transparent
      Caption         =   "Sinopsis:"
      BeginProperty Font 
         Name            =   "Wide Latin"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   0
      Left            =   5040
      TabIndex        =   3
      Top             =   2640
      Width           =   1935
   End
   Begin VB.Label GeneroL 
      BackStyle       =   0  'Transparent
      Caption         =   "Género:"
      BeginProperty Font 
         Name            =   "Wide Latin"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   1
      Left            =   5040
      TabIndex        =   2
      Top             =   1920
      Width           =   1455
   End
   Begin VB.Label AutorL 
      BackStyle       =   0  'Transparent
      Caption         =   "Autor:"
      BeginProperty Font 
         Name            =   "Wide Latin"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   0
      Left            =   5040
      TabIndex        =   1
      Top             =   1320
      Width           =   1455
   End
   Begin VB.Label TituloLibro 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "TituloLibro"
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
      Left            =   3000
      TabIndex        =   0
      Top             =   240
      Width           =   10335
   End
   Begin VB.Image ImagenDetalle 
      Height          =   5175
      Left            =   360
      Stretch         =   -1  'True
      Top             =   480
      Width           =   4095
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Descartar_Click()

    Dim cmd As ADODB.Command
    Dim libroID As Integer
    Dim UsuarioID As Integer
    
    libroID = 1  ' Asegúrate de que este valor sea correcto para el libro actual
    UsuarioID = ID  ' Asegúrate de que este valor sea correcto para el usuario actual
    
    AbrirConexion
    
    ' Crear el comando
    Set cmd = New ADODB.Command
    cmd.ActiveConnection = cn
    cmd.CommandType = adCmdText
    
    ' Verificar si ya existe un registro
    cmd.CommandText = "SELECT COUNT(*) FROM Libros_Descartados WHERE LibroID = ? AND UsuarioID = ?"
    cmd.Parameters.Append cmd.CreateParameter("@LibroID", adInteger, adParamInput, , libroID)
    cmd.Parameters.Append cmd.CreateParameter("@UsuarioID", adInteger, adParamInput, , UsuarioID)
    
    Dim count As Integer
    count = cmd.Execute()(0)
    
    If count = 0 Then
        ' No existe, realizar el INSERT
        cmd.CommandText = "INSERT INTO Libros_Descartados (LibroID, UsuarioID) VALUES (?, ?)"
        ' Limpiar parámetros anteriores
        cmd.Parameters.Delete "@LibroID"
        cmd.Parameters.Delete "@UsuarioID"
        ' Agregar nuevos parámetros
        cmd.Parameters.Append cmd.CreateParameter("@LibroID", adInteger, adParamInput, , libroID)
        cmd.Parameters.Append cmd.CreateParameter("@UsuarioID", adInteger, adParamInput, , UsuarioID)
        
        On Error GoTo ErrorHandler
        cmd.Execute
        MsgBox "Libro marcado como Descartado.", vbInformation
    Else
        MsgBox "Este libro ya está marcado como Descartado.", vbInformation
    End If
    
CleanUp:
    ' Limpieza
    Set cmd = Nothing
    CerrarConexion
    Exit Sub
    
ErrorHandler:
    MsgBox "Error al marcar el libro como Descartado: " & Err.Description, vbCritical
    Resume CleanUp
End Sub

   Public Function ObtenerGeneroLibroActual() As String
    Dim cmd As ADODB.Command
    Dim rs As ADODB.Recordset
    Dim genero As String
    Dim libroID As Integer
    
    libroID = 1  ' En una implementación real, esto debería obtenerse dinámicamente
    
    AbrirConexion  ' Asumimos que esta función está en tu módulo de conexión
    
    ' Crear el comando
    Set cmd = New ADODB.Command
    With cmd
        Set .ActiveConnection = cn  ' Asumimos que 'cn' es tu conexión global
        .CommandType = adCmdText
        .CommandText = "SELECT Genero FROM Libros WHERE LibroID = ?"
        .Parameters.Append .CreateParameter("@LibroID", adInteger, adParamInput, , libroID)
    End With
    
    ' Ejecutar la consulta
    Set rs = cmd.Execute()
    
    ' Verificar si se encontró el libro
    If Not rs.EOF Then
        genero = rs.Fields("Genero").Value
    Else
        genero = "Género no encontrado"  ' O manejar este caso como prefieras
    End If
    
    ' Limpieza
    rs.Close
    Set rs = Nothing
    Set cmd = Nothing
    
    CerrarConexion  ' Asumimos que esta función está en tu módulo de conexión
    
    ' Devolver el género
    ObtenerGeneroLibroActual = genero
End Function


Private Sub Favoritos_Click()
    Dim cmd As ADODB.Command
    Dim genero As String
    Dim UsuarioID As Integer
    
    genero = ObtenerGeneroLibroActual()
    UsuarioID = ID
    ' Asegúrate de que este valor sea correcto para el usuario actual
    
    AbrirConexion
    
    ' Crear el comando
    Set cmd = New ADODB.Command
    With cmd
        Set .ActiveConnection = cn
        .CommandType = adCmdText
        
        ' Verificar si ya existe un registro
        .CommandText = "SELECT COUNT(*) FROM Generos_Favoritos WHERE Genero = ? AND UsuarioID = ?"
        .Parameters.Append .CreateParameter("@Genero", adVarChar, adParamInput, 50, genero)
        .Parameters.Append .CreateParameter("@UsuarioID", adInteger, adParamInput, , UsuarioID)
        
        Dim count As Integer
        count = .Execute()(0)
        
        If count = 0 Then
            ' No existe, realizar el INSERT
            .CommandText = "INSERT INTO Generos_Favoritos (Genero, UsuarioID) VALUES (?, ?)"
            ' Limpiar parámetros anteriores
            .Parameters.Delete "@Genero"
            .Parameters.Delete "@UsuarioID"
            ' Agregar nuevos parámetros
            .Parameters.Append .CreateParameter("@Genero", adVarChar, adParamInput, 50, genero)
            .Parameters.Append .CreateParameter("@UsuarioID", adInteger, adParamInput, , UsuarioID)
            
            On Error GoTo ErrorHandler
            .Execute
            MsgBox "Género '" & genero & "' añadido a favoritos.", vbInformation
        Else
            MsgBox "El género '" & genero & "' ya está en tus favoritos.", vbInformation
        End If
    End With
    
CleanUp:
    ' Limpieza
    Set cmd = Nothing
    CerrarConexion
    Exit Sub
    
ErrorHandler:
    MsgBox "Error al añadir el género a favoritos: " & Err.Description, vbCritical
    Resume CleanUp
End Sub

Private Sub Form_Load()
    Dim rs As ADODB.Recordset
    Dim libroID As Integer
    libroID = 1
    ' Asegúrate de que la conexión está abierta
    AbrirConexion
    ' Configura y ejecuta la consulta
    Set rs = New ADODB.Recordset
    rs.Open "SELECT * FROM Libros WHERE LibroID = " & libroID, cn, adOpenStatic, adLockReadOnly
    ' Verifica si se encontraron registros
    If Not rs.EOF Then
        TituloLibro.Caption = rs.Fields("Titulo").Value
        AutorR.Caption = rs.Fields("Autor").Value
        GeneroR.Caption = rs.Fields("Genero").Value
        SinopsisR.Caption = rs.Fields("Sinopsis").Value
    Else
        TituloLibro.Caption = "Libro no encontrado"
        AutorR.Caption = ""
        GeneroR.Caption = ""
        SinopsisR.Caption = ""
    End If
    ' Cierra el recordset y limpia
    rs.Close
    Set rs = Nothing
    ' Cierra la conexión
    CerrarConexion
End Sub
Private Sub Leido_Click()
    Dim cmd As ADODB.Command
    Dim libroID As Integer
    Dim UsuarioID As Integer
    
    libroID = 1  ' Asegúrate de que este valor sea correcto para el libro actual
    UsuarioID = ID  ' Asegúrate de que este valor sea correcto para el usuario actual
    
    AbrirConexion
    
    ' Crear el comando
    Set cmd = New ADODB.Command
    cmd.ActiveConnection = cn
    cmd.CommandType = adCmdText
    
    ' Verificar si ya existe un registro
    cmd.CommandText = "SELECT COUNT(*) FROM Libros_leidos WHERE LibroID = ? AND UsuarioID = ?"
    cmd.Parameters.Append cmd.CreateParameter("@LibroID", adInteger, adParamInput, , libroID)
    cmd.Parameters.Append cmd.CreateParameter("@UsuarioID", adInteger, adParamInput, , UsuarioID)
    
    Dim count As Integer
    count = cmd.Execute()(0)
    
    If count = 0 Then
        ' No existe, realizar el INSERT
        cmd.CommandText = "INSERT INTO Libros_leidos (LibroID, UsuarioID) VALUES (?, ?)"
        ' Limpiar parámetros anteriores
        cmd.Parameters.Delete "@LibroID"
        cmd.Parameters.Delete "@UsuarioID"
        ' Agregar nuevos parámetros
        cmd.Parameters.Append cmd.CreateParameter("@LibroID", adInteger, adParamInput, , libroID)
        cmd.Parameters.Append cmd.CreateParameter("@UsuarioID", adInteger, adParamInput, , UsuarioID)
        
        On Error GoTo ErrorHandler
        cmd.Execute
        MsgBox "Libro marcado como leído.", vbInformation
    Else
        MsgBox "Este libro ya está marcado como leído.", vbInformation
    End If
    
CleanUp:
    ' Limpieza
    Set cmd = Nothing
    CerrarConexion
    Exit Sub
    
ErrorHandler:
    MsgBox "Error al marcar el libro como leído: " & Err.Description, vbCritical
    Resume CleanUp
End Sub

Private Sub PorLeer_Click()

    Dim cmd As ADODB.Command
    Dim libroID As Integer
    Dim UsuarioID As Integer
    
    libroID = 1  ' Asegúrate de que este valor sea correcto para el libro actual
    UsuarioID = ID  ' Asegúrate de que este valor sea correcto para el usuario actual
    
    AbrirConexion
    
    ' Crear el comando
    Set cmd = New ADODB.Command
    cmd.ActiveConnection = cn
    cmd.CommandType = adCmdText
    
    ' Verificar si ya existe un registro
    cmd.CommandText = "SELECT COUNT(*) FROM Libros_por_leer WHERE LibroID = ? AND UsuarioID = ?"
    cmd.Parameters.Append cmd.CreateParameter("@LibroID", adInteger, adParamInput, , libroID)
    cmd.Parameters.Append cmd.CreateParameter("@UsuarioID", adInteger, adParamInput, , UsuarioID)
    
    Dim count As Integer
    count = cmd.Execute()(0)
    
    If count = 0 Then
        ' No existe, realizar el INSERT
        cmd.CommandText = "INSERT INTO Libros_por_leer (LibroID, UsuarioID) VALUES (?, ?)"
        ' Limpiar parámetros anteriores
        cmd.Parameters.Delete "@LibroID"
        cmd.Parameters.Delete "@UsuarioID"
        ' Agregar nuevos parámetros
        cmd.Parameters.Append cmd.CreateParameter("@LibroID", adInteger, adParamInput, , libroID)
        cmd.Parameters.Append cmd.CreateParameter("@UsuarioID", adInteger, adParamInput, , UsuarioID)
        
        On Error GoTo ErrorHandler
        cmd.Execute
        MsgBox "Libro marcado como por leer", vbInformation
    Else
        MsgBox "Este libro ya está marcado como por leer", vbInformation
    End If
    
CleanUp:
    ' Limpieza
    Set cmd = Nothing
    CerrarConexion
    Exit Sub
    
ErrorHandler:
    MsgBox "Error al marcar el libro como por leer: " & Err.Description, vbCritical
    Resume CleanUp
End Sub
Private Function ObtenerLibrosRecomendados(UsuarioID As Integer) As ADODB.Recordset
    Dim cmd As ADODB.Command
    Dim rs As ADODB.Recordset
    
    On Error GoTo ErrorHandler
    
    AbrirConexion
    
    Set cmd = New ADODB.Command
    With cmd
        Set .ActiveConnection = cn
        .CommandType = adCmdText
        .CommandText = "SELECT DISTINCT L.Titulo, L.Autor, F.Genero " & _
                       "FROM Libros L " & _
                       "INNER JOIN Generos_Favoritos F ON L.Genero = F.Genero " & _
                       "WHERE F.UsuarioID = ? " & _
                       "ORDER BY L.Titulo"
        .Parameters.Append .CreateParameter("@UsuarioID", adInteger, adParamInput, , UsuarioID)
    End With
    
    Set rs = cmd.Execute()
    
    Set ObtenerLibrosRecomendados = rs
    
ExitFunction:
    Set cmd = Nothing
    Exit Function
    
ErrorHandler:
    MsgBox "Error en ObtenerLibrosRecomendados: " & Err.Description & vbNewLine & _
           "Número de error: " & Err.Number, vbCritical, "Error"
    
    Set rs = Nothing
    Resume ExitFunction
End Function

Private Sub Recomendados_Click()
    Dim rs As ADODB.Recordset
    Dim UsuarioID As Integer
    Dim mensaje As String
    
    On Error GoTo ErrorHandler
    
    UsuarioID = ID  ' Asegúrate de obtener el ID del usuario actual de manera apropiada
    
    Set rs = ObtenerLibrosRecomendados(UsuarioID)
    
    If rs Is Nothing Then
        MsgBox "No se pudo obtener la lista de libros recomendados.", vbExclamation
        Exit Sub
    End If
    
    If rs.EOF Then
        MsgBox "No se encontraron libros recomendados basados en tus géneros favoritos.", vbInformation
    Else
        mensaje = "Libros recomendados basados en tus géneros favoritos:" & vbNewLine & vbNewLine
        
        Do While Not rs.EOF
            mensaje = mensaje & rs.Fields("Titulo").Value & " - " & _
                      rs.Fields("Autor").Value & " (" & rs.Fields("Genero").Value & ")" & vbNewLine
            rs.MoveNext
        Loop
        
        MsgBox mensaje, vbInformation, "Libros Recomendados"
    End If
    
ExitSub:
    If Not rs Is Nothing Then
        If rs.State = adStateOpen Then rs.Close
        Set rs = Nothing
    End If
    CerrarConexion
    Exit Sub
    
ErrorHandler:
    MsgBox "Error en Recomendados_Click: " & Err.Description & vbNewLine & _
           "Número de error: " & Err.Number, vbCritical, "Error"
    Resume ExitSub
End Sub




Private Sub Volver_Click()
        Form1.Show
        Unload Me
End Sub
