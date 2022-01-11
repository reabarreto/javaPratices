/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aula06;

public class ControleRemoto implements controlador {
    // atributos 
    private int volume; 
    private boolean ligado;
    private boolean tocando;

    public int getVolume() {
        return volume;
    }

    public void setVolume(int volume) {
        this.volume = volume;
    }

    public boolean getLigado() {
        return ligado;
    }

    public void setLigado(boolean ligado) {
        this.ligado = ligado;
    }

    public boolean getTocando() {
        return tocando;
    }

    public void setTocando(boolean tocando) {
        this.tocando = tocando;
    }

    @Override
    public void ligar() {
    this.setLigado(true);
    }

    @Override
    public void desligar() {
        this.setLigado(false);
    }

    @Override
    public void abrirMenu() {
        System.out.println("Está ligado?" + this.setLigado());
        System.out.println("Está tocando?"+ this.setVolume());
        System.out.println("Volume" + this.getVolume());
        for (int i = 0; i <= this.getVolume();i+=10){
            System.out.println("[]");
        }
    }

    @Override
    public void fecharMenu() {
        System.out.println("Fechando menu...");
    }

    @Override
    public void maisVolume() {
        if (this.getLigado())
           this.setVolume(this.getVolume() + 1 );
        
    }

    @Override
    public void menosVolume() {
         if (this.getLigado())
           this.setVolume(this.getVolume() - 1 );
        
    }

    @Override
    public void ligarMudo() {
        if (this.getLigado() && (this.getVolume() > 0))
            this.setVolume(0);
    }

    @Override
    public void desligarMudo() {
            if (this.getLigado() && (this.getVolume() == 0))
            this.setVolume(50);
    }

    @Override
    public void play() {
        if (this.getLigado() && (!this.getTocando()))
             this.setTocando(true);
        }      

    @Override
    public void pause() {
           if (this.getLigado() && (!this.getTocando()))
             this.setTocando(false);
    }

    private String setLigado() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private String setVolume() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }


}