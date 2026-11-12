public class Biblioteca {
    private ItemBiblioteca[] acervo;
    private int qtdItens = 0;

    public Biblioteca(int capacidade) { acervo = new ItemBiblioteca[capacidade]; }

    public void adicionar(ItemBiblioteca item) {
        if (qtdItens < acervo.length) acervo[qtdItens++] = item;
    }

    public boolean emprestar(ItemBiblioteca item, Usuario usuario) {
        if (!item.isDisponivel()) {
            System.out.println("Item indisponível: " + item.getTitulo());
            return false;
        }
        if (!usuario.podeEmprestar()) {
            System.out.println("Limite atingido para " + usuario.getNome());
            return false;
        }
        item.marcarEmprestado();
        usuario.registrarEmprestimo();
        System.out.println("Empréstimo OK: " + item.getTitulo() + " -> " + usuario.getNome());
        return true;
    }

    public void devolver(ItemBiblioteca item, Usuario usuario) {
        item.marcarDevolvido();
        usuario.registrarDevolucao();
        System.out.println("Devolvido: " + item.getTitulo());
    }

    public void listarAcervo() {
        for (int i = 0; i < qtdItens; i++) {
            System.out.println(acervo[i]);
        }
    }
}
