package servicio;

import java.text.SimpleDateFormat;
import java.util.*;
import negocio.*;
import persistencia.*;

public class PedidoServicioImp implements PedidoServicio{
    private Pedido ped;
    
    @Override
    public Object[] nuevoPedido(String cod) {
        ped = new Pedido();
        ped.setNum("POOO01");
        Date hoy =new Date();
        SimpleDateFormat formaFecha = new SimpleDateFormat("dd/MM/Y");
        ped.setFec(formaFecha.format(hoy));
        ped.setEmp(verEmpleado(cod));
        return verPedido();
    }

    @Override
    public List agregarArticulo(String cod,String nom,String pre,String can) {
        Articulo art= new Articulo(cod,nom,Double.parseDouble(pre));
        ped.agregarLinea(art, Integer.parseInt(can));
        return verCesta();
    }

    @Override
    public List quitarArticulo(String cod) {
        ped.quitarLinea(cod);
        return verCesta();
    }
    
    private Object[] verPedido(){
        Object[]fila = new Object[5];
        fila[0] = ped.getNum();
        fila[1] = ped.getFec();
        fila[2] = ped.getTot();
        fila[3] = ped.getEmp().getCod();
        return fila;
    }
    
    private Empleado verEmpleado(String cod){
        Empleado emp =  new Empleado();
        emp.setCod(cod);
        return emp;
    }
    
    private Articulo verArticulo(String cod){
        Articulo art = new Articulo();
        art.setCod("A001");
        return art;
    }
    
    private List verCesta(){
        List lis = new ArrayList();
        for(int i=0; i<lis.size(); i++){
            LineaPedido lin = (LineaPedido)ped.getCes().get(i);
            Object[]fila = new Object[6];
            fila[0]=lin.getArt().getCod();
            fila[1]=lin.getArt().getNom();
            fila[2]=lin.getArt().getPre();
            fila[3]=lin.getCan();
            fila[4]=lin.getImp();
            fila[5]=ped.getTot();
            lis.add(fila);
        }
        return lis;
    }

    @Override
    public List listarArticulos() {
        return new ArticuloDaoImp().listar() ;
    }

    @Override
    public Object[] buscarCliente(String codCli) {
        Object[]fila=new ClienteDaoImp().buscar(codCli);
        if(fila!=null){
            return fila;
        }
        return null;
    }

    @Override
    public String grabarPedido(String codCli) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
