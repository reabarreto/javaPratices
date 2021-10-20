
package contabanco;

public class ContaBanco {

    public static void main(String[] args) {
         contaBancaria conta = new contaBancaria();
         conta.abrirConta(2255,"CC");
         System.out.println("Numero da conta: " + conta.getNumConta() + " tipo: " + conta.getTipo() + " status: "+ conta.getStatus());
         conta.depositar(100);
         conta.pagarMensal();
         System.out.println("Seu saldo atual é: " + conta.getSaldo());
         conta.depositar(100);
         System.out.println("Seu saldo atual é: " + conta.getSaldo());
       


}
}