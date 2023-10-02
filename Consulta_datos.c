#include <mysql.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
//programa para consutar que jugador ha jugado la partida más larga y contra quien la ha jugado
int main(int argc, char **argv)
{
	MYSQL *conn;
	int err;
	MYSQL_RES *resultado;
	MYSQL_ROW row;
	int duracion;
	char jugador1[60];
	char jugador2[60];
	int resultado;
	char consulta[80];
	conn = mysql_init(NULL);
	if (conn==NULL) {
		printf ("Error al conectar: %u %s\n", 
				mysql_errno(conn), mysql_error(conn));
		exit (1);
	}
	conn = mysql_real_connect (conn, "localhost","user", "pass", "partidas",0, NULL, 0);
	if (conn==NULL) {
		printf ("Error: %u %s\n", 
				mysql_errno(conn), mysql_error(conn));
		exit (1);
	}
	err=mysql_query (conn, "SELECT * FROM partidas");
	if (err!=0) {
		printf ("Error al consultar datos de la base %u %s\n",
				mysql_errno(conn), mysql_error(conn));
		exit (1);
	}
	if (row == NULL)
		printf ("No se han obtenido datos en la consulta\n")
		strcpy (consulta,"SELECT jugador1,jugador2,ganador,duracion FROM partidas WHERE duracion = (SELECT MAX(duracion) FROM partidas)"); 
		err=mysql_query (conn, consulta); 
		if (err!=0) {
			printf ("Error al consultar datos de la base %u %s\n",
					mysql_errno(conn), mysql_error(conn));
			exit (1);
		}

		resultado = mysql_store_result (conn); 
		row = mysql_fetch_row (resultado);
		printf (row[0],row[1],row[2],row[4]);
		mysql_close (conn);
		exit(0);
}
