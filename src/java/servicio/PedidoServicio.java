package servicio;
import java.util.List;

public interface PedidoServicio {
    public Object[] nuevoPedido(String cod);
    public List agregarArticulo(String cod,String nom,String pre,String can);
    public List quitarArticulo(String cod);
    public List listarArticulos();
    public Object[] buscarCliente(String codCli);
    public String grabarPedido(String codCli);
}
