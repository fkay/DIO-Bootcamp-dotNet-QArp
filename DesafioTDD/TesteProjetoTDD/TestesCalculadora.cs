using ProjetoTDD;

namespace TesteProjetoTDD
{
    public class TestesCalculadora
    {
        private Calculadora _calculadora;

        public TestesCalculadora()
        {
            _calculadora = new Calculadora();
        }

        [Theory]
        [InlineData(10, 15, 25)]
        [InlineData(40, 105, 145)]
        public void SomaValoresRetornaResultado(int val1, int val2, int resultado)
        {
            // Arrange

            // Act
            var resultado_calc = _calculadora.somar(val1, val2);

            // Assert
            Assert.Equal(resultado, resultado_calc);
        }

        [Theory]
        [InlineData(15, 10, 5)]
        [InlineData(105, 40, 65)]
        public void SubtraiValoresRetornaResultado(int val1, int val2, int resultado)
        {
            // Arrange


            // Act
            var resultado_calc = _calculadora.subtrair(val1, val2);

            // Assert
            Assert.Equal(resultado, resultado_calc);
        }

        [Theory]
        [InlineData(15, 10, 150)]
        [InlineData(105, 40, 4200)]
        public void MultiplicarValoresRetornaResultado(int val1, int val2, int resultado)
        {
            // Arrange

            // Act
            var resultado_calc = _calculadora.multiplicar(val1, val2);

            // Assert
            Assert.Equal(resultado, resultado_calc);
        }

        [Theory]
        [InlineData(15, 5, 3)]
        [InlineData(120, 30, 4)]
        public void DividirValoresRetornaResultado(int val1, int val2, int resultado)
        {
            // Arrange

            // Act
            var resultado_calc = _calculadora.dividir(val1, val2);

            // Assert
            Assert.Equal(resultado, resultado_calc);
        }

        [Fact]
        public void DividirValorPorZero()
        {
            // Arrange

            // Act Assert
            Assert.Throws<DivideByZeroException>(() => _calculadora.dividir(5, 0));
        }

        [Fact]
        public void ExecutarOperacoesReceberHistorico()
        {
            // Cria nova calculadora para rastrear histórico
            Calculadora calc = new Calculadora();

            calc.somar(1, 3);
            calc.subtrair(5, 1);
            calc.somar(10, 11);
            calc.dividir(10, 2);

            var lista = calc.historico();

            Assert.NotEmpty(lista);
            Assert.Equal(3, lista.Count);
            Assert.Equal("5 - 1 = 4", lista[0]);
            Assert.Equal("10 + 11 = 21", lista[1]);
        }
    }
}