/*
**  basic.prg -- hbTRON sample
**
** Developed by Diego Fazio(2021)
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
 
   // wait till hbTRON closes
   while ( hbT_Run() == 0 )
   enddo

RETURN
