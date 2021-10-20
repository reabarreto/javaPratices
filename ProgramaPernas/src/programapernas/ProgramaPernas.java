/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package programapernas;

import java.util.Scanner;

/**
 *
 * @author Cliente
 */
public class ProgramaPernas {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Scanner tec = new Scanner(System.in);
        System.out.println("Quantas pernas?");
        int pernas = tec.nextInt();
        String tipo;
        System.out.printf("Isso é um(a) ");
        
        switch (pernas){
            case 1:
                tipo = "Sasci";
            break;
            case 2:
                tipo = "Bípede";
            break;
            case 3:
                tipo = "Tripé";
            break;
            case 4:
                tipo = "Quadrúpede";
            break;
            case 5:
                tipo = "Aranha";
            break;
            default:
                tipo = "ET";
            break;
                     
        }
        
        System.out.println(tipo);
 
    }
    
}
