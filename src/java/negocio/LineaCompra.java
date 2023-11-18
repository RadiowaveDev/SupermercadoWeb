package negocio;

public class LineaCompra {
    private Articulo art;
    private int cant;

    public LineaCompra() {
    }

    public LineaCompra(Articulo art, int cant) {
        this.art = art;
        this.cant = cant;
    }
    
    public Articulo getArt() {
        return art;
    }

    public void setArt(Articulo art) {
        this.art = art;
    }

    public int getCant() {
        return cant;
    }

    public void setCant(int cant) {
        this.cant = cant;
    }
    
    public double getImp(){
        return art.getPre()*cant;
    }
}
