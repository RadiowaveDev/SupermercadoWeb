package negocio;
import java.util.ArrayList;
import java.util.List;

public class Pedido {
    private String num;
    private String fec;
    private Cliente cli;
    private Empleado emp;
    private List ces= new ArrayList();
    
    //agregar datos temporales en una estructura de datos(colecciones)
    public void agregarLinea(Articulo art, int can){
        LineaPedido lin = new LineaPedido(art,can);
        ces.add(lin);
    }
    
    //quitar elementos de la lista
    public void quitarLinea(String cod){
        for(int i=0; i<ces.size(); i++){
            LineaPedido lin = (LineaPedido)ces.get(i);
            if(lin.getArt().getCod().equals(cod)){
                ces.remove(i);
            }
        }
    }
    
    //devolver el total
    public double getTot(){
        double tot=0;
        for(int i=0; i<ces.size(); i++){
            LineaPedido lin = (LineaPedido)ces.get(i);
            tot+=lin.getImp();
        }
        return tot;
    }

    public List getCes() {
        return ces;
    }

    public String getNum() {
        return num;
    }

    public String getFec() {
        return fec;
    }

    public Cliente getCli() {
        return cli;
    }

    public Empleado getEmp() {
        return emp;
    }

    public void setNum(String num) {
        this.num = num;
    }

    public void setFec(String fec) {
        this.fec = fec;
    }

    public void setCli(Cliente cli) {
        this.cli = cli;
    }

    public void setEmp(Empleado emp) {
        this.emp = emp;
    }
    
}
