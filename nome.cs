public class usuario {
    string nome;
    string email;
    string senha;

    public void cadastra(){
        Console.WriteLine("Digite seu nome: ");
        nome = Console.ReadLine();
        Console.WriteLine("Digite seu email: ");
        email = Console.ReadLine();
        Console.WriteLine("Digite sua senha: ");
        senha = Console.ReadLine();
    }
}