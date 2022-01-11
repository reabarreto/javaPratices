package ultraemojicombat;

public class lutador {
    // atributos 

    private String nome;
    private String nac;
    private int idade;
    private float altura;
    private float peso;
    private String cat;
    private int vit;
    private int der;
    private int empate;
    private int getEmpate;
    
    public void apresentar(){
        System.out.println("Chegou a Hora! Apresentamos o lutador"+ this.getNome());
        System.out.println("Diretamente de: "+ this.getNac());
        System.out.println("com "+ this.getIdade() + " anos");
        System.out.println("Pesando " + this.getPeso()+ "Kg");
        System.out.println("Com" + this.getVit() + "Vitórias ");
        System.out.println( this.getDer() + "Derrotas ");
        System.out.println("E" + this.getEmpate() + "Empates ");
    }
    
    public void status(){
        System.out.println(this.getNome() + " É um peso " + this.getPeso());
        System.out.println("Com" + this.getVit() + "Vitórias ");
        System.out.println( this.getDer() + "Derrotas ");
        System.out.println("E" + this.getEmpate() + "Empates ");
}
    
  public void ganharLuta() {
      this.setVit(this.getVit()+1);
  }
  
  public void perdeLuta(){
      this.setDer(this.getDer()+1);
      
  }
  
  public void empatarLuta(){
      this.setEmpate(this.getEmpate()+1);
  }
  // Métodos especial 

    public lutador(String nome, String nac, int idade, float altura, float peso, int vit, int der, int empate) {
        this.nome = nome;
        this.nac = nac;
        this.idade = idade;
        this.altura = altura;
        this.peso = peso;
        this.vit = vit;
        this.der = der;
        this.empate = empate;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getNac() {
        return nac;
    }

    public void setNac(String nac) {
        this.nac = nac;
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }

    public float getAltura() {
        return altura;
    }

    public void setAltura(float altura) {
        this.altura = altura;
    }

    public float getPeso() {
        return peso;
      
    }

    public void setPeso(float peso) {
        this.peso = peso;
          this.setCat();
    }

    public String getCat() {
        return cat;
    }

    private void setCat() {
        if (this.peso < 52.2){
            this.cat = "Inválido";
        }
        else if (this.peso <= 83.9) {
            this.cat = "Médio";
        }
        else if (this.peso <=120.2){
            this.cat = "Pesado";   
        }
        else 
            this.cat = "Inválido";
    }

    public int getVit() {
        return vit;
    }

    public void setVit(int vit) {
        this.vit = vit;
    }

    public int getDer() {
        return der;
    }

    public void setDer(int der) {
        this.der = der;
    }

    public int getEmpate() {
        return empate;
    }

    public void setEmpate(int empate) {
        this.empate = empate;
    }

    

}
