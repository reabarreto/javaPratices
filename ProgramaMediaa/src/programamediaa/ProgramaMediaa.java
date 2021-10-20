/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package programamediaa;

import java.util.Scanner;

/**
 *
 * @author Cliente
 */
public class ProgramaMediaa {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        Scanner teclado = new Scanner(System.in);
        float n1 = teclado.nextFloat();
        float n2 = teclado.nextFloat();
        float m = (n1 + n2)/2;
        
        System.out.printf("Sua primeira nota é %.2f \n",n1);
        System.out.printf("Sua segunda nota é %.2f \n",n2);
        System.out.printf("Sua média é %.2f \n",m);
        
        if (m>9) {
            
            System.out.println("Parabéns, pequeno gafanhoto");  
        }
        
    }
    
}
