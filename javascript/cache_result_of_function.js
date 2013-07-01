// Original: http://ejohn.org/apps/learn/#21

function isPrime( num ) {
    if ( isPrime.cache[ num ] != null ) {
        return isPrime.cache[ num ];
    }
    var prime = num != 1; // Everything but 1 can be prime
    for ( var i = 2; i < num; i++ ) {
        if ( num % i == 0 ) {
            prime = false;
            break;
        }
    }
    isPrime.cache[ num ] = prime;
    return prime;
}

isPrime.cache = {};

console.log(isPrime(5)); // Make sure the function works, 5 is prime.
console.log(isPrime.cache[5]); //Make sure the answer is cached.