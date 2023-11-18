package servicio;
import java.util.List;
import negocio.Empleado;
import persistencia.EmpleadoDao;
import persistencia.EmpleadoDaoImp;

public class EmpleadoServicioImp implements EmpleadoServicio{
    
    private EmpleadoDao empDao;

    public EmpleadoServicioImp() {
        empDao = new EmpleadoDaoImp();
    }
    
    @Override
    public String grabar(String cod, String nom, String tipo, String user, String pass){
        Empleado emp = new Empleado(cod,nom,tipo,user,pass);
        String msg = empDao.grabar(emp);
        if(msg==null){
            msg="Empleado grabado";
        }
        return msg;
    }
    
    @Override
    public Object[] validar(String usu, String pass){
        Empleado emp = empDao.validar(usu, pass);
        if(emp!=null){
            Object[]fila = new Object[2];
            fila[0] = emp.getCod();
            fila[1] = emp.getNom();
            return fila;
        }
        return null;
    }
    
    @Override
    public Object[] buscar(String cod){
        Empleado emp = empDao.buscar(cod);
        if(emp!=null){
            Object[]fila = new Object[3];
            fila[0] = emp.getCod();
            fila[1] = emp.getNom();
            fila[2] = emp.getTipo();
            return fila;
        }
        return null;
    }

    @Override
    public List listar() {
        return empDao.listar();
    }

    @Override
    public String eliminar(String cod) {
        String msg = empDao.eliminar(cod);
        if(msg==null){
            msg="Empleado eliminado";
        }
        return null;
    }

    @Override
    public String actualizar(String tipo, String pass, String cod) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
