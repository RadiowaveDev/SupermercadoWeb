package servicio;

import java.util.List;

public interface EmpleadoServicio {
    
    public String grabar(String cod, String nom, String tipo, String user, String pass);
    public Object[] validar(String usu, String pass);
    public Object[] buscar(String cod);
    public List listar();
    public String eliminar(String cod);
    public String actualizar(String tipo, String pass, String cod);
}
