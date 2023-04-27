
package modelo;

import java.util.ArrayList;

/**
 *s
 * @author HPs
 */
public class Categoria {
    private String nombre;
    private String codigo;
    private String descripcion;
    private Curso curso;
    private ArrayList<Item> items;
    private ArrayList<Curso> cursos;
    
    public Categoria(String pNombre, String pDescripcion, Curso pCurso){
        this.curso=pCurso;
        this.nombre = pNombre;
        this.codigo = null;
        this.descripcion= pDescripcion;
        this.items = new ArrayList();
    }

    public String getNombre() {
        return nombre;
    }

    public String getCodigo() {
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
