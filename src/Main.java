//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void main(String[] args) {
        Biblioteca bib = new Biblioteca(10);
        bib.adicionar(new Livro("L1", "Java Efetivo"));
        bib.adicionar(new Livro("L2", "Clean Code"));
        bib.adicionar(new Revista("R1", "Superinteressante"));
        bib.adicionar(new Revista("R2", "Veja"));

        Aluno aluno = new Aluno("Júnior");

        bib.emprestar(bibItem(bib, 0), aluno);
        bib.emprestar(bibItem(bib, 1), aluno);
        bib.emprestar(bibItem(bib, 2), aluno);

        bib.emprestar(bibItem(bib, 3), aluno);

        bib.listarAcervo();
        }

    private static ItemBiblioteca bibItem(Biblioteca b, int i) {
        return null;
    }
}
