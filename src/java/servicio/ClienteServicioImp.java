package servicio;
import java.util.List;
import negocio.Cliente;
import persistencia.ClienteDao;
import persistencia.ClienteDaoImp;

public class ClienteServicioImp implements ClienteServicio{
    
    private ClienteDao cliDao;

    public ClienteServicioImp() {
        cliDao = new ClienteDaoImp();
    }
    
    @Override
    public String grabar(String codCli, String nom, String dir){
        Cliente cli = new Cliente(codCli,nom,dir);
        String msg = cliDao.grabar(cli);
        if(msg==null){
            msg="Cliente grabado";
        }
        return msg;
    }
    
    @Override
    public List listar() {
        return cliDao.listar();
    }
}
