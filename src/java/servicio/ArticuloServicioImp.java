package servicio;

import negocio.Articulo;
import persistencia.*;

public class ArticuloServicioImp implements ArticuloServicio{
    private ArticuloDao artDao;

    public ArticuloServicioImp() {
        artDao = new ArticuloDaoImp();
    }
    
    @Override
    public String grabar(String cod, String nom, double pre, int sto) {
        Articulo art = new Articulo(cod,nom,pre,sto);
        String msg = artDao.grabar(art);
        if(msg==null){
            msg="Articulo grabado";
        }
        return msg;
    }
    
}
