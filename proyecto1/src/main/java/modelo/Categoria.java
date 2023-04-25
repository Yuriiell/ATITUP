
package modelo;

import java.util.ArrayList;

/**
 *s
 * @author HPs
 */
public class Categoria {
    private String nombre;
    private int codigo;
    private String descripcion;
    private ArrayList<Item> items;
    private ArrayList<Curso> cursos;
    
    public Categoria(String pNombre, int pCodigo, String pDescripcion ){
        this.nombre = pNombre;
        this.codigo= pCodigo;
        this.descripcion= pDescripcion;
        this.items = new ArrayList();
    }

    public String getNombre() {
        return nombre;
    }

    public int getCodigo() {
        return codigo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public ArrayList<Item> getItems() {
        return items;
    }

    public ArrayList<Curso> getCursos() {
        return cursos;
    }
    
    public void addItem(Item pItem){
        this.items.add(pItem);
    }
    
    public void addCurso(Curso pCurso){
        this.cursos.add(pCurso);
    }
}
