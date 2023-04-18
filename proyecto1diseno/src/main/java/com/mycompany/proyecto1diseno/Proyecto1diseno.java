/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.proyecto1diseno;

import com.itextpdf.text.Document;
import java.util.Scanner;
import modelo.Item;
import util.Correo;
//import util.AnalisisSentimientos;

/**
 *
 * @author HP
 */
public class Proyecto1diseno {

    public static void main(String[] args) throws Exception {
      //System.out.println(AnalisisSentimientos.estimatingSentiment("Me parece que es una idea excelente"));
      //System.out.println(AnalisisSentimientos.estimatingSentiment("Me parece que es una idea mala"));
      
        Scanner scanner = new Scanner(System.in);
        System.out.println("Registrar un Item");
        System.out.println("Ingrese el texto del prompt: ");
        String pPrompt = scanner.nextLine();
        System.out.println("Ingrese la respuesta: ");
        String pRespuesta = scanner.nextLine();
        System.out.println("Ingrese la fuente: ");
        String pFuente = scanner.nextLine();
        System.out.println("Ingrese el Ejemplo");
        String pEjemplo = scanner.nextLine();
        System.out.println("Ingrese la fuente del ejemplo");
        String pFuenteEjem = scanner.nextLine();

        Item pItem= new Item(pPrompt,pRespuesta, pFuente, pEjemplo, pFuenteEjem);
        Item.crearpdf(pItem);
        Correo.enviarCorreo();
    }
}
