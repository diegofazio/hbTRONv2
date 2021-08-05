/*
**  advance.prg -- hbWUI WebView2/Cocoa/GTK Harbour Web UI
**
** Developed by Diego Fazio(2021)
/*
 From a harbour program, it opens a new window showing some url
*/
FUNCTION Main()

   // Window tittle
   hbT_SetTitle( 'hbTRON SAMPLE' )
   hbT_DocumentRoot( hb_DirSepDel( hb_DirBase() + 'htdocs' ) )
   hbT_SetHost( '127.0.0.1' )
   hbT_SetPort( 8002 )

   hbt_SetStartPage( 'test.html')

   // Window size
   hbT_SetSize( 1024, 768 )
   
   // Could it be created ?
   IF ( hbT_Create() == -1  )
      RETURN
   ENDIF
 
   // Load external url

   // wait till WUI closes
   while ( hbT_Run() == 0 )
   enddo

RETURN
