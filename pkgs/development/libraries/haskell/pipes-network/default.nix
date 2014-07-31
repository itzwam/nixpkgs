# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, network, networkSimple, pipes, pipesSafe, transformers }:

cabal.mkDerivation (self: {
  pname = "pipes-network";
  version = "0.6.4";
  sha256 = "1wabyv5j4q0wxiz8ry7dq3amlvfh4r0721pd2lksx7hj3a5qzm2p";
  buildDepends = [
    network networkSimple pipes pipesSafe transformers
  ];
  jailbreak = true;
  meta = {
    homepage = "https://github.com/k0001/pipes-network";
    description = "Use network sockets together with the pipes library";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.ocharles ];
  };
})
