package persistencia;

import java.util.List;
import negocio.Proveedor;

public interface ProveedorDao {
    
    public String grabar(Proveedor pro);
    public Object[] buscar(String codPro);
    public String actualizar(String nom, String dir, String codPro);
    public String eliminar(String codPro);
    public List listar();
}
