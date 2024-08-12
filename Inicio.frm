VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00C0FFFF&
   Caption         =   "Form1"
   ClientHeight    =   10305
   ClientLeft      =   225
   ClientTop       =   870
   ClientWidth     =   18690
   LinkTopic       =   "Form1"
   Picture         =   "Inicio.frx":0000
   ScaleHeight     =   10305
   ScaleWidth      =   18690
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command3 
      BackColor       =   &H0080FF80&
      Caption         =   "VER DETALLES"
      Height          =   615
      Left            =   2400
      Style           =   1  'Graphical
      TabIndex        =   17
      Top             =   9000
      Width           =   2775
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H0080FF80&
      Caption         =   "VER DETALLES"
      Height          =   615
      Left            =   5640
      Style           =   1  'Graphical
      TabIndex        =   16
      Top             =   4440
      Width           =   2895
   End
   Begin VB.CommandButton VerDetalles1 
      BackColor       =   &H0080FF80&
      Caption         =   "VER DETALLES"
      Height          =   615
      Left            =   2400
      Style           =   1  'Graphical
      TabIndex        =   15
      Top             =   4440
      Width           =   2775
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H0080FF80&
      Caption         =   "VER DETALLES"
      Height          =   615
      Index           =   9
      Left            =   15720
      MaskColor       =   &H00000000&
      Style           =   1  'Graphical
      TabIndex        =   12
      Top             =   9000
      Width           =   2775
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H0080FF80&
      Caption         =   "VER DETALLES"
      Height          =   615
      Index           =   8
      Left            =   12360
      MaskColor       =   &H00000000&
      Style           =   1  'Graphical
      TabIndex        =   11
      Top             =   9000
      Width           =   2895
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H0080FF80&
      Caption         =   "VER DETALLES"
      Height          =   615
      Index           =   7
      Left            =   9000
      MaskColor       =   &H00000000&
      Style           =   1  'Graphical
      TabIndex        =   10
      Top             =   9000
      Width           =   2895
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H0080FF80&
      Caption         =   "VER DETALLES"
      Height          =   615
      Index           =   6
      Left            =   5640
      MaskColor       =   &H00000000&
      Style           =   1  'Graphical
      TabIndex        =   9
      Top             =   9000
      Width           =   2895
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H0080FF80&
      Caption         =   "VER DETALLES"
      Height          =   615
      Index           =   4
      Left            =   15720
      MaskColor       =   &H00000000&
      Style           =   1  'Graphical
      TabIndex        =   8
      Top             =   4440
      Width           =   2775
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H0080FF80&
      Caption         =   "VER DETALLES"
      Height          =   615
      Index           =   3
      Left            =   12360
      MaskColor       =   &H00000000&
      Style           =   1  'Graphical
      TabIndex        =   7
      Top             =   4440
      Width           =   2895
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H0080FF80&
      Caption         =   "VER DETALLES"
      Height          =   615
      Index           =   2
      Left            =   9000
      MaskColor       =   &H00000000&
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   4440
      Width           =   2895
   End
   Begin VB.TextBox Text1 
      Height          =   405
      Left            =   13800
      TabIndex        =   4
      Text            =   "Text1"
      Top             =   360
      Width           =   4215
   End
   Begin VB.CommandButton CMSALIR 
      BackColor       =   &H000000FF&
      Caption         =   "SALIR"
      Height          =   495
      Left            =   0
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   9120
      Width           =   2055
   End
   Begin VB.Label Fecha 
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
      Height          =   615
      Left            =   120
      TabIndex        =   14
      Top             =   7680
      Width           =   1935
   End
   Begin VB.Label Mega 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "MEGA"
      BeginProperty Font 
         Name            =   "Wide Latin"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   480
      TabIndex        =   13
      Top             =   4440
      Width           =   1335
   End
   Begin VB.Image Image1 
      Height          =   1095
      Left            =   240
      Picture         =   "Inicio.frx":22156
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   1695
   End
   Begin VB.Image imagen2 
      Height          =   3255
      Index           =   0
      Left            =   5640
      Picture         =   "Inicio.frx":2ADB5
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   2835
   End
   Begin VB.Image imagen5 
      Height          =   3255
      Index           =   9
      Left            =   15720
      Picture         =   "Inicio.frx":529A2
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   2775
   End
   Begin VB.Image imagen4 
      Height          =   3255
      Index           =   8
      Left            =   12360
      Picture         =   "Inicio.frx":9341A
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   2895
   End
   Begin VB.Image imagen3 
      Height          =   3255
      Index           =   7
      Left            =   9000
      Picture         =   "Inicio.frx":9F63B
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   2895
   End
   Begin VB.Image imagen1 
      Height          =   3255
      Index           =   5
      Left            =   2295
      Picture         =   "Inicio.frx":A6077
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   2835
   End
   Begin VB.Image imagen10 
      Height          =   3255
      Index           =   4
      Left            =   15720
      Picture         =   "Inicio.frx":DFB7A
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   2775
   End
   Begin VB.Image imagen9 
      Height          =   3255
      Index           =   3
      Left            =   12360
      Picture         =   "Inicio.frx":F0C46
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   2895
   End
   Begin VB.Image imagen8 
      Height          =   3255
      Index           =   2
      Left            =   9000
      Picture         =   "Inicio.frx":F5792
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   2895
   End
   Begin VB.Image imagen7 
      Height          =   3255
      Index           =   1
      Left            =   5760
      Picture         =   "Inicio.frx":FF117
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   2655
   End
   Begin VB.Label TITULO 
      Alignment       =   2  'Center
      BackColor       =   &H00C0FFFF&
      BackStyle       =   0  'Transparent
      Caption         =   "MEGA LIBRERIA BITS"
      BeginProperty Font 
         Name            =   "Wide Latin"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   450
      Left            =   6240
      TabIndex        =   5
      Top             =   120
      Width           =   5775
   End
   Begin VB.Image imagen6 
      Height          =   3255
      Index           =   0
      Left            =   2400
      Picture         =   "Inicio.frx":10C15A
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   2775
   End
   Begin VB.Label Fechan 
      BackColor       =   &H8000000D&
      BackStyle       =   0  'Transparent
      Caption         =   "FECHA:"
      BeginProperty Font 
         Name            =   "Wide Latin"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   2
      Top             =   7080
      Width           =   1215
   End
   Begin VB.Image perfil 
      Height          =   2055
      Left            =   240
      Picture         =   "Inicio.frx":138F6B
      Stretch         =   -1  'True
      Top             =   1560
      Width           =   1695
   End
   Begin VB.Label USUARIO 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFF00&
      BackStyle       =   0  'Transparent
      Caption         =   "USUARIO"
      Height          =   255
      Left            =   480
      TabIndex        =   1
      Top             =   840
      Width           =   1095
   End
   Begin VB.Label LbPerfil 
      BackColor       =   &H8000000D&
      BackStyle       =   0  'Transparent
      Caption         =   "PERFIL"
      BeginProperty Font 
         Name            =   "Wide Latin"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   360
      Width           =   1935
   End
   Begin VB.Line Line1 
      X1              =   2160
      X2              =   2160
      Y1              =   0
      Y2              =   10320
   End
   Begin VB.Menu OPCIONES 
      Caption         =   "OPCIONES"
      Begin VB.Menu LIBROSLEIDOS 
         Caption         =   "LIBROS LEÍDOS"
      End
      Begin VB.Menu LIBROSPORLEER 
         Caption         =   "LIBROS POR LEER"
      End
      Begin VB.Menu LIBROSDESCARTADOS 
         Caption         =   "LIBROS DESCARTADOS"
      End
      Begin VB.Menu GENEROSFAVORITOS 
         Caption         =   "GENEROS FAVORITOS"
      End
      Begin VB.Menu LIBROSRECOMENDADOS 
         Caption         =   "LIBROS RECOMENDADOS"
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub CMSALIR_Click()
    Unload Me
    End
End Sub


Private Sub Command2_Click()
Dim frm8 As New Form8
    
    On Error Resume Next
    
    ' Usar el índice pasado al procedimiento
    Set frm8.ImagenDetalle.Picture = Me.imagen2(0).Picture
    
    If Err.Number <> 0 Then
        MsgBox "No se pudo acceder a la imagen. Error: " & Err.Description, vbExclamation
        Err.Clear
    Else
        frm8.Show
    End If
    
    On Error GoTo 0
End Sub


Private Sub GENEROSFAVORITOS_Click()
Form6.Show
End Sub

Private Sub LIBROSDESCARTADOS_Click()
Form5.Show
End Sub

Private Sub LIBROSLEIDOS_Click()
Form3.Show
End Sub

Private Sub LIBROSPORLEER_Click()
Form4.Show
End Sub

Private Sub LIBROSRECOMENDADOS_Click()
Form7.Show
End Sub


Private Sub VerDetalles1_Click()
    
    Dim frm2 As New Form2
    
    On Error Resume Next
    
    ' Usar el índice pasado al procedimiento
    Set frm2.ImagenDetalle.Picture = Me.imagen1(5).Picture
    
    If Err.Number <> 0 Then
        MsgBox "No se pudo acceder a la imagen. Error: " & Err.Description, vbExclamation
        Err.Clear
    Else
        frm2.Show
    End If
    
    On Error GoTo 0
End Sub

Private Sub Form_Load()
    Dim rs As ADODB.Recordset
    Dim UserID As Integer
    ID = 2
    UserID = ID
    AbrirConexion
    ' Configura y ejecuta la consulta
    Set rs = New ADODB.Recordset
    rs.Open "SELECT Nombre FROM Usuarios WHERE UsuarioID = " & UserID, cn, adOpenStatic, adLockReadOnly
    ' Verifica si se encontraron registros
    If Not rs.EOF Then
        USUARIO.Caption = rs.Fields("Nombre").Value
    Else
        USUARIO.Caption = "Usuario no encontrado"
    End If
    ' Cierra la conexión y limpia
    rs.Close
    Set rs = Nothing
    Fecha.Caption = Format(Date, "dd/mm/yyyy")
End Sub
