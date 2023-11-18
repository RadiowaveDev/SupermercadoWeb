package persistencia;

import java.util.List;
import negocio.Cliente;

public interface ClienteDao {
    
    public String grabar(Cliente cli);
    public Object[] buscar(String codCli);
    public String actualizar(String nom, String dir, String codCli);
    public String eliminar(String codCli);
    public List listar();
}
