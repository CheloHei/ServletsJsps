/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utilerias;
import java.text.SimpleDateFormat;
import java.util.Date;
/**
 *
 * @author Chelo
 */
public class Conversiones {
    private static final String FORMATO = "dd-MM-yyyy";
    
    /*
        Metodo para convertir una fecha en una cadena
        con el formato especificado
        @param fecha
        @return
    */
    public static String format(Date fecha){
        SimpleDateFormat formateador  = new SimpleDateFormat(FORMATO);
        return formateador.format(fecha);
    }
}
