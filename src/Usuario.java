    public abstract class Usuario {
        private String nome;
        private int quantidadeEmprestada = 0;

        public Usuario(String nome) { this.nome = nome; }

        public abstract int getLimiteItens();

        public String getNome() { return nome; }
        public int getQuantidadeEmprestada() { return quantidadeEmprestada; }

        public boolean podeEmprestar() {
            return quantidadeEmprestada < getLimiteItens();
        }

        void registrarEmprestimo() { quantidadeEmprestada++; }
        void registrarDevolucao() { quantidadeEmprestada--; }

    }

