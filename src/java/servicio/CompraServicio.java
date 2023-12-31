package servicio;
import java.util.List;

public interface CompraServicio {
    public Object[] nuevaCompra(String cod);
    public List agregarArticulo(String cod,String nom, String pre, String can);
    public List quitarArticulo(String cod);
    public List listarArticulo();
    public Object[] buscarProveedor(String codPro);
}
