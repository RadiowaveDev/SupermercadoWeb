package servicio;

import java.text.SimpleDateFormat;
import java.util.*;
import negocio.*;
import persistencia.*;

public class CompraServicioImp implements CompraServicio{
    private Compra com;
    
    @Override
    public Object[] nuevaCompra(String cod) {
        com = new Compra();
        com.setNum("C00001");
        Date hoy =new Date();
        SimpleDateFormat formaFecha = new SimpleDateFormat("dd/MM/Y");
        com.setFec(formaFecha.format(hoy));
        com.setEmp(verEmpleado(cod));
        return verCompra();
    }

    @Override
    public List agregarArticulo(String cod, String nom, String pre, String can) {
        Articulo art = new Articulo(cod,nom,Double.parseDouble(pre));
        com.agregarLinea(art, Integer.parseInt(can));
        return verCesta();
    }

    @Override
    public List quitarArticulo(String cod) {
        com.quitarLinea(cod);
        return verCesta();
    }
    
    private Object[] verCompra(){
        Object[] fila = new Object[5];
        fila[0] = com.getNum();
        fila[1] = com.getFec();
        fila[2] = com.getTot();
        fila[3] = com.getEmp().getCod();
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
            LineaCompra lin = (LineaCompra)com.getCes().get(i);
            Object[]fila = new Object[6];
            fila[0]=lin.getArt().getCod();
            fila[1]=lin.getArt().getNom();
            fila[2]=lin.getArt().getPre();
            fila[3]=lin.getCant();
            fila[4]=lin.getImp();
            fila[5]=com.getTot();
            lis.add(fila);
        }
        return lis;
    }

    @Override
    public List listarArticulo() {
        return new ArticuloDaoImp().listar() ;
    }

    @Override
    public Object[] buscarProveedor(String codPro) {
        Object[]fila= new ProveedorDaoImp().buscar(codPro);
        if(fila!=null){
            return fila;
        }else{
            return null;
        }
    }

}
