package negocio;

public class Empleado {
    private String cod;
    private String nom;
    private String tipo;
    private String user;
    private String pass;

    public Empleado() {
    }
    
    public Empleado(String cod, String nom, String tipo, String user, String pass) {
        this.cod = cod;
        this.nom = nom;
        this.tipo = tipo;
        this.user = user;
        this.pass = pass;
    }

    public String getCod() {
        return cod;
    }

    public String getNom() {
        return nom;
    }

    public String getTipo() {
        return tipo;
    }

    public String getUser() {
        return user;
    }

    public String getPass() {
        return pass;
    }

    public void setCod(String cod) {
        this.cod = cod;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }
        
}
