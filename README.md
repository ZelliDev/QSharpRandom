# QSharpRandom
> A Random Number Library in Q# written in DotNetCore 2.1, using Qbits to randomly generate numbers

[![Open Source](https://badges.frapsoft.com/os/v1/open-source.svg?v=103)](https://opensource.org/)


QSharpRandom can easily generate random numbers using Quantum Calculation written in Q# (QuantumSharp) 

## Installation
```

Download the current release and add it to your project
Download Nuget Package : Microsoft.Quantum.SKD & Microsoft.Quantum.Standard
```

## Usage example
Using the Q# Libary In a Basic C# Application

````cs
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

````


## Release History

* 0.0.1
    * First Upload Of QSharpRandom






