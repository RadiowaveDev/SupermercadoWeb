package servicio;
import java.util.List;
import negocio.Proveedor;
import persistencia.ProveedorDao;
import persistencia.ProveedorDaoImp;

public class ProveedorServicioImp implements ProveedorServicio{
    
    private ProveedorDao proDao;

    public ProveedorServicioImp() {
        proDao = new ProveedorDaoImp();
    }
    
    @Override
    public String grabar(String codPro, String nom, String dir){
        Proveedor pro = new Proveedor(codPro,nom,dir);
        String msg = proDao.grabar(pro);
        if(msg==null){
            msg = "Proveedor grabado";
        }
        return msg;
    }
    

    @Override
    public List listar() {
        return proDao.listar();
    }
}
