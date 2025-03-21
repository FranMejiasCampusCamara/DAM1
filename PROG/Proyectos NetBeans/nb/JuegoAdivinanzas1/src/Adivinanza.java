
/**
 *
 * @author Mejias Gonzalez Francisco
 */
public class Adivinanza {
    //Atributos

    private int incognita, numeroPrueba;
    private byte intentos, cifrasIncognita;
    //Constructores

    public Adivinanza() {
        this.incognita = (int) (Math.random() * 1000000 + 1);
        this.intentos = 10;
    }//Fin Constructor

    //Metodos
    public void juega(int num) {
        System.out.println("Jugador, adivina el numero: ");
        this.numeroPrueba = num;
    }//Fin Metodo

    public boolean haGanado() {
        //Entorno
        boolean haGanado = false;
        //Algoritmo

        return haGanado;
    }//Fin Metodo

    public String getPista() {
        //Entorno
        String pista;
        byte i;
        Byte digito;
        //Algoritmo
        i = 1;
        pista = "";
        
        return pista;
    }//Fin Metodo

    public static String meteAsteriscos(byte n) {
        //Entorno
        String pistaAsteriscos;
        //Algoritmo
        pistaAsteriscos = "";
        for (int i = 0; i < n; i++) {
            pistaAsteriscos = pistaAsteriscos + "*";
        }//Fin Para
        return pistaAsteriscos;
    }//Fin Metodo

    public static byte cifras(int n) {
        //Entorno
        byte cifras;
        int i;
        //Algoritmo
        cifras = 1;
        i = 10;
        while (n >= i) {
            i = i * 10;
            cifras++;
        }//Fin Mientras
        return cifras;
    }//Fin Metodo
    //Getters&Setters

    public byte getCifrasIncognita() {
        return cifras(this.incognita);
    }//Fin Metodo

    public byte getIntentos() {
        return this.intentos;
    }//Fin Metodo
}//Fin Clase
