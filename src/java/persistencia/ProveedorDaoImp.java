package persistencia;
import java.util.List;
import negocio.Proveedor;

public class ProveedorDaoImp implements ProveedorDao{
    
    @Override
    public String grabar(Proveedor pro){
        String sql="insert into proveedor values('"+pro.getCodPro()+"','"+pro.getNom()+"','"+pro.getDir()+"')";
        return Operacion.ejecutar(sql);
    }

    @Override
    public Object[] buscar(String codPro) {
        String sql="select * from proveedor where codpro='"+codPro+"'";
        return Operacion.buscar(sql);
    }

    @Override
    public String actualizar(String nom, String dir, String codPro) {
        String sql="update proveedor set nom='"+nom+"' , dir='"+dir+"' where codpro='"+codPro+"'";
        return Operacion.ejecutar(sql);
    }

    @Override
    public String eliminar(String codPro) {
        String sql="delete from proveedor where codpro='"+codPro+"'";
        return Operacion.ejecutar(sql);
    }

    @Override
    public List listar() {
        String sql = "select * from proveedor";
        List lis = Operacion.listar(sql);
        if(lis!=null){
            return lis;
        }
        return null;
    }
}
