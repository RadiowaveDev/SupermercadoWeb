package servicio;

import java.util.List;

public interface ProveedorServicio {
    
    public String grabar(String codPro, String nom, String dir);
    public List listar();
}
