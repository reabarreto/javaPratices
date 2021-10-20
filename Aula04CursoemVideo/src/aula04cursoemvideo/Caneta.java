
package aula04cursoemvideo;
   
public class Caneta {
   public String modelo;
   private float ponta; 
   private boolean tampada; 
   private String cor;
   
   
   public Caneta(String m, String c, float p){
      this.modelo = m;
      this.cor = c;
      this.setPonta(p);
       this.tampar();
       this.cor = "Azul";
   }
   
    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public float getPonta() {
        return ponta;
    }

    public void setPonta(float ponta) {
        this.ponta = ponta;
    }
    
    public void tampar(){
        this.tampada = true; 
    }
    
    public void destampar(){
        this.tampada = false;
    }
    
    
    
    public void status(){
        
        System.out.println("Sobre a caneta:");
        System.out.println("Modelo: " +this.getModelo());
        System.out.println("Ponta: " +this.getPonta());
        System.out.println("Cor:" + this.cor);
        System.out.println("Tampada: "+ this.tampada);
        
    }

   
   
   
}