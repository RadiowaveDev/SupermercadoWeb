package vista;

import java.util.ArrayList;
import java.util.List;

public class PedidoPresentador {
    private String msg="";
    private Object[]fila = {"","","","","",""};
    private Object[]fila2 = {"",""};
    private List lis = new ArrayList();

    public PedidoPresentador() {
        lis.add(fila);
    }

    public Object[] getFila() {
        return fila;
    }

    public void setFila(Object[] fila) {
        this.fila = fila;
    }

    public Object[] getFila2() {
        return fila2;
    }

    public void setFila2(Object[] fila2) {
        this.fila2 = fila2;
    }
    
    public List getLis() {
        return lis;
    }

    public void setLis(List lis) {
        this.lis = lis;
    }
    
    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
    
    
}
