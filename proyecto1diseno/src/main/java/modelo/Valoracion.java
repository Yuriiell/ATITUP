/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

/**
 *
 * @author HP
 */
public class Valoracion {
    private int estrella;
    private String comentario;
    
    public Valoracion(int pEstrella, String pComentario){
    this.estrella= pEstrella;
    this.comentario=pComentario;
    }

    public int getEstrella() {
        return estrella;
    }

    public String getComentario() {
        return comentario;
    }
}
