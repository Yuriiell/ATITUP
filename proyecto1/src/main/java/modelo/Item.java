/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

import java.util.ArrayList;

/**
 *
 * @author HP
 */
public class Item {
    private String pregunta;
    private String respuesta;
    private String fuente;
    private String ejemplo;
    private String fuenteEjemplo;
    private ArrayList<Valoracion> valoracionesRespuesta;
    private ArrayList<Valoracion> valoracionesEjemplo;
    
    public Item(String pPregunta, String pRespuesta, String pFuente, String pEjemplo, String pFuenteEjemplo){
        this.pregunta=pPregunta;
        this.respuesta=pRespuesta;
        this.fuente=pFuente;
        this.ejemplo=pEjemplo;
        this.fuenteEjemplo=pFuenteEjemplo;
        this.valoracionesRespuesta= new ArrayList();
        this.valoracionesEjemplo=new ArrayList();
    }

    public String getPregunta() {
        return pregunta;
    }

    public String getRespuesta() {
        return respuesta;
    }

    public String getFuente() {
        return fuente;
    }

    public String getEjemplo() {
        return ejemplo;
    }

    public String getFuenteEjemplo() {
        return fuenteEjemplo;
    }

    public ArrayList<Valoracion> getValoracionesRespuesta() {
        return valoracionesRespuesta;
    }

    public ArrayList<Valoracion> getValoracionesEjemplo() {
        return valoracionesEjemplo;
    }
    
    public void addValoracionRespuesta(int pEstrellas, String pComentario){
        this.valoracionesRespuesta.add(new Valoracion(pEstrellas,pComentario));
    }
    
    public void addValoracionEjemplo(int pEstrellas, String pComentario){
        this.valoracionesEjemplo.add(new Valoracion(pEstrellas,pComentario));
    }

    @Override
    public String toString() {
        return "Item: \n Pregunta: " + pregunta + "\n "+ "Respuesta: " + respuesta + "\n Fuente: " + fuente + "\n Ejemplo: " + ejemplo + "\n Fuente del ejemplo: " + fuenteEjemplo + "\n valoracionesRespuesta=" + valoracionesRespuesta + "\n valoracionesEjemplo=" + valoracionesEjemplo;
    }
}
