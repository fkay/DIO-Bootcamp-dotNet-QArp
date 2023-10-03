using ProjetoTDD;

namespace TesteProjetoTDD
{
    public class TestesCalculadora
    {
        [Theory]
        [InlineData(10, 15, 25)]
        [InlineData(40, 105, 145)]
        public void SomaValoresRetornaResultado(int val1, int val2, int resultado)
        {
            // Arrange
            Calculadora calc = new Calculadora();


            // Act
            var resultado_calc = calc.somar(val1, val2);

            // Assert
            Assert.Equal(resultado, resultado_calc);
        }

        [Theory]
        [InlineData(15, 10, 5)]
        [InlineData(105, 40, 65)]
        public void SubtraiValoresRetornaResultado(int val1, int val2, int resultado)
        {
            // Arrange
            Calculadora calc = new Calculadora();


            // Act
            var resultado_calc = calc.subtrair(val1, val2);

            // Assert
            Assert.Equal(resultado, resultado_calc);
        }

        [Theory]
        [InlineData(15, 10, 150)]
        [InlineData(105, 40, 4200)]
        public void MultiplicarValoresRetornaResultado(int val1, int val2, int resultado)
        {
            // Arrange
            Calculadora calc = new Calculadora();


            // Act
            var resultado_calc = calc.multiplicar(val1, val2);

            // Assert
            Assert.Equal(resultado, resultado_calc);
        }

        [Theory]
        [InlineData(15, 5, 3)]
        [InlineData(120, 30, 4)]
        public void DividirValoresRetornaResultado(int val1, int val2, int resultado)
        {
            // Arrange
            Calculadora calc = new Calculadora();


            // Act
            var resultado_calc = calc.dividir(val1, val2);

            // Assert
            Assert.Equal(resultado, resultado_calc);
        }

        [Fact]
        public void DividirValorPorZero()
        {
            // Arrange
            Calculadora calc = new Calculadora();

            // Act Assert
            Assert.Throws<DivideByZeroException>(() => calc.dividir(5, 0));
        }

        [Fact]
        public void ExecutarOperacoesReceberHistorico()
        {
            Calculadora calc = new Calculadora();

            calc.somar(1, 3);
            calc.subtrair(5, 1);
            calc.somar(10, 11);
            calc.dividir(10, 2);

            var lista = calc.historico();

            Assert.NotEmpty(lista);
            Assert.Equal(3, lista.Count);
        }
    }
}