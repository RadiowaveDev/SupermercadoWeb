package servicio;

import java.util.List;

public interface ClienteServicio {
    
    public String grabar(String codCli, String nom, String dir);
    public List listar();
    
}
