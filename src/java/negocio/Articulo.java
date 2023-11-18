package negocio;

public class Articulo {
   private String cod;
   private String nom;
   private double pre;
   private int sto;

    public Articulo() {
    }

    public Articulo(String cod, String nom, double pre) {
        this.cod = cod;
        this.nom = nom;
        this.pre = pre;
    }

    public Articulo(String cod, String nom, double pre, int sto) {
        this.cod = cod;
        this.nom = nom;
        this.pre = pre;
        this.sto = sto;
    }

    public String getCod() {
        return cod;
    }

    public String getNom() {
        return nom;
    }

    public double getPre() {
        return pre;
    }

    public int getSto() {
        return sto;
    }

    public void setCod(String cod) {
        this.cod = cod;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setPre(double pre) {
        this.pre = pre;
    }

    public void setSto(int sto) {
        this.sto = sto;
    }

    

   
}
