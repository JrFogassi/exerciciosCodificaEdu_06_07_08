public abstract class ItemBiblioteca {
    private String codigo;
    private String titulo;
    private boolean disponivel = true;

    public ItemBiblioteca(String codigo, String titulo) {
        this.codigo = codigo;
        this.titulo = titulo;
    }

    public abstract int getPrazoDias();
    public abstract double getMultaPorDia();

    public String getCodigo() { return codigo; }
    public String getTitulo() { return titulo; }
    public boolean isDisponivel() { return disponivel; }

    void marcarEmprestado() { this.disponivel = false; }
    void marcarDevolvido() { this.disponivel = true; }

    @Override
    public String toString() {return codigo + " - " + titulo + " [" + (disponivel ? "disponível" : "eemprestado") + "]";
}
}
