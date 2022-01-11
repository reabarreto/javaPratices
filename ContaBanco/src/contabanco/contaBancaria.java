/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package contabanco;

public class contaBancaria {

    public int numConta;
    private String tipo;
    private String dono;
    private float saldo;
    private boolean status;

    public void contaBancaria() {
        saldo = 0;
        status = false;
    }

    public int getNumConta() {
        return numConta;
    }

    public void setNumConta(int numConta) {
        this.numConta = numConta;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getDono() {
        return dono;
    }

    public void setDono(String dono) {
        this.dono = dono;
    }

    public float getSaldo() {
        return saldo;
    }

    public void setSaldo(float saldo) {
        this.saldo = saldo;
    }

    public boolean getStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public void abrirConta(int n, String t) {
        this.setTipo(t);
        this.setStatus(true);
        if ("CC".equals(t)) {
            setSaldo(50);
        } else if ("CP".equals(t)) {
            setSaldo(150);
        }
    }

    public void fecharConta() {
        if (this.getSaldo() == 0) {
            this.setStatus(false);
        } else {
            System.out.println("Esta operação não pode ser realizada pois você possui saldo ou débito");
        }
    }

    public void depositar(float s) {
        if (this.getStatus()) {
            this.setSaldo(this.getSaldo() + s);
        } else {
            System.out.println("Esta conta não existe");
        }
    }

    public void sacar(float s) {
        if (this.getStatus()) {
            if (this.getSaldo() >= s) {
                setSaldo(getSaldo() - s);
            } else {
                System.out.println("Saldo insuficiente");
            }
        } else {
            System.out.println("Esta conta não existe");
        }
    }

    public void pagarMensal() {
        int v = 0;
        if (this.getTipo() == "CC") {
            v = 12;
        } else if (this.getTipo() == "CP") {
            v = 20;
        }

        if (this.getStatus()) {
            if (this.getSaldo() > v) {
                this.setSaldo(this.getSaldo() - v);
            } else if (this.getTipo() == "CP") {
                setSaldo(this.getSaldo() - v);
            } else {
                System.out.println("Saldo insuficiente");
            }
        }else {
            System.out.println("Esta Conta Não Existe");
            }

        }
    }

