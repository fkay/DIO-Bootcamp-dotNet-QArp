using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetoTDD
{
    public class Calculadora
    {
        private List<string> _lista = new List<string>();

        private void incluiHistorico(int val1, int val2, int resultado, string operador)
        {
            if (_lista.Count >= 3)
            {
                _lista.RemoveAt(0);
            }
            _lista.Add($"{val1} {operador} {val2} = {resultado}");
        }

        public int somar(int val1, int val2)
        {
            int resultado = val1 + val2;
            incluiHistorico(val1, val2, resultado, "+");
            return resultado;
        }

        public int subtrair(int val1, int val2)
        {
            int resultado = val1 - val2;
            incluiHistorico(val1, val2, resultado, "-");
            return resultado;
        }

        public int dividir(int val1, int val2)
        {
            int resultado = val1 / val2;
            incluiHistorico(val1, val2, resultado, "/");
            return resultado;
        }

        public int multiplicar(int val1, int val2)
        {
            int resultado = val1 * val2;
            incluiHistorico(val1, val2, resultado, "*");
            return resultado;
        }

        public List<string> historico()
        {
            return _lista;
        }
    }
}
