VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "ieframe.dll"
Begin VB.Form AnimacionShrek 
   Caption         =   "Form2"
   ClientHeight    =   10035
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   18240
   LinkTopic       =   "Form2"
   ScaleHeight     =   10035
   ScaleWidth      =   18240
   StartUpPosition =   3  'Windows Default
   Begin SHDocVwCtl.WebBrowser WebBrowser1 
      Height          =   10095
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   18255
      ExtentX         =   32200
      ExtentY         =   17806
      ViewMode        =   0
      Offline         =   0
      Silent          =   0
      RegisterAsBrowser=   0
      RegisterAsDropTarget=   1
      AutoArrange     =   0   'False
      NoClientEdge    =   0   'False
      AlignLeft       =   0   'False
      NoWebView       =   0   'False
      HideFileNames   =   0   'False
      SingleClick     =   0   'False
      SingleSelection =   0   'False
      NoFolders       =   0   'False
      Transparent     =   0   'False
      ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
      Location        =   "http:///"
   End
   Begin VB.Timer Timer1 
      Left            =   7920
      Top             =   960
   End
End
Attribute VB_Name = "AnimacionShrek"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    Dim gifPath As String
    
    ' Construye la ruta completa
    gifPath = App.Path & "\imagenes\lib.gif"
    
    ' Carga la imagen
     WebBrowser1.Navigate "about:<html><body style='margin:0;'><img src='" & gifPath & "' style='width:100%;height:100%;'></body></html>"

    
    ' Configurar un timer para cambiar a la lista de libros después de que termine la animación
    Timer1.Interval = 4200 ' Ajusta esto según la duración de tu GIF (en milisegundos)
    Timer1.Enabled = True
End Sub
Private Sub Timer1_Timer()
    ' Cuando el timer se active, mostrar la lista de libros
    Timer1.Enabled = False
    ShowBookList
End Sub


Private Sub ShowBookList()
    ' Oculta el WebBrowser con el GIF
    WebBrowser1.Visible = False
    
    ' Oculta el formulario actual
    Me.Hide
    
    ' Muestra el nuevo formulario
    Form1.Show
End Sub





