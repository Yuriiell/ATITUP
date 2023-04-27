/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package util;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import modelo.Item;

/**
 *
 * @author HP
 */
public class GeneradorPDF {
    
    public static Document crearpdf(String pTexto) {
        Document documento;
        documento = new Document();
        FileOutputStream ficheroPdf;
        String nombreArchivo="aTitUpItem.pdf";
        try {
            ficheroPdf = new FileOutputStream(nombreArchivo);
        } catch (FileNotFoundException e) {
            throw new RuntimeException(e);
        }
        try {
            PdfWriter.getInstance(documento, ficheroPdf).setInitialLeading(20);
        } catch (DocumentException e) {
            throw new RuntimeException(e);
        }
        documento.open();
        try {
            documento.add(new Paragraph("\n\n DATOS DEL ITEM\n"));
            documento.add(new Paragraph(pTexto));

        } catch (DocumentException e) {
            throw new RuntimeException(e);
        }
        documento.close();
        return documento;
    }
}
