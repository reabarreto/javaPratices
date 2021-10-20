/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package operadoreslogicos;

/**
 *
 * @author Cliente
 */
public class OperadoresLogicos {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        int x, y, z;
        boolean r, s, t;
        x=3;
        y=4;
        z=12;
        
        r = (x<y) && (y<z) ? true:false;
        s = (x>y) || (y<z) ? true:false;
        t = (x<y) ^ (y>z) ? true:false;
        
        System.out.println(r);
        System.out.println(s);
        System.out.println(t);
        
    }
    
}
