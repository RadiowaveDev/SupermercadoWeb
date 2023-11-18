package persistencia;
import java.util.List;
import negocio.Cliente;

public class ClienteDaoImp implements ClienteDao{
    
    @Override
    public String grabar(Cliente cli){
        String sql="insert into cliente values('"+cli.getCodCli()+"','"+cli.getNom()+"','"+cli.getDir()+"')";
        return Operacion.ejecutar(sql);
    }

    @Override
    public Object[] buscar(String codCli) {
        return Operacion.buscar("select * from cliente where codcli='"+codCli+"'");
    }

    @Override
    public String actualizar(String nom, String dir, String codCli) {
        String sql="update cliente set nom='"+nom+"' , dir='"+dir+"' where codcli="+codCli+"'";
        return Operacion.ejecutar(sql);
    }

    @Override
    public String eliminar(String codCli) {
        String sql="delete from cliente where codcli='"+codCli+"'";
        return Operacion.ejecutar(sql);
    }

    @Override
    public List listar() {
        String sql = "select * from cliente";
        List lis = Operacion.listar(sql);
        if(lis!=null){
            return lis;
        }
        return null;
    }
}
