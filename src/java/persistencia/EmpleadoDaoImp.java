package persistencia;
import java.util.List;
import negocio.Empleado;


public class EmpleadoDaoImp implements EmpleadoDao{
    
    // @Override: anotación, índices de las tareas del sistema.
    @Override 
    public String grabar(Empleado emp){
      String sql="insert into empleado values('"+emp.getCod()+"','"+emp.getNom()+"','"+emp.getTipo()+"','"+emp.getUser()+"','"+emp.getPass()+"')";
      return Operacion.ejecutar(sql);
    }  

    @Override
    public Empleado validar(String usu, String pass) {
        String sql="select * from empleado where usu like '"+usu+"' and pass like '"+pass+"'";
        Object[]fil=Operacion.buscar(sql);
        if(fil!=null){
            Empleado emp = new Empleado();
            emp.setCod(fil[0].toString());
            emp.setNom(fil[1].toString());
            emp.setTipo(fil[2].toString());
            emp.setUser(fil[3].toString());
            emp.setPass(fil[4].toString());
            return emp;
        }
        return null;
    }

    @Override
    public Empleado buscar(String cod) {
        String sql="select * from empleado where cod='"+cod+"'";
        Object[]fil=Operacion.buscar(sql);
        if(fil!=null){
            Empleado emp = new Empleado();
            emp.setCod(fil[0].toString());
            emp.setNom(fil[1].toString());
            emp.setTipo(fil[2].toString());
            emp.setUser(fil[3].toString());
            emp.setPass(fil[4].toString());
            return emp;
        }
        return null;
    }

    @Override
    public String actualizar(String tipo, String pass, String cod) {
        String sql="update empleado set tipo='"+tipo+"' , pass='"+pass+"' where cod='"+cod+"'";
        return Operacion.ejecutar(sql);
    }

    @Override
    public String eliminar(String cod) {
        String sql="delete from empleado where cod='"+cod+"'";
        return Operacion.ejecutar(sql);
    }

    @Override
    public List listar() {
        String sql="select * from empleado ";
        List lis = Operacion.listar(sql);
        if(lis!=null){  
            return lis;
        }
        return null;
    }
}
