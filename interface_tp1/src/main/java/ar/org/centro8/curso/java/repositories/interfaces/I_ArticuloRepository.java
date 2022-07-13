package ar.org.centro8.curso.java.repositories.interfaces;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import ar.org.centro8.curso.java.entities.Articulo;
import ar.org.centro8.curso.java.enums.Rubro;

public interface I_ArticuloRepository {
    void save(Articulo articulo);

    void delete(Articulo articulo);

    List<Articulo>getAll();
    
    default Articulo getById(int id){
        return getAll()
                .stream()
                .filter(c->c.getId()==id)
                .findFirst()
                .orElse(new Articulo());
    }

    default Articulo getById(Articulo articulo) {
        if (articulo == null) {
            return new Articulo();
        }
        return getAll()
                .stream()
                .filter(a -> a.getId() == articulo.getId())
                .findFirst()
                .orElse(new Articulo());
    }
    
    default List<Articulo> getByRubro(Rubro rubro) {
        if (rubro == null) {
            return new ArrayList();
        }
        return getAll()
                .stream()
                .filter(c -> c.getRubro() != null && c.getRubro() == rubro)
                .collect(Collectors.toList());
    }

    default List<Articulo>getLikeDescripcion(String descripcion){
        if(descripcion==null) return new ArrayList();
        return getAll()
                .stream()
                .filter(c-> c.getDescripcion()!=null 
                            && c
                                .getDescripcion()
                                .toLowerCase()
                                .contains(descripcion.toLowerCase()))
                .collect(Collectors.toList());
    }
}
