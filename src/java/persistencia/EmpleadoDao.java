package persistencia;

import java.util.List;
import negocio.Empleado;

public interface EmpleadoDao {
    
    public String grabar(Empleado emp);
    public Empleado validar(String usu,String pass);
    public Empleado buscar(String cod);
    public String actualizar(String tipo, String pass, String cod);
    public String eliminar(String cod);
    public List listar();
}
