using System.Text;
using DesafioPOO.Models;

Console.OutputEncoding = Encoding.UTF8;

// DONE: Realizar os testes com as classes Nokia e Iphone

Smartphone iphone = new Iphone("99996666", "IPhone X", "111111111222222222", 128);
Smartphone nokia = new Nokia("999997777", "Nokia XPTO", "22222222223333333333", 64);

List<Smartphone> celulares = new List<Smartphone>();

celulares.Add(iphone);
celulares.Add(nokia);

foreach (Smartphone celular in celulares)
{
    Console.WriteLine("------------------");
    celular.ReceberLigacao();
    celular.InstalarAplicativo("Whatsapp");
    celular.Ligar();
    Console.WriteLine("------------------");
}