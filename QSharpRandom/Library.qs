namespace Quantum.QSharpRandom {

 open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Measurement;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    
    operation QuantumRandomNumberGenerator() : Result {
        using (q = Qubit())  {  
            H(q);               
            return MResetZ(q);  
        }
    }

    operation GenerateNumber(max : Int) : Int {
        mutable bits = new Result[0];
        for (idxBit in 1..BitSizeI(max)) {
            set bits += [QuantumRandomNumberGenerator()];
        }
        let res = ResultArrayAsInt(bits);
        return res > max
               ? GenerateNumber(max)
               | res;
    }
}
