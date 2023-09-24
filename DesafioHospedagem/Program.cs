using System.Text;
using DesafioProjetoHospedagem.Models;

Console.OutputEncoding = Encoding.UTF8;

// Cria os modelos de hóspedes e cadastra na lista de hóspedes
List<Pessoa> hospedes = new List<Pessoa>();

Pessoa p1 = new Pessoa(nome: "Hóspede 1");
Pessoa p2 = new Pessoa(nome: "Hóspede 2");

hospedes.Add(p1);
hospedes.Add(p2);

// Cria a suíte
Suite suite1 = new Suite(tipoSuite: "Standard", capacidade: 1, valorDiaria: 20);
Suite suite2 = new Suite(tipoSuite: "Premium", capacidade: 2, valorDiaria: 30);

// Cria uma nova reserva, passando a suíte e os hóspedes
Console.WriteLine($"Reserva com dois hóspedes e 5 dias e valor diaria={suite2.ValorDiaria}");
Reserva reserva = new Reserva(diasReservados: 5);
reserva.CadastrarSuite(suite2);
reserva.CadastrarHospedes(hospedes);

// Exibe a quantidade de hóspedes e o valor da diária
Console.WriteLine($"Hóspedes: {reserva.ObterQuantidadeHospedes()}");
Console.WriteLine($"Valor diária: {reserva.CalcularValorDiaria():C}");

// Cria uma nova reserva com desconto
Console.WriteLine($"Reserva com dois hóspedes e 20 dias e valor diaria={suite2.ValorDiaria}");
reserva = new Reserva(20);
reserva.CadastrarSuite(suite2);
reserva.CadastrarHospedes(hospedes);

// Exibe a quantidade de hóspedes e o valor da diária
Console.WriteLine($"Hóspedes: {reserva.ObterQuantidadeHospedes()}");
Console.WriteLine($"Valor diária: {reserva.CalcularValorDiaria():C}");

// Cria reserva com erro de capacidade
Console.WriteLine("Reserva com dois hóspedes e 5 dias, capacidade errada");
reserva = new Reserva(5);

try
{
    reserva.CadastrarSuite(suite1);
    reserva.CadastrarHospedes(hospedes);

    // Exibe a quantidade de hóspedes e o valor da diária
    Console.WriteLine($"Hóspedes: {reserva.ObterQuantidadeHospedes()}");
    Console.WriteLine($"Valor diária: {reserva.CalcularValorDiaria():C}");
}
catch (Exception e)
{
    Console.WriteLine("Falha ao obter reserva: " + e.Message);
}