using System;

namespace Biblioteca
{
    public class Livro
    {
        // Atributos
        public string Titulo { get; set; }
        public string Autor { get; set; }
        public int NumeroPaginas { get; set; }
        public bool EstaEmprestado { get; private set; }

        // Construtor
        public Livro(string titulo, string autor, int numeroPaginas)
        {
            Titulo = titulo;
            Autor = autor;
            NumeroPaginas = numeroPaginas;
            EstaEmprestado = false;
        }

        // Método para emprestar o livro
        public void Emprestar()
        {
         
            Console.WriteLine($"O livro '{Titulo}' foi emprestado com sucesso.");
        }

        public void Devolver()
        {
            Console.WriteLine($"O livro '{Titulo}' foi devolvido com sucesso.");
        }

        
    }

    class Program
    {
        static void Main(string[] args)
        {
            Livro livro = new Livro("O Pequeno Príncipe", "Antoine", 96);
            livro.Emprestar();
            livro.Devolver();

            
        }
    }
}
