using System;
using System.Threading.Tasks;
using Microsoft.Quantum.Simulation.Simulators;
using Quantum.QSharpRandom;


namespace Test
{
    class Program
    {
        static async Task Main(string[] args)
        {
            using var sim = new QuantumSimulator();
            var QsharpResponse = await GenerateNumber.Run(sim,50);
            Console.WriteLine(QsharpResponse.ToString());
            Console.ReadLine();
            
        }
    }
}
