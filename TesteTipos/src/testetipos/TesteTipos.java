/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testetipos;

/**
 *
 * @author Cliente
 */
public class TesteTipos {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        /*
        int idade = 30; 
        String valor = Integer.toString (30);
        System.out.printf("A idade é %s ",valor);
    */
        
        String valor =  "30";
        float idade = Integer.parseInt(valor);
        System.out.printf("A idade é %.2f ", idade);
        
                            
    }
    
}
