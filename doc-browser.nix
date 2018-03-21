# Generated using stack2nix 0.1.3.0.
#
# Only works with sufficiently recent nixpkgs, e.g. "NIX_PATH=nixpkgs=https://github.com/NixOS/nixpkgs/archive/21a8239452adae3a4717772f4e490575586b2755.tar.gz".

{ pkgs ? (import <nixpkgs> {})
, compiler ? pkgs.haskell.packages.ghc802
, ghc ? pkgs.haskell.compiler.ghc802
, c2hs
, qt
}:

with (import <nixpkgs/pkgs/development/haskell-modules/lib.nix> { inherit pkgs; });

let
  stackPackages = { callPackage, pkgs, stdenv }:
self: {
      Cabal = callPackage ({ array, base, binary, bytestring, containers, deepseq, directory, filepath, mkDerivation, pretty, process, stdenv, time, unix }:
      mkDerivation {
          pname = "Cabal";
          version = "1.24.2.0";
          sha256 = "b7d0eb8e3503fbca460c0a6ca5c88352cecfe1b69e0bbc79827872134ed86340";
          revision = "2";
          editedCabalFile = "15ncrm7x2lg4hn0m5mhc8hy769bzhmajsm6l9i6536plfs2bbbdj";
          libraryHaskellDepends = [
            array
            base
            binary
            bytestring
            containers
            deepseq
            directory
            filepath
            pretty
            process
            time
            unix
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://www.haskell.org/cabal/";
          description = "A framework for packaging Haskell software";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      Glob = callPackage ({ base, containers, directory, dlist, filepath, mkDerivation, stdenv, transformers, transformers-compat }:
      mkDerivation {
          pname = "Glob";
          version = "0.9.1";
          sha256 = "80cb0b048d78f71ba5af1e58c8d651f5b6f1b37766d4da9b18e30a40edd4f567";
          libraryHaskellDepends = [
            base
            containers
            directory
            dlist
            filepath
            transformers
            transformers-compat
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://iki.fi/matti.niemenmaa/glob/";
          description = "Globbing library";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      HUnit = callPackage ({ base, call-stack, deepseq, mkDerivation, stdenv }:
      mkDerivation {
          pname = "HUnit";
          version = "1.6.0.0";
          sha256 = "7448e6b966e98e84b7627deba23f71b508e9a61e7bc571d74304a25d30e6d0de";
          libraryHaskellDepends = [
            base
            call-stack
            deepseq
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/hspec/HUnit#readme";
          description = "A unit testing framework for Haskell";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      ListLike = callPackage ({ array, base, bytestring, containers, deepseq, dlist, fmlist, mkDerivation, stdenv, text, utf8-string, vector }:
      mkDerivation {
          pname = "ListLike";
          version = "4.5.1";
          sha256 = "b70745335b563cd9039bb17a1e2faf7edb1b68febdd19586b28ab67c55562a8d";
          libraryHaskellDepends = [
            array
            base
            bytestring
            containers
            deepseq
            dlist
            fmlist
            text
            utf8-string
            vector
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/JohnLato/listlike";
          description = "Generic support for list-like structures";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      MissingH = callPackage ({ HUnit, array, base, containers, directory, filepath, hslogger, mkDerivation, mtl, network, old-locale, old-time, parsec, process, random, regex-compat, stdenv, time, unix }:
      mkDerivation {
          pname = "MissingH";
          version = "1.4.0.1";
          sha256 = "283f2afd46625d98b4e29f77edadfa5e6009a227812ee2ece10091ad6a7e9b71";
          libraryHaskellDepends = [
            array
            base
            containers
            directory
            filepath
            hslogger
            HUnit
            mtl
            network
            old-locale
            old-time
            parsec
            process
            random
            regex-compat
            time
            unix
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://software.complete.org/missingh";
          description = "Large utility library";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      Only = callPackage ({ base, deepseq, mkDerivation, stdenv }:
      mkDerivation {
          pname = "Only";
          version = "0.1";
          sha256 = "ab7aa193e8c257d3bda6b0b3c1cbcf74cdaa85ab08cb20c2dd62ba248c1ab265";
          revision = "1";
          editedCabalFile = "1ahk7p34kmh041mz7lyc10nhcxgv2i4z8nvzxvqm2x34gslmsbzr";
          libraryHaskellDepends = [
            base
            deepseq
          ];
          doHaddock = false;
          doCheck = false;
          description = "The 1-tuple type or single-value \"collection\"";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      QuickCheck = callPackage ({ base, containers, deepseq, mkDerivation, random, stdenv, template-haskell, tf-random, transformers }:
      mkDerivation {
          pname = "QuickCheck";
          version = "2.10.1";
          sha256 = "1dbb56786854fd539315497086284dfff039a52a487319e648140e4987b6d5e5";
          libraryHaskellDepends = [
            base
            containers
            deepseq
            random
            template-haskell
            tf-random
            transformers
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/nick8325/quickcheck";
          description = "Automatic testing of Haskell programs";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      RSA = callPackage ({ SHA, base, binary, bytestring, crypto-api, crypto-pubkey-types, mkDerivation, stdenv }:
      mkDerivation {
          pname = "RSA";
          version = "2.3.0";
          sha256 = "eee76dc7f9dd2d2cdeb014af728ff56f2f5d2908212bd3bb8c5e89f5c6485333";
          libraryHaskellDepends = [
            base
            binary
            bytestring
            crypto-api
            crypto-pubkey-types
            SHA
          ];
          doHaddock = false;
          doCheck = false;
          description = "Implementation of RSA, using the padding schemes of PKCS#1 v2.1.";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      SHA = callPackage ({ array, base, binary, bytestring, mkDerivation, stdenv }:
      mkDerivation {
          pname = "SHA";
          version = "1.6.4.2";
          sha256 = "c470176f63cbe49fd0502a1b32ef22bc01b1af42385583b8be94547750958a8c";
          isLibrary = true;
          isExecutable = true;
          libraryHaskellDepends = [
            array
            base
            binary
            bytestring
          ];
          doHaddock = false;
          doCheck = false;
          description = "Implementations of the SHA suite of message digest functions";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      StateVar = callPackage ({ base, mkDerivation, stdenv, stm, transformers }:
      mkDerivation {
          pname = "StateVar";
          version = "1.1.0.4";
          sha256 = "7ad68decb5c9a76f83c95ece5fa13d1b053e4fb1079bd2d3538f6b05014dffb7";
          libraryHaskellDepends = [
            base
            stm
            transformers
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/haskell-opengl/StateVar";
          description = "State variables";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      abstract-deque = callPackage ({ array, base, containers, mkDerivation, random, stdenv, time }:
      mkDerivation {
          pname = "abstract-deque";
          version = "0.3";
          sha256 = "09aa10f38193a8275a7791b92a4f3a7192a304874637e2a35c897dde25d75ca2";
          libraryHaskellDepends = [
            array
            base
            containers
            random
            time
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/rrnewton/haskell-lockfree/wiki";
          description = "Abstract, parameterized interface to mutable Deques";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      abstract-par = callPackage ({ base, deepseq, mkDerivation, stdenv }:
      mkDerivation {
          pname = "abstract-par";
          version = "0.3.3";
          sha256 = "248a8739bd902462cb16755b690b55660e196e58cc7e6ef8157a72c2a3d5d860";
          libraryHaskellDepends = [
            base
            deepseq
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/simonmar/monad-par";
          description = "Type classes generalizing the functionality of the 'monad-par' library";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      adjunctions = callPackage ({ array, base, comonad, containers, contravariant, distributive, free, mkDerivation, mtl, profunctors, semigroupoids, semigroups, stdenv, tagged, transformers, transformers-compat, void }:
      mkDerivation {
          pname = "adjunctions";
          version = "4.3";
          sha256 = "b948a14fafe8857f451ae3e474f5264c907b5a2d841d52bf78249ae4749c3ecc";
          revision = "1";
          editedCabalFile = "1079l9szyr7ybi9wcvv1vjsjfrqirkn9z3j7dann8vbk81a4z37q";
          libraryHaskellDepends = [
            array
            base
            comonad
            containers
            contravariant
            distributive
            free
            mtl
            profunctors
            semigroupoids
            semigroups
            tagged
            transformers
            transformers-compat
            void
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/ekmett/adjunctions/";
          description = "Adjunctions and representable functors";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      aeson = callPackage ({ attoparsec, base, base-compat, bytestring, containers, deepseq, dlist, ghc-prim, hashable, mkDerivation, scientific, stdenv, tagged, template-haskell, text, th-abstraction, time, time-locale-compat, unordered-containers, uuid-types, vector }:
      mkDerivation {
          pname = "aeson";
          version = "1.2.3.0";
          sha256 = "aacdc69295dc2a781b3fdc5fce4eb019610df4ae0dee6c2ab5234923d7c59cbf";
          libraryHaskellDepends = [
            attoparsec
            base
            base-compat
            bytestring
            containers
            deepseq
            dlist
            ghc-prim
            hashable
            scientific
            tagged
            template-haskell
            text
            th-abstraction
            time
            time-locale-compat
            unordered-containers
            uuid-types
            vector
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/bos/aeson";
          description = "Fast JSON parsing and encoding";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      ansi-terminal = callPackage ({ base, colour, mkDerivation, stdenv }:
      mkDerivation {
          pname = "ansi-terminal";
          version = "0.7.1.1";
          sha256 = "6fc87697dfff772f7fbb4fe49e29c366b184f9ad288520831a9e0b572aa554fc";
          isLibrary = true;
          isExecutable = true;
          libraryHaskellDepends = [
            base
            colour
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/feuerbach/ansi-terminal";
          description = "Simple ANSI terminal support, with Windows compatibility";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      ansi-wl-pprint = callPackage ({ ansi-terminal, base, mkDerivation, stdenv }:
      mkDerivation {
          pname = "ansi-wl-pprint";
          version = "0.6.8.2";
          sha256 = "a630721bd57678c3bfeb6c703f8249e434cbf85f40daceec4660fb8c6725cb3e";
          isLibrary = true;
          isExecutable = true;
          libraryHaskellDepends = [
            ansi-terminal
            base
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/ekmett/ansi-wl-pprint";
          description = "The Wadler/Leijen Pretty Printer for colored ANSI terminal output";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      appar = callPackage ({ base, bytestring, mkDerivation, stdenv }:
      mkDerivation {
          pname = "appar";
          version = "0.1.4";
          sha256 = "58ea66abe4dd502d2fc01eecdb0828d5e214704a3c1b33b1f8b33974644c4b26";
          libraryHaskellDepends = [
            base
            bytestring
          ];
          doHaddock = false;
          doCheck = false;
          description = "A simple applicative parser";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      array = callPackage ({ base, mkDerivation, stdenv }:
      mkDerivation {
          pname = "array";
          version = "0.5.2.0";
          sha256 = "52c9a2343bc3190d954fb3adc4b5bfd44c0ba0bcf9539b99b863f51a851e688b";
          revision = "1";
          editedCabalFile = "195c914pc0vk1ya6lz42kb4gmhkam7s0xi7x0dgzhpb5gkcrs5qx";
          libraryHaskellDepends = [
            base
          ];
          doHaddock = false;
          doCheck = false;
          description = "Mutable and immutable arrays";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      asn1-encoding = callPackage ({ asn1-types, base, bytestring, hourglass, mkDerivation, stdenv }:
      mkDerivation {
          pname = "asn1-encoding";
          version = "0.9.5";
          sha256 = "1e863bfd363f6c3760cc80f2c0d422e17845a9f79fe006030db202ecab5aaf29";
          libraryHaskellDepends = [
            asn1-types
            base
            bytestring
            hourglass
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/vincenthz/hs-asn1";
          description = "ASN1 data reader and writer in RAW, BER and DER forms";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      asn1-parse = callPackage ({ asn1-encoding, asn1-types, base, bytestring, mkDerivation, stdenv }:
      mkDerivation {
          pname = "asn1-parse";
          version = "0.9.4";
          sha256 = "c6a328f570c69db73f8d2416f9251e8a03753f90d5d19e76cbe69509a3ceb708";
          libraryHaskellDepends = [
            asn1-encoding
            asn1-types
            base
            bytestring
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/vincenthz/hs-asn1";
          description = "Simple monadic parser for ASN1 stream types";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      asn1-types = callPackage ({ base, bytestring, hourglass, memory, mkDerivation, stdenv }:
      mkDerivation {
          pname = "asn1-types";
          version = "0.3.2";
          sha256 = "0c571fff4a10559c6a630d4851ba3cdf1d558185ce3dcfca1136f9883d647217";
          libraryHaskellDepends = [
            base
            bytestring
            hourglass
            memory
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/vincenthz/hs-asn1-types";
          description = "ASN.1 types";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      async = callPackage ({ base, mkDerivation, stdenv, stm }:
      mkDerivation {
          pname = "async";
          version = "2.1.1.1";
          sha256 = "cd83e471466ea6885b2e8fb60f452db3ac3fdf3ea2d6370aa1e071ebc37544e2";
          libraryHaskellDepends = [
            base
            stm
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/simonmar/async";
          description = "Run IO operations asynchronously and wait for their results";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      attoparsec = callPackage ({ array, base, bytestring, containers, deepseq, mkDerivation, scientific, stdenv, text, transformers }:
      mkDerivation {
          pname = "attoparsec";
          version = "0.13.2.2";
          sha256 = "dd93471eb969172cc4408222a3842d867adda3dd7fb39ad8a4df1b121a67d848";
          libraryHaskellDepends = [
            array
            base
            bytestring
            containers
            deepseq
            scientific
            text
            transformers
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/bos/attoparsec";
          description = "Fast combinator parsing for bytestrings and text";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      authenticate-oauth = callPackage ({ RSA, SHA, base, base64-bytestring, blaze-builder, bytestring, crypto-pubkey-types, data-default, http-client, http-types, mkDerivation, random, stdenv, time, transformers, transformers-compat }:
      mkDerivation {
          pname = "authenticate-oauth";
          version = "1.6";
          sha256 = "d26d9f10fd57e06fa2af066df65e578ff3ec7541efc3e6648b29a743b13f8375";
          revision = "1";
          editedCabalFile = "1fxwn8bn6qs8dhxq0q04psq7zp1qvw1b6g3vmsclgyj9p7kr77ms";
          libraryHaskellDepends = [
            base
            base64-bytestring
            blaze-builder
            bytestring
            crypto-pubkey-types
            data-default
            http-client
            http-types
            random
            RSA
            SHA
            time
            transformers
            transformers-compat
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/yesodweb/authenticate";
          description = "Library to authenticate with OAuth for Haskell web applications";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      auto-update = callPackage ({ base, mkDerivation, stdenv }:
      mkDerivation {
          pname = "auto-update";
          version = "0.1.4";
          sha256 = "5e96c151024e8bcaf4eaa932e16995872b2017f46124b967e155744d9580b425";
          libraryHaskellDepends = [
            base
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/yesodweb/wai";
          description = "Efficiently run periodic, on-demand actions";
          license = stdenv.lib.licenses.mit;
        }) {};
      base = callPackage ({ ghc-prim, invalid-cabal-flag-settings, mkDerivation, rts, stdenv }:
      mkDerivation {
          pname = "base";
          version = "4.10.1.0";
          sha256 = "9d27fa65d290c1172763d3a482e0d72542a04df5fa1815a94ebf2fe11a86df42";
          libraryHaskellDepends = [
            ghc-prim
            invalid-cabal-flag-settings
            rts
          ];
          doHaddock = false;
          doCheck = false;
          description = "Basic libraries";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      base-compat = callPackage ({ base, mkDerivation, stdenv, unix }:
      mkDerivation {
          pname = "base-compat";
          version = "0.9.3";
          sha256 = "7d602b0f0543fadbd598a090c738e9ce9b07a1896673dc27f1503ae3bea1a210";
          libraryHaskellDepends = [
            base
            unix
          ];
          doHaddock = false;
          doCheck = false;
          description = "A compatibility layer for base";
          license = stdenv.lib.licenses.mit;
        }) {};
      base-orphans = callPackage ({ base, ghc-prim, mkDerivation, stdenv }:
      mkDerivation {
          pname = "base-orphans";
          version = "0.6";
          sha256 = "c7282aa7516652e6e4a78ccdfb654a99c9da683875748ad5898a3f200be7ad0e";
          libraryHaskellDepends = [
            base
            ghc-prim
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/haskell-compat/base-orphans#readme";
          description = "Backwards-compatible orphan instances for base";
          license = stdenv.lib.licenses.mit;
        }) {};
      base16-bytestring = callPackage ({ base, bytestring, ghc-prim, mkDerivation, stdenv }:
      mkDerivation {
          pname = "base16-bytestring";
          version = "0.1.1.6";
          sha256 = "5afe65a152c5418f5f4e3579a5e0d5ca19c279dc9bf31c1a371ccbe84705c449";
          libraryHaskellDepends = [
            base
            bytestring
            ghc-prim
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/bos/base16-bytestring";
          description = "Fast base16 (hex) encoding and decoding for ByteStrings";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      base64-bytestring = callPackage ({ base, bytestring, mkDerivation, stdenv }:
      mkDerivation {
          pname = "base64-bytestring";
          version = "1.0.0.1";
          sha256 = "ab25abf4b00a2f52b270bc3ed43f1d59f16c8eec9d7dffb14df1e9265b233b50";
          libraryHaskellDepends = [
            base
            bytestring
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/bos/base64-bytestring";
          description = "Fast base64 encoding and decoding for ByteStrings";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      basement = callPackage ({ base, ghc-prim, mkDerivation, stdenv }:
      mkDerivation {
          pname = "basement";
          version = "0.0.4";
          sha256 = "68448325bacc85dcb8764d9f78d27285b56e978df03187bee912edbf1adab8fd";
          libraryHaskellDepends = [
            base
            ghc-prim
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/haskell-foundation/foundation";
          description = "Foundation scrap box of array & string";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      bifunctors = callPackage ({ base, base-orphans, comonad, containers, mkDerivation, semigroups, stdenv, tagged, template-haskell, th-abstraction, transformers, transformers-compat }:
      mkDerivation {
          pname = "bifunctors";
          version = "5.5";
          sha256 = "92c581bf67d882c7529bdc1fa9f995827d360b5426b2769f9a9bc1166e41be28";
          libraryHaskellDepends = [
            base
            base-orphans
            comonad
            containers
            semigroups
            tagged
            template-haskell
            th-abstraction
            transformers
            transformers-compat
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/ekmett/bifunctors/";
          description = "Bifunctors";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      binary = callPackage ({ array, base, bytestring, containers, mkDerivation, stdenv }:
      mkDerivation {
          pname = "binary";
          version = "0.8.5.1";
          sha256 = "deb91a69662288f38bb62e04f2cedf8ef60d84437a194c778dacf6c31dfe0596";
          libraryHaskellDepends = [
            array
            base
            bytestring
            containers
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/kolmodin/binary";
          description = "Binary serialisation for Haskell values using lazy ByteStrings";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      blaze-builder = callPackage ({ base, bytestring, deepseq, mkDerivation, stdenv, text }:
      mkDerivation {
          pname = "blaze-builder";
          version = "0.4.0.2";
          sha256 = "9ad3e4661bf5556d650fb9aa56a3ad6e6eec7575e87d472e8ab6d15eaef163d4";
          revision = "1";
          editedCabalFile = "1n8z1zcvrslsa9dvflx8528hsialmnljl1zzdjf1azs24xdq2npm";
          libraryHaskellDepends = [
            base
            bytestring
            deepseq
            text
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/lpsmith/blaze-builder";
          description = "Efficient buffered output";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      byteable = callPackage ({ base, bytestring, mkDerivation, stdenv }:
      mkDerivation {
          pname = "byteable";
          version = "0.1.1";
          sha256 = "243b34a1b5b64b39e39fe58f75c18f6cad5b668b10cabcd86816cbde27783fe2";
          enableSeparateDataOutput = true;
          libraryHaskellDepends = [
            base
            bytestring
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/vincenthz/hs-byteable";
          description = "Type class for sequence of bytes";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      byteorder = callPackage ({ base, mkDerivation, stdenv }:
      mkDerivation {
          pname = "byteorder";
          version = "1.0.4";
          sha256 = "bd20bbb586947f99c38a4c93d9d0266f49f6fc581767b51ba568f6d5d52d2919";
          libraryHaskellDepends = [
            base
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://community.haskell.org/~aslatter/code/byteorder";
          description = "Exposes the native endianness or byte ordering of the system";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      bytestring = callPackage ({ base, deepseq, ghc-prim, integer-gmp, mkDerivation, stdenv }:
      mkDerivation {
          pname = "bytestring";
          version = "0.10.8.2";
          sha256 = "da6f668e47a8c408929a456a6d79b81021a734c1dbd023e004f498de972f4c3a";
          libraryHaskellDepends = [
            base
            deepseq
            ghc-prim
            integer-gmp
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/haskell/bytestring";
          description = "Fast, compact, strict and lazy byte strings with a list interface";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      bytestring-builder = callPackage ({ base, bytestring, deepseq, mkDerivation, stdenv }:
      mkDerivation {
          pname = "bytestring-builder";
          version = "0.10.8.1.0";
          sha256 = "6d7404773621efb88b256ff88912a7dbcebc7fb86d27868ef58478249892dbc2";
          libraryHaskellDepends = [
            base
            bytestring
            deepseq
          ];
          doHaddock = false;
          doCheck = false;
          description = "The new bytestring builder, packaged outside of GHC";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      cabal-doctest = callPackage ({ Cabal, base, directory, filepath, mkDerivation, stdenv }:
      mkDerivation {
          pname = "cabal-doctest";
          version = "1.0.5";
          sha256 = "55ab74e5193aa0700c5e9c0227910ffd1caa91227dfe1d8071bbca3ef0497574";
          libraryHaskellDepends = [
            base
            Cabal
            directory
            filepath
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/phadej/cabal-doctest";
          description = "A Setup.hs helper for doctests running";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      call-stack = callPackage ({ base, mkDerivation, stdenv }:
      mkDerivation {
          pname = "call-stack";
          version = "0.1.0";
          sha256 = "f25f5e0992a39371079cc25c2a14b5abb872fa7d868a32753aac3a258b83b1e2";
          libraryHaskellDepends = [
            base
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/sol/call-stack#readme";
          description = "Use GHC call-stacks in a backward compatible way";
          license = stdenv.lib.licenses.mit;
        }) {};
      case-insensitive = callPackage ({ base, bytestring, deepseq, hashable, mkDerivation, stdenv, text }:
      mkDerivation {
          pname = "case-insensitive";
          version = "1.2.0.10";
          sha256 = "66321c40fffb35f3a3188ba508753b74aada53fb51c822a9752614b03765306c";
          revision = "2";
          editedCabalFile = "197c93pa4lq6rgv59s9q9m11lziyyy6jlizvqap4lz0ijfnmj1gx";
          libraryHaskellDepends = [
            base
            bytestring
            deepseq
            hashable
            text
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/basvandijk/case-insensitive";
          description = "Case insensitive string comparison";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      cassava = callPackage ({ Only, array, attoparsec, base, bytestring, containers, deepseq, hashable, mkDerivation, scientific, stdenv, text, text-short, unordered-containers, vector }:
      mkDerivation {
          pname = "cassava";
          version = "0.5.1.0";
          sha256 = "762c8aaea2cdad61f52bad1b9f1f3b32764b4b6da03371aba6e5017f69614277";
          configureFlags = [
            "-f-bytestring--lt-0_10_4"
          ];
          libraryHaskellDepends = [
            array
            attoparsec
            base
            bytestring
            containers
            deepseq
            hashable
            Only
            scientific
            text
            text-short
            unordered-containers
            vector
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/hvr/cassava";
          description = "A CSV parsing and encoding library";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      cereal = callPackage ({ array, base, bytestring, containers, ghc-prim, mkDerivation, stdenv }:
      mkDerivation {
          pname = "cereal";
          version = "0.5.5.0";
          sha256 = "0b97320ffbfa6df2e5679022215dbd0fe6e3b5ae8428c2ff4310d9e1acf16822";
          libraryHaskellDepends = [
            array
            base
            bytestring
            containers
            ghc-prim
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/GaloisInc/cereal";
          description = "A binary serialization library";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      clock = callPackage ({ base, mkDerivation, stdenv }:
      mkDerivation {
          pname = "clock";
          version = "0.7.2";
          sha256 = "886601978898d3a91412fef895e864576a7125d661e1f8abc49a2a08840e691f";
          libraryHaskellDepends = [
            base
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/corsis/clock";
          description = "High-resolution clock functions: monotonic, realtime, cputime";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      cmdargs = callPackage ({ base, filepath, mkDerivation, process, stdenv, template-haskell, transformers }:
      mkDerivation {
          pname = "cmdargs";
          version = "0.10.20";
          sha256 = "0e269dc48c3d4c0447c96ffd772a6fe69dfa1260c323f4cd7bf171cbf2ab7331";
          isLibrary = true;
          isExecutable = true;
          libraryHaskellDepends = [
            base
            filepath
            process
            template-haskell
            transformers
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/ndmitchell/cmdargs#readme";
          description = "Command line argument processing";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      code-page = callPackage ({ base, mkDerivation, stdenv }:
      mkDerivation {
          pname = "code-page";
          version = "0.1.3";
          sha256 = "e65c86600e06d85f2e2c2a9df4b3d68e2dbd3adb2df9e922a4cd744966762191";
          libraryHaskellDepends = [
            base
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/RyanGlScott/code-page";
          description = "Windows code page library for Haskell";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      colour = callPackage ({ base, mkDerivation, stdenv }:
      mkDerivation {
          pname = "colour";
          version = "2.3.4";
          sha256 = "0f439f00b322ce3d551f28a4dd1520aa2c91d699de4cdc6d485b9b04be0dc5eb";
          enableSeparateDataOutput = true;
          libraryHaskellDepends = [
            base
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://www.haskell.org/haskellwiki/Colour";
          description = "A model for human colour/color perception";
          license = stdenv.lib.licenses.mit;
        }) {};
      comonad = callPackage ({ Cabal, base, cabal-doctest, containers, contravariant, distributive, mkDerivation, semigroups, stdenv, tagged, transformers, transformers-compat }:
      mkDerivation {
          pname = "comonad";
          version = "5.0.2";
          sha256 = "1bb0fe396ecd16008411862ee453e8bd7c3e0f3a7299537dd59466604a54b784";
          revision = "2";
          editedCabalFile = "1ngks9bym68rw0xdq43n14nay4kxdxv2n7alwfd9wcpismfz009g";
          setupHaskellDepends = [
            base
            Cabal
            cabal-doctest
          ];
          libraryHaskellDepends = [
            base
            containers
            contravariant
            distributive
            semigroups
            tagged
            transformers
            transformers-compat
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/ekmett/comonad/";
          description = "Comonads";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      conduit = callPackage ({ base, exceptions, lifted-base, mkDerivation, mmorph, monad-control, mtl, primitive, resourcet, stdenv, transformers, transformers-base, transformers-compat }:
      mkDerivation {
          pname = "conduit";
          version = "1.2.13";
          sha256 = "239d1bac614bc1085315ad8d15275471fc7c0eaef05950429d40a65bd73711ac";
          libraryHaskellDepends = [
            base
            exceptions
            lifted-base
            mmorph
            monad-control
            mtl
            primitive
            resourcet
            transformers
            transformers-base
            transformers-compat
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/snoyberg/conduit";
          description = "Streaming data processing library";
          license = stdenv.lib.licenses.mit;
        }) {};
      conduit-extra = callPackage ({ async, attoparsec, base, blaze-builder, bytestring, conduit, directory, exceptions, filepath, mkDerivation, monad-control, network, primitive, process, resourcet, stdenv, stm, streaming-commons, text, transformers, transformers-base, typed-process, unliftio-core }:
      mkDerivation {
          pname = "conduit-extra";
          version = "1.2.3.2";
          sha256 = "1d5b66284703a4b9fb96a4c6a2213727208639871a675da9755e9a963fa230f6";
          revision = "1";
          editedCabalFile = "10smqv7xrjj5vhpdfj9ha89dm8nw04cv09avg58c6y8yybbz5i01";
          libraryHaskellDepends = [
            async
            attoparsec
            base
            blaze-builder
            bytestring
            conduit
            directory
            exceptions
            filepath
            monad-control
            network
            primitive
            process
            resourcet
            stm
            streaming-commons
            text
            transformers
            transformers-base
            typed-process
            unliftio-core
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/snoyberg/conduit";
          description = "Batteries included conduit: adapters for common libraries";
          license = stdenv.lib.licenses.mit;
        }) {};
      connection = callPackage ({ base, byteable, bytestring, containers, data-default-class, mkDerivation, network, socks, stdenv, tls, x509, x509-store, x509-system, x509-validation }:
      mkDerivation {
          pname = "connection";
          version = "0.2.8";
          sha256 = "70b1f44e8786320c18b26fc5d4ec115fc8ac016ba1f852fa8137f55d785a93eb";
          libraryHaskellDepends = [
            base
            byteable
            bytestring
            containers
            data-default-class
            network
            socks
            tls
            x509
            x509-store
            x509-system
            x509-validation
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/vincenthz/hs-connection";
          description = "Simple and easy network connections API";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      containers = callPackage ({ array, base, deepseq, ghc-prim, mkDerivation, stdenv }:
      mkDerivation {
          pname = "containers";
          version = "0.5.10.2";
          sha256 = "a04efef290be272cdeca1c36f9cff17271ccd8d2b484ebf152bb496fb5328c23";
          libraryHaskellDepends = [
            array
            base
            deepseq
            ghc-prim
          ];
          doHaddock = false;
          doCheck = false;
          description = "Assorted concrete container types";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      contravariant = callPackage ({ StateVar, base, mkDerivation, stdenv, transformers, transformers-compat }:
      mkDerivation {
          pname = "contravariant";
          version = "1.4.1";
          sha256 = "c93d3d619fa378f3fdf92c53bb8b04b8f47963b88aba7cfa54b57656189ad0ed";
          libraryHaskellDepends = [
            base
            StateVar
            transformers
            transformers-compat
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/ekmett/contravariant/";
          description = "Contravariant functors";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      cookie = callPackage ({ base, blaze-builder, bytestring, data-default-class, deepseq, mkDerivation, old-locale, stdenv, text, time }:
      mkDerivation {
          pname = "cookie";
          version = "0.4.3";
          sha256 = "fbfb0c4fcebe6cb85cb6b84572287a57ee7e3a380f2fe51c4885bfb460f3ed62";
          libraryHaskellDepends = [
            base
            blaze-builder
            bytestring
            data-default-class
            deepseq
            old-locale
            text
            time
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/snoyberg/cookie";
          description = "HTTP cookie parsing and rendering";
          license = stdenv.lib.licenses.mit;
        }) {};
      cpphs = callPackage ({ base, directory, mkDerivation, old-locale, old-time, polyparse, stdenv }:
      mkDerivation {
          pname = "cpphs";
          version = "1.20.8";
          sha256 = "e56d64a7d8058e0fb63f0669397c1c861efb20a0376e0e74d86942ac151105ae";
          isLibrary = true;
          isExecutable = true;
          libraryHaskellDepends = [
            base
            directory
            old-locale
            old-time
            polyparse
          ];
          executableHaskellDepends = [
            base
            directory
            old-locale
            old-time
            polyparse
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://projects.haskell.org/cpphs/";
          description = "A liberalised re-implementation of cpp, the C pre-processor";
          license = "LGPL";
        }) {};
      criterion = callPackage ({ Glob, aeson, ansi-wl-pprint, base, base-compat, binary, bytestring, cassava, code-page, containers, deepseq, directory, exceptions, filepath, js-flot, js-jquery, microstache, mkDerivation, mtl, mwc-random, optparse-applicative, parsec, semigroups, statistics, stdenv, text, time, transformers, transformers-compat, vector, vector-algorithms }:
      mkDerivation {
          pname = "criterion";
          version = "1.2.6.0";
          sha256 = "6c05ad0e97dc16fe54c3066df572ce6919e5f4564b791873f4a331727c953729";
          revision = "2";
          editedCabalFile = "0i5fb4g9qpar9fkbkgrd9v7ifl4277cp88qmcwxzqak4knxifba8";
          isLibrary = true;
          isExecutable = true;
          enableSeparateDataOutput = true;
          libraryHaskellDepends = [
            aeson
            ansi-wl-pprint
            base
            base-compat
            binary
            bytestring
            cassava
            code-page
            containers
            deepseq
            directory
            exceptions
            filepath
            Glob
            js-flot
            js-jquery
            microstache
            mtl
            mwc-random
            optparse-applicative
            parsec
            semigroups
            statistics
            text
            time
            transformers
            transformers-compat
            vector
            vector-algorithms
          ];
          executableHaskellDepends = [
            base
            optparse-applicative
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://www.serpentine.com/criterion";
          description = "Robust, reliable performance measurement and analysis";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      crypto-api = callPackage ({ base, bytestring, cereal, entropy, mkDerivation, stdenv, tagged, transformers }:
      mkDerivation {
          pname = "crypto-api";
          version = "0.13.3";
          sha256 = "298a9ea7ce97c8ccf4bfe46d4864092c3a007a56bede73560070db3bf1ac7aa5";
          revision = "1";
          editedCabalFile = "1z6n1sa5pn3iqvqjrd8hv4bc2pxzsrhm5sh0l8z7g9lbqp6w0wp5";
          libraryHaskellDepends = [
            base
            bytestring
            cereal
            entropy
            tagged
            transformers
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/TomMD/crypto-api";
          description = "A generic interface for cryptographic operations";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      crypto-pubkey-types = callPackage ({ asn1-encoding, asn1-types, base, mkDerivation, stdenv }:
      mkDerivation {
          pname = "crypto-pubkey-types";
          version = "0.4.3";
          sha256 = "7ed9f52281ec4e34021a91818fe45288e33d65bff937f60334a3f45be5a71c60";
          libraryHaskellDepends = [
            asn1-encoding
            asn1-types
            base
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/vincenthz/hs-crypto-pubkey-types";
          description = "Generic cryptography Public keys algorithm types";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      cryptohash = callPackage ({ base, byteable, bytestring, cryptonite, ghc-prim, memory, mkDerivation, stdenv }:
      mkDerivation {
          pname = "cryptohash";
          version = "0.11.9";
          sha256 = "c28f847fc1fcd65b6eea2e74a100300af940919f04bb21d391f6a773968f22fb";
          libraryHaskellDepends = [
            base
            byteable
            bytestring
            cryptonite
            ghc-prim
            memory
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/vincenthz/hs-cryptohash";
          description = "collection of crypto hashes, fast, pure and practical";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      cryptonite = callPackage ({ base, bytestring, deepseq, foundation, ghc-prim, integer-gmp, memory, mkDerivation, stdenv }:
      mkDerivation {
          pname = "cryptonite";
          version = "0.24";
          sha256 = "17c3312343ef9bbfa87566d1f701d24870c2d34e015b104ff02faf1c9e1b5a86";
          libraryHaskellDepends = [
            base
            bytestring
            deepseq
            foundation
            ghc-prim
            integer-gmp
            memory
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/haskell-crypto/cryptonite";
          description = "Cryptography Primitives sink";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      data-default = callPackage ({ base, data-default-class, data-default-instances-containers, data-default-instances-dlist, data-default-instances-old-locale, mkDerivation, stdenv }:
      mkDerivation {
          pname = "data-default";
          version = "0.7.1.1";
          sha256 = "b0f95d279cd75cacaa8152a01590dc3460f7134f6840b37052abb3ba3cb2a511";
          libraryHaskellDepends = [
            base
            data-default-class
            data-default-instances-containers
            data-default-instances-dlist
            data-default-instances-old-locale
          ];
          doHaddock = false;
          doCheck = false;
          description = "A class for types with a default value";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      data-default-class = callPackage ({ base, mkDerivation, stdenv }:
      mkDerivation {
          pname = "data-default-class";
          version = "0.1.2.0";
          sha256 = "4f01b423f000c3e069aaf52a348564a6536797f31498bb85c3db4bd2d0973e56";
          libraryHaskellDepends = [
            base
          ];
          doHaddock = false;
          doCheck = false;
          description = "A class for types with a default value";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      data-default-instances-containers = callPackage ({ base, containers, data-default-class, mkDerivation, stdenv }:
      mkDerivation {
          pname = "data-default-instances-containers";
          version = "0.0.1";
          sha256 = "a55e07af005c9815d82f3fc95e125db82994377c9f4a769428878701d4ec081a";
          libraryHaskellDepends = [
            base
            containers
            data-default-class
          ];
          doHaddock = false;
          doCheck = false;
          description = "Default instances for types in containers";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      data-default-instances-dlist = callPackage ({ base, data-default-class, dlist, mkDerivation, stdenv }:
      mkDerivation {
          pname = "data-default-instances-dlist";
          version = "0.0.1";
          sha256 = "7d683711cbf08abd7adcd5ac2be825381308d220397315a5570fe61b719b5959";
          libraryHaskellDepends = [
            base
            data-default-class
            dlist
          ];
          doHaddock = false;
          doCheck = false;
          description = "Default instances for types in dlist";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      data-default-instances-old-locale = callPackage ({ base, data-default-class, mkDerivation, old-locale, stdenv }:
      mkDerivation {
          pname = "data-default-instances-old-locale";
          version = "0.0.1";
          sha256 = "60d3b02922958c4908d7bf2b24ddf61511665745f784227d206745784b0c0802";
          libraryHaskellDepends = [
            base
            data-default-class
            old-locale
          ];
          doHaddock = false;
          doCheck = false;
          description = "Default instances for types in old-locale";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      deepseq = callPackage ({ array, base, mkDerivation, stdenv }:
      mkDerivation {
          pname = "deepseq";
          version = "1.4.3.0";
          sha256 = "6d8135992ccb8829b676a17f016ced966bd72e083584702a3a1b63879aae4d3a";
          revision = "1";
          editedCabalFile = "0djisxi7z2xyx3wps550avgz5x56rl4xzks17j996crdsrdrcqh9";
          libraryHaskellDepends = [
            array
            base
          ];
          doHaddock = false;
          doCheck = false;
          description = "Deep evaluation of data structures";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      directory = callPackage ({ base, filepath, mkDerivation, stdenv, time, unix }:
      mkDerivation {
          pname = "directory";
          version = "1.3.0.2";
          sha256 = "f9ee11de8bbaf7b8e2710d40ca0f1081fd1aaa609faede14a3706d60345c7aa3";
          libraryHaskellDepends = [
            base
            filepath
            time
            unix
          ];
          doHaddock = false;
          doCheck = false;
          description = "Platform-agnostic library for filesystem operations";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      distributive = callPackage ({ Cabal, base, base-orphans, cabal-doctest, mkDerivation, stdenv, tagged, transformers, transformers-compat }:
      mkDerivation {
          pname = "distributive";
          version = "0.5.3";
          sha256 = "9173805b9c941bda1f37e5aeb68ae30f57a12df9b17bd2aa86db3b7d5236a678";
          revision = "5";
          editedCabalFile = "0hl43mbw87s5l7p1iqc7iwz5rnzdcmj6g33pmq6hv4s9fg96j8x7";
          setupHaskellDepends = [
            base
            Cabal
            cabal-doctest
          ];
          libraryHaskellDepends = [
            base
            base-orphans
            tagged
            transformers
            transformers-compat
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/ekmett/distributive/";
          description = "Distributive functors -- Dual to Traversable";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      dlist = callPackage ({ base, deepseq, mkDerivation, stdenv }:
      mkDerivation {
          pname = "dlist";
          version = "0.8.0.4";
          sha256 = "acf1867b80cdd618b8d904e89eea33be60d3c4c3aeb80d61f29229a301cc397a";
          libraryHaskellDepends = [
            base
            deepseq
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/spl/dlist";
          description = "Difference lists";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      doc-browser = callPackage ({ MissingH, aeson, array, async, base, binary, bytestring, containers, criterion, deepseq, directory, extra, fetchgit, filepath, hoogle, hsqml, http-types, lens, lzma, mkDerivation, network-uri, optparse-applicative, regex-pcre, safe, stdenv, stm, tar, temporary, text, transformers, wai, warp, wreq, zlib, qt }:
      mkDerivation {
          pname = "doc-browser";
          version = "0.2.0";
          src = fetchgit {
            url = "https://github.com/qwfy/doc-browser.git";
            sha256 = "0xbx236p4wi57f9rk86m84bdnxficlp5hwvw8d00v3m0596lw5fs";
            rev = "ca79529c72d4f19d180416f9bc44e81e78b775be";
          };
          isLibrary = true;
          isExecutable = true;
          enableSeparateDataOutput = true;
          libraryHaskellDepends = [
            aeson
            array
            async
            base
            binary
            bytestring
            containers
            criterion
            deepseq
            directory
            extra
            filepath
            hoogle
            hsqml
            http-types
            lens
            lzma
            MissingH
            network-uri
            optparse-applicative
            regex-pcre
            safe
            stm
            tar
            temporary
            text
            transformers
            wai
            warp
            wreq
            zlib
            qt
          ];
          executableHaskellDepends = [
            aeson
            array
            async
            base
            binary
            bytestring
            containers
            criterion
            deepseq
            directory
            extra
            filepath
            hoogle
            hsqml
            http-types
            lens
            lzma
            MissingH
            network-uri
            optparse-applicative
            regex-pcre
            safe
            stm
            tar
            temporary
            text
            transformers
            wai
            warp
            wreq
            zlib
            qt
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/qwfy/doc-browser#readme";
          description = "A documentation browser";
          license = stdenv.lib.licenses.mpl20;
        }) {};
      easy-file = callPackage ({ base, directory, filepath, mkDerivation, stdenv, time, unix }:
      mkDerivation {
          pname = "easy-file";
          version = "0.2.1";
          sha256 = "ff86e1b29284499bea5f1d0ff539b3ed64fa6d1a06c2243ca61f93be0202e56c";
          libraryHaskellDepends = [
            base
            directory
            filepath
            time
            unix
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/kazu-yamamoto/easy-file";
          description = "Cross-platform File handling";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      entropy = callPackage ({ Cabal, base, bytestring, directory, filepath, mkDerivation, process, stdenv, unix }:
      mkDerivation {
          pname = "entropy";
          version = "0.3.8";
          sha256 = "743a49d5e17ae9d6118ff077f2cd2d5944c0ea6cff501efeec95b68d5f7474d0";
          setupHaskellDepends = [
            base
            Cabal
            directory
            filepath
            process
          ];
          libraryHaskellDepends = [
            base
            bytestring
            unix
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/TomMD/entropy";
          description = "A platform independent entropy source";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      erf = callPackage ({ base, mkDerivation, stdenv }:
      mkDerivation {
          pname = "erf";
          version = "2.0.0.0";
          sha256 = "24f0b79c7e1d25cb2cd44c2258d7a464bf6db8079775b50b60b54a254616b337";
          libraryHaskellDepends = [
            base
          ];
          doHaddock = false;
          doCheck = false;
          description = "The error function, erf, and related functions";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      exceptions = callPackage ({ base, mkDerivation, mtl, stdenv, stm, template-haskell, transformers, transformers-compat }:
      mkDerivation {
          pname = "exceptions";
          version = "0.8.3";
          sha256 = "4d6ad97e8e3d5dc6ce9ae68a469dc2fd3f66e9d312bc6faa7ab162eddcef87be";
          revision = "5";
          editedCabalFile = "1kfgp41i6mfz9gjczp3flvqxfhnznd81rwldv8j05807n6mnqqii";
          libraryHaskellDepends = [
            base
            mtl
            stm
            template-haskell
            transformers
            transformers-compat
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/ekmett/exceptions/";
          description = "Extensible optionally-pure exceptions";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      extra = callPackage ({ base, clock, directory, filepath, mkDerivation, process, stdenv, time, unix }:
      mkDerivation {
          pname = "extra";
          version = "1.6.3";
          sha256 = "35a898a41d7eced847c529a613b3b635a9f8172625d0615ce3926ad3a904ba19";
          libraryHaskellDepends = [
            base
            clock
            directory
            filepath
            process
            time
            unix
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/ndmitchell/extra#readme";
          description = "Extra functions I use";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      fail = callPackage ({ mkDerivation, stdenv }:
      mkDerivation {
          pname = "fail";
          version = "4.9.0.0";
          sha256 = "6d5cdb1a5c539425a9665f740e364722e1d9d6ae37fbc55f30fe3dbbbb91d4a2";
          doHaddock = false;
          doCheck = false;
          homepage = "https://prime.haskell.org/wiki/Libraries/Proposals/MonadFail";
          description = "Forward-compatible MonadFail class";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      fast-logger = callPackage ({ array, auto-update, base, bytestring, directory, easy-file, filepath, mkDerivation, stdenv, text, unix, unix-time }:
      mkDerivation {
          pname = "fast-logger";
          version = "2.4.10";
          sha256 = "dec4a5d1a88f822d08d334ee870a08a8bb63b2b226d145cd24a7f08676ce678d";
          libraryHaskellDepends = [
            array
            auto-update
            base
            bytestring
            directory
            easy-file
            filepath
            text
            unix
            unix-time
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/kazu-yamamoto/logger";
          description = "A fast logging system";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      filepath = callPackage ({ base, mkDerivation, stdenv }:
      mkDerivation {
          pname = "filepath";
          version = "1.4.1.2";
          sha256 = "7bfb0c8776dc161cf10e324b306f3a0c89db01803ee2f8c7e11fcf3cd9892bc3";
          libraryHaskellDepends = [
            base
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/haskell/filepath#readme";
          description = "Library for manipulating FilePaths in a cross platform way";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      fmlist = callPackage ({ base, mkDerivation, stdenv }:
      mkDerivation {
          pname = "fmlist";
          version = "0.9.2";
          sha256 = "8fc4b55d04e7f216740a01acd2f38293e3bd9409a9495e6042a162580c420609";
          libraryHaskellDepends = [
            base
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/sjoerdvisscher/fmlist";
          description = "FoldMap lists";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      foundation = callPackage ({ base, basement, ghc-prim, mkDerivation, stdenv }:
      mkDerivation {
          pname = "foundation";
          version = "0.0.17";
          sha256 = "04d1a273c5575ffd12c822995bbe4e93bfa92571b4eb9bc792ae84030fb9c201";
          revision = "1";
          editedCabalFile = "15y38y0mj4vc694jwh3cjgnq8xv5vv7954g633f7mw5f0hb3yxkn";
          libraryHaskellDepends = [
            base
            basement
            ghc-prim
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/haskell-foundation/foundation";
          description = "Alternative prelude with batteries and no dependencies";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      free = callPackage ({ base, bifunctors, comonad, containers, distributive, exceptions, mkDerivation, mtl, prelude-extras, profunctors, semigroupoids, semigroups, stdenv, template-haskell, transformers, transformers-compat }:
      mkDerivation {
          pname = "free";
          version = "4.12.4";
          sha256 = "c9fe45aae387855626ecb5a0fea6afdb207143cb00af3b1f715d1032d2d08784";
          revision = "2";
          editedCabalFile = "0gmib9bmswrqhl47cp5b871v9f44v9yidzxpljkszy49y9qdf560";
          libraryHaskellDepends = [
            base
            bifunctors
            comonad
            containers
            distributive
            exceptions
            mtl
            prelude-extras
            profunctors
            semigroupoids
            semigroups
            template-haskell
            transformers
            transformers-compat
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/ekmett/free/";
          description = "Monads for free";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      generic-deriving = callPackage ({ base, containers, ghc-prim, mkDerivation, stdenv, template-haskell }:
      mkDerivation {
          pname = "generic-deriving";
          version = "1.12.1";
          sha256 = "f5fd3f733a20deee5a6e752969edac1e04a90e2ee34e005fccb5d35a5c129473";
          revision = "1";
          editedCabalFile = "1vr9lyvcrdiar6ndqnspwvhvrbnc1fvsjyx458ivpcr6j75j0l5j";
          libraryHaskellDepends = [
            base
            containers
            ghc-prim
            template-haskell
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/dreixel/generic-deriving";
          description = "Generic programming library for generalised deriving";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      ghc-boot-th = callPackage ({ base, mkDerivation, stdenv }:
      mkDerivation {
          pname = "ghc-boot-th";
          version = "8.2.2";
          sha256 = "6c8e26b23ea4c5dcf8e0453e7e7be5457272a2646f1150382680078b718daf5d";
          libraryHaskellDepends = [
            base
          ];
          doHaddock = false;
          doCheck = false;
          description = "Shared functionality between GHC and the @template-haskell@ library";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      ghc-prim = callPackage ({ mkDerivation, rts, stdenv }:
      mkDerivation {
          pname = "ghc-prim";
          version = "0.5.1.1";
          sha256 = "62415c570a065d7a3b7cc2792395d57ac4d31b828a357ba54136d690100574b6";
          libraryHaskellDepends = [ rts ];
          doHaddock = false;
          doCheck = false;
          description = "GHC primitives";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      happy = callPackage ({ Cabal, array, base, containers, directory, filepath, mkDerivation, mtl, stdenv }:
      mkDerivation {
          pname = "happy";
          version = "1.19.9";
          sha256 = "3e81a3e813acca3aae52721c412cde18b7b7c71ecbacfaeaa5c2f4b35abf1d8d";
          revision = "2";
          editedCabalFile = "1zxi8zfwiwxidrhr0yj5srpzp32z66sld9xv0k4yz7046rkl3577";
          isLibrary = false;
          isExecutable = true;
          setupHaskellDepends = [
            base
            Cabal
            directory
            filepath
          ];
          executableHaskellDepends = [
            array
            base
            containers
            mtl
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://www.haskell.org/happy/";
          description = "Happy is a parser generator for Haskell";
          license = stdenv.lib.licenses.bsd2;
        }) {};
      hashable = callPackage ({ base, bytestring, deepseq, ghc-prim, integer-gmp, mkDerivation, stdenv, text }:
      mkDerivation {
          pname = "hashable";
          version = "1.2.6.1";
          sha256 = "94ca8789e13bc05c1582c46b709f3b0f5aeec2092be634b8606dbd9c5915bb7a";
          revision = "2";
          editedCabalFile = "0w4756sa04nk2bw3vnysb0y9d09zzg3c77aydkjfxz1hnl1dvnjn";
          isLibrary = true;
          isExecutable = true;
          libraryHaskellDepends = [
            base
            bytestring
            deepseq
            ghc-prim
            integer-gmp
            text
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/tibbe/hashable";
          description = "A class for types that can be converted to a hash value";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      haskell-src-exts = callPackage ({ array, base, cpphs, ghc-prim, happy, mkDerivation, pretty, stdenv }:
      mkDerivation {
          pname = "haskell-src-exts";
          version = "1.19.1";
          sha256 = "f0f5b2867673d654c7cce8a5fcc69222ea09af460c29a819c23cccf6311ba971";
          libraryHaskellDepends = [
            array
            base
            cpphs
            ghc-prim
            pretty
          ];
          libraryToolDepends = [ happy ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/haskell-suite/haskell-src-exts";
          description = "Manipulating Haskell source: abstract syntax, lexer, parser, and pretty-printer";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      hoogle = callPackage ({ QuickCheck, aeson, base, binary, bytestring, cmdargs, conduit, conduit-extra, connection, containers, deepseq, directory, extra, filepath, haskell-src-exts, http-conduit, http-types, js-flot, js-jquery, mkDerivation, mmap, network, network-uri, old-locale, process, process-extras, resourcet, stdenv, storable-tuple, tar, template-haskell, text, time, transformers, uniplate, utf8-string, vector, wai, wai-logger, warp, warp-tls, zlib }:
      mkDerivation {
          pname = "hoogle";
          version = "5.0.14";
          sha256 = "e7cfa9ca7496d7a30b476f3502c0dfa38671d4235042bb46806568602e97bbf8";
          revision = "3";
          editedCabalFile = "14973295rif9gsyaxfrw7y5p59sxnz4znki3jm3bk73y0b3j1l5d";
          isLibrary = true;
          isExecutable = true;
          enableSeparateDataOutput = true;
          libraryHaskellDepends = [
            aeson
            base
            binary
            bytestring
            cmdargs
            conduit
            conduit-extra
            connection
            containers
            deepseq
            directory
            extra
            filepath
            haskell-src-exts
            http-conduit
            http-types
            js-flot
            js-jquery
            mmap
            network
            network-uri
            old-locale
            process
            process-extras
            QuickCheck
            resourcet
            storable-tuple
            tar
            template-haskell
            text
            time
            transformers
            uniplate
            utf8-string
            vector
            wai
            wai-logger
            warp
            warp-tls
            zlib
          ];
          executableHaskellDepends = [
            base
          ];
          doHaddock = false;
          doCheck = false;
          testTarget = "--test-option=--no-net";
          homepage = "http://hoogle.haskell.org/";
          description = "Haskell API Search";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      hourglass = callPackage ({ base, deepseq, mkDerivation, stdenv }:
      mkDerivation {
          pname = "hourglass";
          version = "0.2.10";
          sha256 = "d553362d7a6f7df60d8ff99304aaad0995be81f9d302725ebe9441829a0f8d80";
          libraryHaskellDepends = [
            base
            deepseq
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/vincenthz/hs-hourglass";
          description = "simple performant time related library";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      hscolour = callPackage ({ base, containers, mkDerivation, stdenv }:
      mkDerivation {
          pname = "hscolour";
          version = "1.24.4";
          sha256 = "243332b082294117f37b2c2c68079fa61af68b36223b3fc07594f245e0e5321d";
          isLibrary = true;
          isExecutable = true;
          enableSeparateDataOutput = true;
          libraryHaskellDepends = [
            base
            containers
          ];
          executableHaskellDepends = [
            base
            containers
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://code.haskell.org/~malcolm/hscolour/";
          description = "Colourise Haskell code";
          license = "LGPL";
        }) {};
      hslogger = callPackage ({ base, containers, directory, mkDerivation, mtl, network, old-locale, process, stdenv, time, unix }:
      mkDerivation {
          pname = "hslogger";
          version = "1.2.10";
          sha256 = "d7ca6e94a4aacb47a8dc30e3960ab8deff482d2ec9dca9a87b225e03e97e452b";
          libraryHaskellDepends = [
            base
            containers
            directory
            mtl
            network
            old-locale
            process
            time
            unix
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://software.complete.org/hslogger";
          description = "Versatile logging framework";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      hsqml = callPackage ({ Cabal, base, c2hs, containers, filepath, mkDerivation, qt5, stdenv, tagged, template-haskell, text, transformers }:
      mkDerivation {
          pname = "hsqml";
          version = "0.3.5.0";
          sha256 = "ec3d9d1c95bd73ab885e207c44bbd7bd14e517e49dae3d6bde7e6f424295a7c6";
          setupHaskellDepends = [
            base
            Cabal
            filepath
            template-haskell
          ];
          libraryHaskellDepends = [
            base
            containers
            filepath
            tagged
            text
            transformers
          ];
          libraryPkgconfigDepends = [
            qt5
          ];
          libraryToolDepends = [ c2hs ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://www.gekkou.co.uk/software/hsqml/";
          description = "Haskell binding for Qt Quick";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      http-client = callPackage ({ array, base, base64-bytestring, blaze-builder, bytestring, case-insensitive, containers, cookie, deepseq, exceptions, filepath, ghc-prim, http-types, mime-types, mkDerivation, network, network-uri, random, stdenv, stm, streaming-commons, text, time, transformers }:
      mkDerivation {
          pname = "http-client";
          version = "0.5.9";
          sha256 = "8eae7cd3df8b4099faa10608010b16bfcdf146db5fe637d02effb06fe3be8c2d";
          libraryHaskellDepends = [
            array
            base
            base64-bytestring
            blaze-builder
            bytestring
            case-insensitive
            containers
            cookie
            deepseq
            exceptions
            filepath
            ghc-prim
            http-types
            mime-types
            network
            network-uri
            random
            stm
            streaming-commons
            text
            time
            transformers
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/snoyberg/http-client";
          description = "An HTTP client engine";
          license = stdenv.lib.licenses.mit;
        }) {};
      http-client-tls = callPackage ({ base, bytestring, case-insensitive, connection, containers, cryptonite, data-default-class, exceptions, http-client, http-types, memory, mkDerivation, network, network-uri, stdenv, text, tls, transformers }:
      mkDerivation {
          pname = "http-client-tls";
          version = "0.3.5.1";
          sha256 = "c1fa23eb868f4b4e36304f3d03890bce1230284be79f80bd7b4fe1733e8a9558";
          libraryHaskellDepends = [
            base
            bytestring
            case-insensitive
            connection
            containers
            cryptonite
            data-default-class
            exceptions
            http-client
            http-types
            memory
            network
            network-uri
            text
            tls
            transformers
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/snoyberg/http-client";
          description = "http-client backend using the connection package and tls library";
          license = stdenv.lib.licenses.mit;
        }) {};
      http-conduit = callPackage ({ aeson, base, bytestring, conduit, conduit-extra, exceptions, http-client, http-client-tls, http-types, lifted-base, mkDerivation, monad-control, mtl, resourcet, stdenv, transformers }:
      mkDerivation {
          pname = "http-conduit";
          version = "2.2.4";
          sha256 = "f4a8ffd63238059c044a6ac8dad0ad0b276a5c75499e2313a63e6cf22e1d94f1";
          libraryHaskellDepends = [
            aeson
            base
            bytestring
            conduit
            conduit-extra
            exceptions
            http-client
            http-client-tls
            http-types
            lifted-base
            monad-control
            mtl
            resourcet
            transformers
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://www.yesodweb.com/book/http-conduit";
          description = "HTTP client package with conduit interface and HTTPS support";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      http-date = callPackage ({ array, attoparsec, base, bytestring, mkDerivation, stdenv }:
      mkDerivation {
          pname = "http-date";
          version = "0.0.6.1";
          sha256 = "f2e106603e2b3f710f1189e478f6c20067d9a9d21a20a633fe362b3f91807636";
          libraryHaskellDepends = [
            array
            attoparsec
            base
            bytestring
          ];
          doHaddock = false;
          doCheck = false;
          description = "HTTP Date parser/formatter";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      http-types = callPackage ({ array, base, blaze-builder, bytestring, case-insensitive, mkDerivation, stdenv, text }:
      mkDerivation {
          pname = "http-types";
          version = "0.9.1";
          sha256 = "7bed648cdc1c69e76bf039763dbe1074b55fd2704911dd0cb6b7dfebf1b6f550";
          libraryHaskellDepends = [
            array
            base
            blaze-builder
            bytestring
            case-insensitive
            text
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/aristidb/http-types";
          description = "Generic HTTP types for Haskell (for both client and server code)";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      http2 = callPackage ({ array, base, bytestring, bytestring-builder, case-insensitive, containers, mkDerivation, psqueues, stdenv, stm }:
      mkDerivation {
          pname = "http2";
          version = "1.6.3";
          sha256 = "61620eca0f57875a6a9bd24f9cc04c301b5c3c668bf98f85e9989aad5d069c43";
          isLibrary = true;
          isExecutable = true;
          libraryHaskellDepends = [
            array
            base
            bytestring
            bytestring-builder
            case-insensitive
            containers
            psqueues
            stm
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/kazu-yamamoto/http2";
          description = "HTTP/2 library including frames, priority queues and HPACK";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      integer-gmp = callPackage ({ ghc-prim, mkDerivation, stdenv }:
      mkDerivation {
          pname = "integer-gmp";
          version = "1.0.1.0";
          sha256 = "9cda6049a81fd4f301ffb38829f85203eb052daaffb450d193c06605f5c42df7";
          revision = "1";
          editedCabalFile = "02xp5ldq3xxx1qdxg7gbs2zcqpf1dxbdrvrzizxnjwhpiqxcigy3";
          libraryHaskellDepends = [
            ghc-prim
          ];
          doHaddock = false;
          doCheck = false;
          description = "Integer library based on GMP";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      integer-logarithms = callPackage ({ array, base, ghc-prim, integer-gmp, mkDerivation, stdenv }:
      mkDerivation {
          pname = "integer-logarithms";
          version = "1.0.2";
          sha256 = "31069ccbff489baf6c4a93cb7475640aabea9366eb0b583236f10714a682b570";
          revision = "1";
          editedCabalFile = "0sccd0d6qrcm3a7nni5lqv40g5m5knf965z4skkgbyyhb3z6qsq8";
          libraryHaskellDepends = [
            array
            base
            ghc-prim
            integer-gmp
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/phadej/integer-logarithms";
          description = "Integer logarithms";
          license = stdenv.lib.licenses.mit;
        }) {};
      iproute = callPackage ({ appar, base, byteorder, containers, mkDerivation, network, stdenv }:
      mkDerivation {
          pname = "iproute";
          version = "1.7.1";
          sha256 = "57b8d03ca8ce92f8ec1334564f3edff53a0621ccbc43c00ba02eaa5007ee3eee";
          libraryHaskellDepends = [
            appar
            base
            byteorder
            containers
            network
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://www.mew.org/~kazu/proj/iproute/";
          description = "IP Routing Table";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      jailbreak-cabal = callPackage ({ Cabal, base, mkDerivation, stdenv }:
      mkDerivation {
          pname = "jailbreak-cabal";
          version = "1.3.3";
          sha256 = "6bac08ad1a1ff7452a2963272f96f5de0a3df200fb3219dde6ee93e4963dd01c";
          isLibrary = false;
          isExecutable = true;
          executableHaskellDepends = [
            base
            Cabal
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/peti/jailbreak-cabal#readme";
          description = "Strip version restrictions from Cabal files";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      js-flot = callPackage ({ base, mkDerivation, stdenv }:
      mkDerivation {
          pname = "js-flot";
          version = "0.8.3";
          sha256 = "1ba2f2a6b8d85da76c41f526c98903cbb107f8642e506c072c1e7e3c20fe5e7a";
          enableSeparateDataOutput = true;
          libraryHaskellDepends = [
            base
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/ndmitchell/js-flot#readme";
          description = "Obtain minified flot code";
          license = stdenv.lib.licenses.mit;
        }) {};
      js-jquery = callPackage ({ base, mkDerivation, stdenv }:
      mkDerivation {
          pname = "js-jquery";
          version = "3.2.1";
          sha256 = "60503d82d0a601291cf0aa495edecbdb749dcf8982502bf18b9a886979ac1e0f";
          enableSeparateDataOutput = true;
          libraryHaskellDepends = [
            base
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/ndmitchell/js-jquery#readme";
          description = "Obtain minified jQuery code";
          license = stdenv.lib.licenses.mit;
        }) {};
      kan-extensions = callPackage ({ adjunctions, array, base, comonad, containers, contravariant, distributive, fail, free, mkDerivation, mtl, semigroupoids, stdenv, tagged, transformers }:
      mkDerivation {
          pname = "kan-extensions";
          version = "5.0.2";
          sha256 = "1c9ede8595424209944e59fd46c1d2edb654758be9a45c1c48a4d3cedf42482e";
          libraryHaskellDepends = [
            adjunctions
            array
            base
            comonad
            containers
            contravariant
            distributive
            fail
            free
            mtl
            semigroupoids
            tagged
            transformers
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/ekmett/kan-extensions/";
          description = "Kan extensions, Kan lifts, various forms of the Yoneda lemma, and (co)density (co)monads";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      lens = callPackage ({ Cabal, array, base, base-orphans, bifunctors, bytestring, cabal-doctest, call-stack, comonad, containers, contravariant, distributive, exceptions, filepath, free, ghc-prim, hashable, kan-extensions, mkDerivation, mtl, parallel, profunctors, reflection, semigroupoids, semigroups, stdenv, tagged, template-haskell, text, th-abstraction, transformers, transformers-compat, unordered-containers, vector, void }:
      mkDerivation {
          pname = "lens";
          version = "4.15.4";
          sha256 = "742e7b87d7945e3d9c1d39d3f8440094c0a31cd098f06a08f8dabefba0a57cd2";
          setupHaskellDepends = [
            base
            Cabal
            cabal-doctest
            filepath
          ];
          libraryHaskellDepends = [
            array
            base
            base-orphans
            bifunctors
            bytestring
            call-stack
            comonad
            containers
            contravariant
            distributive
            exceptions
            filepath
            free
            ghc-prim
            hashable
            kan-extensions
            mtl
            parallel
            profunctors
            reflection
            semigroupoids
            semigroups
            tagged
            template-haskell
            text
            th-abstraction
            transformers
            transformers-compat
            unordered-containers
            vector
            void
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/ekmett/lens/";
          description = "Lenses, Folds and Traversals";
          license = stdenv.lib.licenses.bsd2;
        }) {};
      lens-aeson = callPackage ({ Cabal, aeson, attoparsec, base, bytestring, cabal-doctest, lens, mkDerivation, scientific, stdenv, text, unordered-containers, vector }:
      mkDerivation {
          pname = "lens-aeson";
          version = "1.0.2";
          sha256 = "4311f035caa39db3a70915a165bcbfb55ad22376085d95a9b4f57c58994702cc";
          revision = "4";
          editedCabalFile = "1gas30rarvr8337a06z089m3dp5kvdcvhyac2mrp5pjlfp4zz226";
          setupHaskellDepends = [
            base
            Cabal
            cabal-doctest
          ];
          libraryHaskellDepends = [
            aeson
            attoparsec
            base
            bytestring
            lens
            scientific
            text
            unordered-containers
            vector
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/lens/lens-aeson/";
          description = "Law-abiding lenses for aeson";
          license = stdenv.lib.licenses.mit;
        }) {};
      lifted-base = callPackage ({ base, mkDerivation, monad-control, stdenv, transformers-base }:
      mkDerivation {
          pname = "lifted-base";
          version = "0.2.3.11";
          sha256 = "8ec47a9fce7cf5913766a5c53e1b2cf254be733fa9d62e6e2f3f24e538005aab";
          revision = "1";
          editedCabalFile = "0vrik0j1xv2yp759ffa7jb7q838z4wglnbgsrja97mx0dwsbavnx";
          libraryHaskellDepends = [
            base
            monad-control
            transformers-base
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/basvandijk/lifted-base";
          description = "lifted IO operations from the base library";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      lzma = callPackage ({ base, bytestring, lzma, mkDerivation, stdenv }:
      mkDerivation {
          pname = "lzma";
          version = "0.0.0.3";
          sha256 = "af8321c3511bde3e2745093fa3bd74c642e386db7d2e7c43b3a54814f1338144";
          revision = "2";
          editedCabalFile = "0c6jkr22w797jvmad9vki2mm7cdzxpqqxkpv836fh5m248nnc618";
          libraryHaskellDepends = [
            base
            bytestring
          ];
          librarySystemDepends = [ lzma ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/hvr/lzma";
          description = "LZMA/XZ compression and decompression";
          license = stdenv.lib.licenses.bsd3;
        }) { lzma = pkgs.lzma; };
      math-functions = callPackage ({ base, deepseq, mkDerivation, primitive, stdenv, vector, vector-th-unbox }:
      mkDerivation {
          pname = "math-functions";
          version = "0.2.1.0";
          sha256 = "f71b5598de453546396a3f5f7f6ce877fffcc996639b7569d8628cae97da65eb";
          libraryHaskellDepends = [
            base
            deepseq
            primitive
            vector
            vector-th-unbox
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/bos/math-functions";
          description = "Special functions and Chebyshev polynomials";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      memory = callPackage ({ base, basement, bytestring, deepseq, foundation, ghc-prim, mkDerivation, stdenv }:
      mkDerivation {
          pname = "memory";
          version = "0.14.11";
          sha256 = "674cf05ccf238c8ba0aa1673da3132c4f573163dd9a21b9f5e1fb938322add4c";
          libraryHaskellDepends = [
            base
            basement
            bytestring
            deepseq
            foundation
            ghc-prim
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/vincenthz/hs-memory";
          description = "memory and related abstraction stuff";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      microstache = callPackage ({ aeson, base, bytestring, containers, deepseq, directory, filepath, mkDerivation, parsec, stdenv, text, transformers, unordered-containers, vector }:
      mkDerivation {
          pname = "microstache";
          version = "1.0.1.1";
          sha256 = "5de98542313eb75f84961366ff8a70ed632387ba6518215035b2dd1b32d6a120";
          revision = "1";
          editedCabalFile = "1var5mgzvkxl9s78hbxylkvv67z7fnbs5rb1l9q0cqxyw85cbr6j";
          libraryHaskellDepends = [
            aeson
            base
            bytestring
            containers
            deepseq
            directory
            filepath
            parsec
            text
            transformers
            unordered-containers
            vector
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/phadej/microstache";
          description = "Mustache templates for Haskell";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      mime-types = callPackage ({ base, bytestring, containers, mkDerivation, stdenv, text }:
      mkDerivation {
          pname = "mime-types";
          version = "0.1.0.7";
          sha256 = "83164a24963a7ef37543349df095155b30116c208e602a159a5cd3722f66e9b9";
          libraryHaskellDepends = [
            base
            bytestring
            containers
            text
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/yesodweb/wai";
          description = "Basic mime-type handling types and functions";
          license = stdenv.lib.licenses.mit;
        }) {};
      mmap = callPackage ({ base, bytestring, mkDerivation, stdenv }:
      mkDerivation {
          pname = "mmap";
          version = "0.5.9";
          sha256 = "58fcbb04e1cb8e7c36c05823b02dce2faaa989c53d745a7f36192de2fc98b5f8";
          isLibrary = true;
          isExecutable = true;
          libraryHaskellDepends = [
            base
            bytestring
          ];
          doHaddock = false;
          doCheck = false;
          description = "Memory mapped files for POSIX and Windows";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      mmorph = callPackage ({ base, mkDerivation, mtl, stdenv, transformers, transformers-compat }:
      mkDerivation {
          pname = "mmorph";
          version = "1.1.0";
          sha256 = "c1bcb45560753203f5ce3952f3c8a100b7d5b37c91746372c1da4988c4db74de";
          revision = "1";
          editedCabalFile = "0ppf6icblgrmiaa09s2plg1m2818pp2l9rd7c821q0zq266v79wi";
          libraryHaskellDepends = [
            base
            mtl
            transformers
            transformers-compat
          ];
          doHaddock = false;
          doCheck = false;
          description = "Monad morphisms";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      monad-control = callPackage ({ base, mkDerivation, stdenv, stm, transformers, transformers-base, transformers-compat }:
      mkDerivation {
          pname = "monad-control";
          version = "1.0.2.2";
          sha256 = "1e34a21d123f2ed8bb2708e7f30343fa1d9d7f36881f9871cbcca4bb07e7e433";
          libraryHaskellDepends = [
            base
            stm
            transformers
            transformers-base
            transformers-compat
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/basvandijk/monad-control";
          description = "Lift control operations, like exception catching, through monad transformers";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      monad-par = callPackage ({ abstract-deque, abstract-par, array, base, containers, deepseq, mkDerivation, monad-par-extras, mtl, mwc-random, parallel, stdenv }:
      mkDerivation {
          pname = "monad-par";
          version = "0.3.4.8";
          sha256 = "f84cdf51908a1c41c3f672be9520a8fdc028ea39d90a25ecfe5a3b223cfeb951";
          libraryHaskellDepends = [
            abstract-deque
            abstract-par
            array
            base
            containers
            deepseq
            monad-par-extras
            mtl
            mwc-random
            parallel
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/simonmar/monad-par";
          description = "A library for parallel programming based on a monad";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      monad-par-extras = callPackage ({ abstract-par, base, cereal, deepseq, mkDerivation, mtl, random, stdenv, transformers }:
      mkDerivation {
          pname = "monad-par-extras";
          version = "0.3.3";
          sha256 = "e21e33190bc248afa4ae467287ac37d24037ef3de6050c44fd85b52f4d5b842e";
          libraryHaskellDepends = [
            abstract-par
            base
            cereal
            deepseq
            mtl
            random
            transformers
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/simonmar/monad-par";
          description = "Combinators and extra features for Par monads";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      mtl = callPackage ({ base, mkDerivation, stdenv, transformers }:
      mkDerivation {
          pname = "mtl";
          version = "2.2.1";
          sha256 = "cae59d79f3a16f8e9f3c9adc1010c7c6cdddc73e8a97ff4305f6439d855c8dc5";
          revision = "1";
          editedCabalFile = "0fsa965g9h23mlfjzghmmhcb9dmaq8zpm374gby6iwgdx47q0njb";
          libraryHaskellDepends = [
            base
            transformers
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/ekmett/mtl";
          description = "Monad classes, using functional dependencies";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      mwc-random = callPackage ({ base, math-functions, mkDerivation, primitive, stdenv, time, vector }:
      mkDerivation {
          pname = "mwc-random";
          version = "0.13.6.0";
          sha256 = "065f334fc13c057eb03ef0b6aa3665ff193609d9bfcad8068bdd260801f44716";
          libraryHaskellDepends = [
            base
            math-functions
            primitive
            time
            vector
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/bos/mwc-random";
          description = "Fast, high quality pseudo random number generation";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      network = callPackage ({ base, bytestring, mkDerivation, stdenv, unix }:
      mkDerivation {
          pname = "network";
          version = "2.6.3.3";
          sha256 = "776668b0a969d0d57ebabf78943cfc21a1aaf7e5e2ae6288322292125c9440f5";
          revision = "1";
          editedCabalFile = "0nh9sbbyj3jdm2ybffsxa3c4mdywy3wq48sg8d5ylkr2s6cmbbpz";
          libraryHaskellDepends = [
            base
            bytestring
            unix
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/haskell/network";
          description = "Low-level networking interface";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      network-uri = callPackage ({ base, deepseq, mkDerivation, parsec, stdenv }:
      mkDerivation {
          pname = "network-uri";
          version = "2.6.1.0";
          sha256 = "423e0a2351236f3fcfd24e39cdbc38050ec2910f82245e69ca72a661f7fc47f0";
          revision = "1";
          editedCabalFile = "141nj7q0p9wkn5gr41ayc63cgaanr9m59yym47wpxqr3c334bk32";
          libraryHaskellDepends = [
            base
            deepseq
            parsec
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/haskell/network-uri";
          description = "URI manipulation";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      old-locale = callPackage ({ base, mkDerivation, stdenv }:
      mkDerivation {
          pname = "old-locale";
          version = "1.0.0.7";
          sha256 = "dbaf8bf6b888fb98845705079296a23c3f40ee2f449df7312f7f7f1de18d7b50";
          revision = "2";
          editedCabalFile = "04b9vn007hlvsrx4ksd3r8r3kbyaj2kvwxchdrmd4370qzi8p6gs";
          libraryHaskellDepends = [
            base
          ];
          doHaddock = false;
          doCheck = false;
          description = "locale library";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      old-time = callPackage ({ base, mkDerivation, old-locale, stdenv }:
      mkDerivation {
          pname = "old-time";
          version = "1.1.0.3";
          sha256 = "1ccb158b0f7851715d36b757c523b026ca1541e2030d02239802ba39b4112bc1";
          revision = "2";
          editedCabalFile = "1j6ln1dkvhdvnwl33bp0xf9lhc4sybqk0aw42p8cq81xwwzbn7y9";
          libraryHaskellDepends = [
            base
            old-locale
          ];
          doHaddock = false;
          doCheck = false;
          description = "Time library";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      optparse-applicative = callPackage ({ ansi-wl-pprint, base, mkDerivation, process, stdenv, transformers, transformers-compat }:
      mkDerivation {
          pname = "optparse-applicative";
          version = "0.14.0.0";
          sha256 = "b55b32fdd5d101b2d6edb2746a66648fc2cd1b850d7adea185f201ac71b83c1a";
          libraryHaskellDepends = [
            ansi-wl-pprint
            base
            process
            transformers
            transformers-compat
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/pcapriotti/optparse-applicative";
          description = "Utilities and combinators for parsing command line options";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      parallel = callPackage ({ array, base, containers, deepseq, mkDerivation, stdenv }:
      mkDerivation {
          pname = "parallel";
          version = "3.2.1.1";
          sha256 = "323bb9bc9e36fb9bfb08e68a772411302b1599bfffbc6de20fa3437ce1473c17";
          revision = "1";
          editedCabalFile = "12sgigg7r4nmyhbfn1p09ajf4s576yca31b7daj5zpp1mxgb5x7i";
          libraryHaskellDepends = [
            array
            base
            containers
            deepseq
          ];
          doHaddock = false;
          doCheck = false;
          description = "Parallel programming library";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      parsec = callPackage ({ base, bytestring, mkDerivation, mtl, stdenv, text }:
      mkDerivation {
          pname = "parsec";
          version = "3.1.11";
          sha256 = "6f87251cb1d11505e621274dec15972de924a9074f07f7430a18892064c2676e";
          revision = "1";
          editedCabalFile = "0prqjj2gxlwh2qhpcck5k6cgk4har9xqxc67yzjqd44mr2xgl7ir";
          libraryHaskellDepends = [
            base
            bytestring
            mtl
            text
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/aslatter/parsec";
          description = "Monadic parser combinators";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      pem = callPackage ({ base, base64-bytestring, bytestring, mkDerivation, mtl, stdenv }:
      mkDerivation {
          pname = "pem";
          version = "0.2.2";
          sha256 = "372808c76c6d860aedb4e30171cb4ee9f6154d9f68e3f2310f820bf174995a98";
          enableSeparateDataOutput = true;
          libraryHaskellDepends = [
            base
            base64-bytestring
            bytestring
            mtl
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/vincenthz/hs-pem";
          description = "Privacy Enhanced Mail (PEM) format reader and writer";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      polyparse = callPackage ({ base, bytestring, mkDerivation, stdenv, text }:
      mkDerivation {
          pname = "polyparse";
          version = "1.12";
          sha256 = "f54c63584ace968381de4a06bd7328b6adc3e1a74fd336e18449e0dd7650be15";
          libraryHaskellDepends = [
            base
            bytestring
            text
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://code.haskell.org/~malcolm/polyparse/";
          description = "A variety of alternative parser combinator libraries";
          license = "LGPL";
        }) {};
      prelude-extras = callPackage ({ base, mkDerivation, stdenv }:
      mkDerivation {
          pname = "prelude-extras";
          version = "0.4.0.3";
          sha256 = "09bb087f0870a353ec1e7e1a08017b9a766d430d956afb88ca000a6a876bf877";
          libraryHaskellDepends = [
            base
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/ekmett/prelude-extras";
          description = "Higher order versions of Prelude classes";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      pretty = callPackage ({ base, deepseq, ghc-prim, mkDerivation, stdenv }:
      mkDerivation {
          pname = "pretty";
          version = "1.1.3.3";
          sha256 = "3b632679f51cc709ec96e51c6a03bbc1ded8dbc5c8ea3fda75501cf7962f9798";
          libraryHaskellDepends = [
            base
            deepseq
            ghc-prim
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/haskell/pretty";
          description = "Pretty-printing library";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      primitive = callPackage ({ base, ghc-prim, mkDerivation, stdenv, transformers }:
      mkDerivation {
          pname = "primitive";
          version = "0.6.3.0";
          sha256 = "cddeff804e0f577f1be0179d5d145dfc170f8bfb66f663b9fba67104a45d9555";
          libraryHaskellDepends = [
            base
            ghc-prim
            transformers
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/haskell/primitive";
          description = "Primitive memory-related operations";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      process = callPackage ({ base, deepseq, directory, filepath, mkDerivation, stdenv, unix }:
      mkDerivation {
          pname = "process";
          version = "1.4.3.0";
          sha256 = "5473f4d20a19c3ba448ace7d4d01ec821ad531574c23934fd3c55627f5a7f0eb";
          libraryHaskellDepends = [
            base
            deepseq
            directory
            filepath
            unix
          ];
          doHaddock = false;
          doCheck = false;
          description = "Process libraries";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      process-extras = callPackage ({ ListLike, base, bytestring, data-default, deepseq, generic-deriving, mkDerivation, mtl, process, stdenv, text }:
      mkDerivation {
          pname = "process-extras";
          version = "0.7.3";
          sha256 = "eb73057d4518b6ccd9c77f04de14e672abf9cbc0a2359ab2a178dbd8c4c7d943";
          libraryHaskellDepends = [
            base
            bytestring
            data-default
            deepseq
            generic-deriving
            ListLike
            mtl
            process
            text
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/seereason/process-extras";
          description = "Process extras";
          license = stdenv.lib.licenses.mit;
        }) {};
      profunctors = callPackage ({ base, base-orphans, bifunctors, comonad, contravariant, distributive, mkDerivation, semigroups, stdenv, tagged, transformers }:
      mkDerivation {
          pname = "profunctors";
          version = "5.2.2";
          sha256 = "e981e6a33ac99d38a947a749179bbea3c294ecf6bfde41660fe6d8d5a2e43768";
          revision = "1";
          editedCabalFile = "1g6fvxq2npnyi8wv9mvwy35an68lrm5bf7xmx9x61mbwdxb6d0cg";
          libraryHaskellDepends = [
            base
            base-orphans
            bifunctors
            comonad
            contravariant
            distributive
            semigroups
            tagged
            transformers
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/ekmett/profunctors/";
          description = "Profunctors";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      psqueues = callPackage ({ base, deepseq, ghc-prim, hashable, mkDerivation, stdenv }:
      mkDerivation {
          pname = "psqueues";
          version = "0.2.5.0";
          sha256 = "163fe7220b157a535c278ef3b92deddf8abc3ae3a3fcb6f2c4e58959a9cbc2bb";
          libraryHaskellDepends = [
            base
            deepseq
            ghc-prim
            hashable
          ];
          doHaddock = false;
          doCheck = false;
          description = "Pure priority search queues";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      random = callPackage ({ base, mkDerivation, stdenv, time }:
      mkDerivation {
          pname = "random";
          version = "1.1";
          sha256 = "b718a41057e25a3a71df693ab0fe2263d492e759679b3c2fea6ea33b171d3a5a";
          revision = "1";
          editedCabalFile = "1pv5d7bm2rgap7llp5vjsplrg048gvf0226y0v19gpvdsx7n4rvv";
          libraryHaskellDepends = [
            base
            time
          ];
          doHaddock = false;
          doCheck = false;
          description = "random number library";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      reflection = callPackage ({ base, mkDerivation, stdenv, template-haskell }:
      mkDerivation {
          pname = "reflection";
          version = "2.1.3";
          sha256 = "88f81923abd7211e51de7071cd5800b30784e374c193de8cdd7b1c201f8de405";
          libraryHaskellDepends = [
            base
            template-haskell
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/ekmett/reflection";
          description = "Reifies arbitrary terms into types that can be reflected back into terms";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      regex-base = callPackage ({ array, base, bytestring, containers, mkDerivation, mtl, stdenv }:
      mkDerivation {
          pname = "regex-base";
          version = "0.93.2";
          sha256 = "20dc5713a16f3d5e2e6d056b4beb9cfdc4368cd09fd56f47414c847705243278";
          libraryHaskellDepends = [
            array
            base
            bytestring
            containers
            mtl
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://sourceforge.net/projects/lazy-regex";
          description = "Replaces/Enhances Text.Regex";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      regex-compat = callPackage ({ array, base, mkDerivation, regex-base, regex-posix, stdenv }:
      mkDerivation {
          pname = "regex-compat";
          version = "0.95.1";
          sha256 = "d57cb1a5a4d66753b18eaa37a1621246f660472243b001894f970037548d953b";
          libraryHaskellDepends = [
            array
            base
            regex-base
            regex-posix
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://sourceforge.net/projects/lazy-regex";
          description = "Replaces/Enhances Text.Regex";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      regex-pcre = callPackage ({ array, base, bytestring, containers, mkDerivation, pcre, regex-base, stdenv }:
      mkDerivation {
          pname = "regex-pcre";
          version = "0.94.4";
          sha256 = "8eaa7d4ac6c0a4ba35aa59fc3f6b8f8e252bb25a47e136791446a74752e226c0";
          libraryHaskellDepends = [
            array
            base
            bytestring
            containers
            regex-base
          ];
          librarySystemDepends = [ pcre ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://hackage.haskell.org/package/regex-pcre";
          description = "Replaces/Enhances Text.Regex";
          license = stdenv.lib.licenses.bsd3;
        }) { pcre = pkgs.pcre; };
      regex-posix = callPackage ({ array, base, bytestring, containers, mkDerivation, regex-base, stdenv }:
      mkDerivation {
          pname = "regex-posix";
          version = "0.95.2";
          sha256 = "56019921cd4a4c9682b81ec614236fea816ba8ed8785a1640cd66d8b24fc703e";
          libraryHaskellDepends = [
            array
            base
            bytestring
            containers
            regex-base
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://sourceforge.net/projects/lazy-regex";
          description = "Replaces/Enhances Text.Regex";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      resourcet = callPackage ({ base, containers, exceptions, lifted-base, mkDerivation, mmorph, monad-control, mtl, stdenv, transformers, transformers-base, transformers-compat, unliftio-core }:
      mkDerivation {
          pname = "resourcet";
          version = "1.1.11";
          sha256 = "346ed5c3eca87e1b2df5ca97419bd896e27ad39d997b8eea5b62f67c98a824d9";
          libraryHaskellDepends = [
            base
            containers
            exceptions
            lifted-base
            mmorph
            monad-control
            mtl
            transformers
            transformers-base
            transformers-compat
            unliftio-core
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/snoyberg/conduit";
          description = "Deterministic allocation and freeing of scarce resources";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      safe = callPackage ({ base, mkDerivation, stdenv }:
      mkDerivation {
          pname = "safe";
          version = "0.3.15";
          sha256 = "a35e4ae609aabd568da7e7d220ab529c34040b71ae50df1ee353896445a66a2d";
          libraryHaskellDepends = [
            base
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/ndmitchell/safe#readme";
          description = "Library of safe (exception free) functions";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      scientific = callPackage ({ base, binary, bytestring, containers, deepseq, hashable, integer-gmp, integer-logarithms, mkDerivation, primitive, stdenv, text }:
      mkDerivation {
          pname = "scientific";
          version = "0.3.5.2";
          sha256 = "5ce479ff95482fb907267516bd0f8fff450bdeea546bbd1267fe035acf975657";
          revision = "5";
          editedCabalFile = "19rrdna5f75rc21x6wr9m6x9h7776qbmi4z1cwwipfpij8hah54n";
          libraryHaskellDepends = [
            base
            binary
            bytestring
            containers
            deepseq
            hashable
            integer-gmp
            integer-logarithms
            primitive
            text
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/basvandijk/scientific";
          description = "Numbers represented using scientific notation";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      semigroupoids = callPackage ({ Cabal, base, base-orphans, bifunctors, cabal-doctest, comonad, containers, contravariant, distributive, hashable, mkDerivation, semigroups, stdenv, tagged, transformers, transformers-compat, unordered-containers }:
      mkDerivation {
          pname = "semigroupoids";
          version = "5.2.1";
          sha256 = "79e41eb7cbcb4f152343b91243feac0a120375284c1207edaa73b23d8df6d200";
          revision = "4";
          editedCabalFile = "0izc33v2n2321hc4ssr1b8fj85i91ca6c99w1qhdqnnp1sank7sk";
          setupHaskellDepends = [
            base
            Cabal
            cabal-doctest
          ];
          libraryHaskellDepends = [
            base
            base-orphans
            bifunctors
            comonad
            containers
            contravariant
            distributive
            hashable
            semigroups
            tagged
            transformers
            transformers-compat
            unordered-containers
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/ekmett/semigroupoids";
          description = "Semigroupoids: Category sans id";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      semigroups = callPackage ({ base, mkDerivation, stdenv }:
      mkDerivation {
          pname = "semigroups";
          version = "0.18.3";
          sha256 = "35297c986872406e2efe29620c623727369f8c578e2f9c22998d575996e5a9ca";
          libraryHaskellDepends = [
            base
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/ekmett/semigroups/";
          description = "Anything that associates";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      simple-sendfile = callPackage ({ base, bytestring, mkDerivation, network, stdenv, unix }:
      mkDerivation {
          pname = "simple-sendfile";
          version = "0.2.26";
          sha256 = "df60ccc104ce5252cf873ee1ec39de3f7dd01a05f05b98d3e63c79b9c249597c";
          libraryHaskellDepends = [
            base
            bytestring
            network
            unix
          ];
          doHaddock = false;
          doCheck = false;
          description = "Cross platform library for the sendfile system call";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      socks = callPackage ({ base, bytestring, cereal, mkDerivation, network, stdenv }:
      mkDerivation {
          pname = "socks";
          version = "0.5.6";
          sha256 = "fa63cd838025e18864c59755750c0cfc4ea76e140a542f07a5c682488ec78438";
          libraryHaskellDepends = [
            base
            bytestring
            cereal
            network
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/vincenthz/hs-socks";
          description = "Socks proxy (ver 5)";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      statistics = callPackage ({ aeson, base, base-orphans, binary, deepseq, erf, math-functions, mkDerivation, monad-par, mwc-random, primitive, stdenv, vector, vector-algorithms, vector-binary-instances, vector-th-unbox }:
      mkDerivation {
          pname = "statistics";
          version = "0.14.0.2";
          sha256 = "3495df2da42c9fcc5b594b97f16c02353bfd6616d6e134ac031dac389d7a4778";
          revision = "1";
          editedCabalFile = "0gg7hq8qvbnhp7lnrykh401ggr51izffylgdmy6nip2a81q9dxi0";
          libraryHaskellDepends = [
            aeson
            base
            base-orphans
            binary
            deepseq
            erf
            math-functions
            monad-par
            mwc-random
            primitive
            vector
            vector-algorithms
            vector-binary-instances
            vector-th-unbox
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/bos/statistics";
          description = "A library of statistical types, data, and functions";
          license = stdenv.lib.licenses.bsd2;
        }) {};
      stm = callPackage ({ array, base, mkDerivation, stdenv }:
      mkDerivation {
          pname = "stm";
          version = "2.4.4.1";
          sha256 = "8f999095ed8d50d2056fc6e185035ee8166c50751e1af8de02ac38d382bf3384";
          revision = "1";
          editedCabalFile = "0kzw4rw9fgmc4qyxmm1lwifdyrx5r1356150xm14vy4mp86diks9";
          libraryHaskellDepends = [
            array
            base
          ];
          doHaddock = false;
          doCheck = false;
          description = "Software Transactional Memory";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      storable-record = callPackage ({ base, mkDerivation, stdenv, transformers, utility-ht }:
      mkDerivation {
          pname = "storable-record";
          version = "0.0.3.1";
          sha256 = "74e5ceee49e0b7625d13759597d21e714843406b8b80e9168a0bb1199ffdadba";
          isLibrary = true;
          isExecutable = true;
          libraryHaskellDepends = [
            base
            transformers
            utility-ht
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://code.haskell.org/~thielema/storable-record/";
          description = "Elegant definition of Storable instances for records";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      storable-tuple = callPackage ({ base, base-orphans, mkDerivation, stdenv, storable-record, utility-ht }:
      mkDerivation {
          pname = "storable-tuple";
          version = "0.0.3.3";
          sha256 = "dcfac049527a45c386c80a7c40ec211455b83d74311af88fa686063b5f87df35";
          libraryHaskellDepends = [
            base
            base-orphans
            storable-record
            utility-ht
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://code.haskell.org/~thielema/storable-tuple/";
          description = "Storable instance for pairs and triples";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      streaming-commons = callPackage ({ array, async, base, blaze-builder, bytestring, directory, mkDerivation, network, process, random, stdenv, stm, text, transformers, unix, zlib }:
      mkDerivation {
          pname = "streaming-commons";
          version = "0.1.18";
          sha256 = "27af2efb901a003c83fc6c71563eb70f45b4823516c299759d800a48d9f083cb";
          libraryHaskellDepends = [
            array
            async
            base
            blaze-builder
            bytestring
            directory
            network
            process
            random
            stm
            text
            transformers
            unix
            zlib
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/fpco/streaming-commons";
          description = "Common lower-level functions needed by various streaming data libraries";
          license = stdenv.lib.licenses.mit;
        }) {};
      stringbuilder = callPackage ({ base, mkDerivation, stdenv }:
      mkDerivation {
          pname = "stringbuilder";
          version = "0.5.1";
          sha256 = "d878bdc4da806dbce5ab684ef13d2634c17c15b991d0ed3bb25a331eba6603ba";
          libraryHaskellDepends = [
            base
          ];
          doHaddock = false;
          doCheck = false;
          description = "A writer monad for multi-line string literals";
          license = stdenv.lib.licenses.mit;
        }) {};
      syb = callPackage ({ base, mkDerivation, stdenv }:
      mkDerivation {
          pname = "syb";
          version = "0.7";
          sha256 = "b8757dce5ab4045c49a0ae90407d575b87ee5523a7dd5dfa5c9d54fcceff42b5";
          libraryHaskellDepends = [
            base
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://www.cs.uu.nl/wiki/GenericProgramming/SYB";
          description = "Scrap Your Boilerplate";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      tagged = callPackage ({ base, deepseq, mkDerivation, stdenv, template-haskell, transformers, transformers-compat }:
      mkDerivation {
          pname = "tagged";
          version = "0.8.5";
          sha256 = "e47c51c955ed77b0fa36897f652df990aa0a8c4eb278efaddcd604be00fc8d99";
          revision = "2";
          editedCabalFile = "0r2knfcq0b4s652vlvlnfwxlc2mkc2ra9kl8bp4zdn1awmfy0ia5";
          libraryHaskellDepends = [
            base
            deepseq
            template-haskell
            transformers
            transformers-compat
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/ekmett/tagged";
          description = "Haskell 98 phantom types to avoid unsafely passing dummy arguments";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      tar = callPackage ({ array, base, bytestring, containers, deepseq, directory, filepath, mkDerivation, stdenv, time }:
      mkDerivation {
          pname = "tar";
          version = "0.5.0.3";
          sha256 = "d8d9ad876365f88bdccd02073049e58715cd5ba94de06eb98e21d595244918a3";
          libraryHaskellDepends = [
            array
            base
            bytestring
            containers
            deepseq
            directory
            filepath
            time
          ];
          doHaddock = false;
          doCheck = false;
          description = "Reading, writing and manipulating \".tar\" archive files.";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      template-haskell = callPackage ({ base, ghc-boot-th, mkDerivation, pretty, stdenv }:
      mkDerivation {
          pname = "template-haskell";
          version = "2.12.0.0";
          sha256 = "5935130da92bcb41842ae725501e981c1daf44b8a535cc6b92b94d3b9fc27551";
          libraryHaskellDepends = [
            base
            ghc-boot-th
            pretty
          ];
          doHaddock = false;
          doCheck = false;
          description = "Support library for Template Haskell";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      temporary = callPackage ({ base, directory, exceptions, filepath, mkDerivation, stdenv, transformers, unix }:
      mkDerivation {
          pname = "temporary";
          version = "1.2.1.1";
          sha256 = "55772471e59529f4bde9555f6abb21d19a611c7d70b13befe114dc1a0ecb00f3";
          libraryHaskellDepends = [
            base
            directory
            exceptions
            filepath
            transformers
            unix
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/feuerbach/temporary";
          description = "Portable temporary file and directory support";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      text = callPackage ({ array, base, binary, bytestring, deepseq, ghc-prim, integer-gmp, mkDerivation, stdenv }:
      mkDerivation {
          pname = "text";
          version = "1.2.2.2";
          sha256 = "31465106360a7d7e214d96f1d1b4303a113ffce1bde44a4e614053a1e5072df9";
          libraryHaskellDepends = [
            array
            base
            binary
            bytestring
            deepseq
            ghc-prim
            integer-gmp
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/bos/text";
          description = "An efficient packed Unicode text type";
          license = stdenv.lib.licenses.bsd2;
        }) {};
      text-short = callPackage ({ base, binary, bytestring, deepseq, hashable, mkDerivation, stdenv, text }:
      mkDerivation {
          pname = "text-short";
          version = "0.1.1";
          sha256 = "55eff9f33471393bfc9b12a790e18e9170c8f1c668359b8f781be31eac1521b1";
          libraryHaskellDepends = [
            base
            binary
            bytestring
            deepseq
            hashable
            text
          ];
          doHaddock = false;
          doCheck = false;
          description = "Memory-efficient representation of Unicode text strings";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      tf-random = callPackage ({ base, mkDerivation, primitive, random, stdenv, time }:
      mkDerivation {
          pname = "tf-random";
          version = "0.5";
          sha256 = "2e30cec027b313c9e1794d326635d8fc5f79b6bf6e7580ab4b00186dadc88510";
          libraryHaskellDepends = [
            base
            primitive
            random
            time
          ];
          doHaddock = false;
          doCheck = false;
          description = "High-quality splittable pseudorandom number generator";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      th-abstraction = callPackage ({ base, containers, ghc-prim, mkDerivation, stdenv, template-haskell }:
      mkDerivation {
          pname = "th-abstraction";
          version = "0.2.6.0";
          sha256 = "e52e289a547d68f203d65f2e63ec2d87a3c613007d2fe873615c0969b981823c";
          revision = "1";
          editedCabalFile = "0k4s4nbg9jlgaza38842jnzs8s01ig85fzmjgd10k9hl02gc3r44";
          libraryHaskellDepends = [
            base
            containers
            ghc-prim
            template-haskell
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/glguy/th-abstraction";
          description = "Nicer interface for reified information about data types";
          license = stdenv.lib.licenses.isc;
        }) {};
      time = callPackage ({ base, deepseq, mkDerivation, stdenv }:
      mkDerivation {
          pname = "time";
          version = "1.8.0.2";
          sha256 = "40642d965caca8c18950f0812e88ae061aa670fc2b3a8bf70e95b74927f11095";
          libraryHaskellDepends = [
            base
            deepseq
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/haskell/time";
          description = "A time library";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      time-locale-compat = callPackage ({ base, mkDerivation, old-locale, stdenv, time }:
      mkDerivation {
          pname = "time-locale-compat";
          version = "0.1.1.3";
          sha256 = "9144bf68b47791a2ac73f45aeadbc5910be2da9ad174909e1a10a70b4576aced";
          libraryHaskellDepends = [
            base
            old-locale
            time
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/khibino/haskell-time-locale-compat";
          description = "Compatibility of TimeLocale between old-locale and time-1.5";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      tls = callPackage ({ asn1-encoding, asn1-types, async, base, bytestring, cereal, cryptonite, data-default-class, memory, mkDerivation, mtl, network, stdenv, transformers, x509, x509-store, x509-validation }:
      mkDerivation {
          pname = "tls";
          version = "1.4.0";
          sha256 = "83290896640403b167d3ae4ea6075f69565a98a5198049a6d98ec35d6bf417ba";
          libraryHaskellDepends = [
            asn1-encoding
            asn1-types
            async
            base
            bytestring
            cereal
            cryptonite
            data-default-class
            memory
            mtl
            network
            transformers
            x509
            x509-store
            x509-validation
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/vincenthz/hs-tls";
          description = "TLS/SSL protocol native implementation (Server and Client)";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      tls-session-manager = callPackage ({ auto-update, base, clock, mkDerivation, psqueues, stdenv, tls }:
      mkDerivation {
          pname = "tls-session-manager";
          version = "0.0.0.2";
          sha256 = "c586ccfd8da578ed2174352bea1952f55fe38023e476f851d7f0ed428aa57567";
          libraryHaskellDepends = [
            auto-update
            base
            clock
            psqueues
            tls
          ];
          doHaddock = false;
          doCheck = false;
          description = "In-memory TLS session manager";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      transformers = callPackage ({ base, mkDerivation, stdenv }:
      mkDerivation {
          pname = "transformers";
          version = "0.5.2.0";
          sha256 = "6c408713a8ba7dd7a6573a4644e0c17fe11747f5bf259eab958421a7358a70e2";
          libraryHaskellDepends = [
            base
          ];
          doHaddock = false;
          doCheck = false;
          description = "Concrete functor and monad transformers";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      transformers-base = callPackage ({ base, mkDerivation, stdenv, stm, transformers, transformers-compat }:
      mkDerivation {
          pname = "transformers-base";
          version = "0.4.4";
          sha256 = "6aa3494fc70659342fbbb163035d5827ecfd8079e3c929e2372adf771fd52387";
          revision = "1";
          editedCabalFile = "196pr3a4lhgklyw6nq6rv1j9djwzmvx7xrpp58carxnb55gk06pv";
          libraryHaskellDepends = [
            base
            stm
            transformers
            transformers-compat
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/mvv/transformers-base";
          description = "Lift computations from the bottom of a transformer stack";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      transformers-compat = callPackage ({ base, ghc-prim, mkDerivation, stdenv, transformers }:
      mkDerivation {
          pname = "transformers-compat";
          version = "0.5.1.4";
          sha256 = "d881ef4ec164b631591b222efe7ff555af6d5397c9d86475b309ba9402a8ca9f";
          libraryHaskellDepends = [
            base
            ghc-prim
            transformers
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/ekmett/transformers-compat/";
          description = "A small compatibility shim exposing the new types from transformers 0.3 and 0.4 to older Haskell platforms.";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      typed-process = callPackage ({ async, base, bytestring, mkDerivation, process, stdenv, stm, transformers }:
      mkDerivation {
          pname = "typed-process";
          version = "0.2.1.0";
          sha256 = "d214d88575dc0fe919d23eacd91a212ed7bf5b1dbb4360038e99926ff9bcdcd0";
          libraryHaskellDepends = [
            async
            base
            bytestring
            process
            stm
            transformers
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://haskell-lang.org/library/typed-process";
          description = "Run external processes, with strong typing of streams";
          license = stdenv.lib.licenses.mit;
        }) {};
      uniplate = callPackage ({ base, containers, hashable, mkDerivation, stdenv, syb, unordered-containers }:
      mkDerivation {
          pname = "uniplate";
          version = "1.6.12";
          sha256 = "fcc60bc6b3f6e925f611646db90e6db9f05286a9363405f844df1dc15572a8b7";
          libraryHaskellDepends = [
            base
            containers
            hashable
            syb
            unordered-containers
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://community.haskell.org/~ndm/uniplate/";
          description = "Help writing simple, concise and fast generic operations";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      unix = callPackage ({ base, bytestring, mkDerivation, stdenv, time }:
      mkDerivation {
          pname = "unix";
          version = "2.7.2.2";
          sha256 = "98dd4eb1b28d65bb57f42acbe22076930c0ad5947f3c1459ab7b15abd57cdeac";
          revision = "1";
          editedCabalFile = "0cag1vm2pmzgy0v1j27lhp37iipck06n6gjlphpl26p5xw3gwd31";
          libraryHaskellDepends = [
            base
            bytestring
            time
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/haskell/unix";
          description = "POSIX functionality";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      unix-compat = callPackage ({ base, mkDerivation, stdenv, unix }:
      mkDerivation {
          pname = "unix-compat";
          version = "0.5.0.1";
          sha256 = "c2f299e0439c15d93d5700911c922fd2b35543c19ba053779cd52f3b051caebd";
          libraryHaskellDepends = [
            base
            unix
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/jystic/unix-compat";
          description = "Portable POSIX-compatibility layer";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      unix-time = callPackage ({ base, binary, bytestring, mkDerivation, old-time, stdenv }:
      mkDerivation {
          pname = "unix-time";
          version = "0.3.7";
          sha256 = "1131301131dd3e73353a346daa04578ec067073e7674d447051ac1a87262b4e1";
          libraryHaskellDepends = [
            base
            binary
            bytestring
            old-time
          ];
          doHaddock = false;
          doCheck = false;
          description = "Unix time parser/formatter and utilities";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      unliftio-core = callPackage ({ base, mkDerivation, stdenv, transformers }:
      mkDerivation {
          pname = "unliftio-core";
          version = "0.1.1.0";
          sha256 = "7550b017d87af53ae3e0d3b8524e24a77faf739073f35e40663454a9e9752385";
          revision = "1";
          editedCabalFile = "16bjwcsaghqqmyi69rq65dn3ydifyfaabq3ns37apdm00mwqbcj2";
          libraryHaskellDepends = [
            base
            transformers
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/fpco/unliftio/tree/master/unliftio-core#readme";
          description = "The MonadUnliftIO typeclass for unlifting monads to IO";
          license = stdenv.lib.licenses.mit;
        }) {};
      unordered-containers = callPackage ({ base, deepseq, hashable, mkDerivation, stdenv }:
      mkDerivation {
          pname = "unordered-containers";
          version = "0.2.8.0";
          sha256 = "a4a188359ff28640359131061953f7dbb8258da8ecf0542db0d23f08bfa6eea8";
          revision = "1";
          editedCabalFile = "0bllj6rg1ab468ilxzhnafjx2qzqx1bshlf207rk9yhszw801awj";
          libraryHaskellDepends = [
            base
            deepseq
            hashable
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/tibbe/unordered-containers";
          description = "Efficient hashing-based container types";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      utf8-string = callPackage ({ base, bytestring, mkDerivation, stdenv }:
      mkDerivation {
          pname = "utf8-string";
          version = "1.0.1.1";
          sha256 = "fb0b9e3acbe0605bcd1c63e51f290a7bbbe6628dfa3294ff453e4235fbaef140";
          revision = "3";
          editedCabalFile = "02vhj5gykkqa2dyn7s6gn8is1b5fdn9xcqqvlls268g7cpv6rk38";
          libraryHaskellDepends = [
            base
            bytestring
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/glguy/utf8-string/";
          description = "Support for reading and writing UTF8 Strings";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      utility-ht = callPackage ({ base, mkDerivation, stdenv }:
      mkDerivation {
          pname = "utility-ht";
          version = "0.0.14";
          sha256 = "69c2eee1330839cdff40fad4f68f8c7ce41ae3b46a9e1d575f589fcdcf7ceba8";
          libraryHaskellDepends = [
            base
          ];
          doHaddock = false;
          doCheck = false;
          description = "Various small helper functions for Lists, Maybes, Tuples, Functions";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      uuid-types = callPackage ({ base, binary, bytestring, deepseq, hashable, mkDerivation, random, stdenv, text }:
      mkDerivation {
          pname = "uuid-types";
          version = "1.0.3";
          sha256 = "9276517ab24a9b06f39d6e3c33c6c2b4ace1fc2126dbc1cd9806866a6551b3fd";
          revision = "1";
          editedCabalFile = "0iwwj07gp28g357hv76k4h8pvlzamvchnw003cv3qk778pcpx201";
          libraryHaskellDepends = [
            base
            binary
            bytestring
            deepseq
            hashable
            random
            text
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/aslatter/uuid";
          description = "Type definitions for Universally Unique Identifiers";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      vault = callPackage ({ base, containers, hashable, mkDerivation, stdenv, unordered-containers }:
      mkDerivation {
          pname = "vault";
          version = "0.3.0.7";
          sha256 = "9e9189da0821d68fc8f85aab958bbec141635858a7aeb8178e1eec5872a366f0";
          libraryHaskellDepends = [
            base
            containers
            hashable
            unordered-containers
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/HeinrichApfelmus/vault";
          description = "a persistent store for values of arbitrary types";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      vector = callPackage ({ base, deepseq, ghc-prim, mkDerivation, primitive, stdenv }:
      mkDerivation {
          pname = "vector";
          version = "0.12.0.1";
          sha256 = "b100ee79b9da2651276278cd3e0f08a3c152505cc52982beda507515af173d7b";
          revision = "2";
          editedCabalFile = "0vzr8kra73anchp86knkmkq2afkd1hw6hirldn9vn69frynb1n6y";
          libraryHaskellDepends = [
            base
            deepseq
            ghc-prim
            primitive
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/haskell/vector";
          description = "Efficient Arrays";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      vector-algorithms = callPackage ({ base, bytestring, mkDerivation, primitive, stdenv, vector }:
      mkDerivation {
          pname = "vector-algorithms";
          version = "0.7.0.1";
          sha256 = "ed460a41ca068f568bc2027579ab14185fbb72c7ac469b5179ae5f8a52719070";
          revision = "1";
          editedCabalFile = "1996aj239vasr4hd5c0pi9i0bd08r6clzr76nqvf3hc5kjs7vml2";
          isLibrary = true;
          isExecutable = true;
          libraryHaskellDepends = [
            base
            bytestring
            primitive
            vector
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://code.haskell.org/~dolio/";
          description = "Efficient algorithms for vector arrays";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      vector-binary-instances = callPackage ({ base, binary, mkDerivation, stdenv, vector }:
      mkDerivation {
          pname = "vector-binary-instances";
          version = "0.2.3.5";
          sha256 = "e11255baeca51fb01df28b120ee308802d4e45929e520c8464e3f74513682a5a";
          revision = "1";
          editedCabalFile = "0yk61mifvcc31vancsfsd0vskqh5k3a3znx1rbz8wzcs4ijjzh48";
          libraryHaskellDepends = [
            base
            binary
            vector
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/bos/vector-binary-instances";
          description = "Instances of Data.Binary and Data.Serialize for vector";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      vector-th-unbox = callPackage ({ base, mkDerivation, stdenv, template-haskell, vector }:
      mkDerivation {
          pname = "vector-th-unbox";
          version = "0.2.1.6";
          sha256 = "be87d4a6f1005ee2d0de6adf521e05c9e83c441568a8a8b60c79efe24ae90235";
          libraryHaskellDepends = [
            base
            template-haskell
            vector
          ];
          doHaddock = false;
          doCheck = false;
          description = "Deriver for Data.Vector.Unboxed using Template Haskell";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      void = callPackage ({ base, mkDerivation, stdenv }:
      mkDerivation {
          pname = "void";
          version = "0.7.2";
          sha256 = "d3fffe66a03e4b53db1e459edf75ad8402385a817cae415d857ec0b03ce0cf2b";
          libraryHaskellDepends = [
            base
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/ekmett/void";
          description = "A Haskell 98 logically uninhabited data type";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      wai = callPackage ({ base, blaze-builder, bytestring, bytestring-builder, http-types, mkDerivation, network, stdenv, text, transformers, vault }:
      mkDerivation {
          pname = "wai";
          version = "3.2.1.1";
          sha256 = "5d80a68f5d8806682d8267b7dacc383d094e3ef7ecd705f20e42c91cad564e21";
          libraryHaskellDepends = [
            base
            blaze-builder
            bytestring
            bytestring-builder
            http-types
            network
            text
            transformers
            vault
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "https://github.com/yesodweb/wai";
          description = "Web Application Interface";
          license = stdenv.lib.licenses.mit;
        }) {};
      wai-logger = callPackage ({ base, blaze-builder, byteorder, bytestring, case-insensitive, fast-logger, http-types, mkDerivation, network, stdenv, unix, unix-time, wai }:
      mkDerivation {
          pname = "wai-logger";
          version = "2.3.1";
          sha256 = "3736875b91eb1da4714167e83f8d26d61caf65e13abcac2913ea8183a34cbd51";
          libraryHaskellDepends = [
            base
            blaze-builder
            byteorder
            bytestring
            case-insensitive
            fast-logger
            http-types
            network
            unix
            unix-time
            wai
          ];
          doHaddock = false;
          doCheck = false;
          description = "A logging system for WAI";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      warp = callPackage ({ array, async, auto-update, base, blaze-builder, bytestring, bytestring-builder, case-insensitive, containers, ghc-prim, hashable, http-date, http-types, http2, iproute, mkDerivation, network, simple-sendfile, stdenv, stm, streaming-commons, text, unix, unix-compat, vault, wai, word8 }:
      mkDerivation {
          pname = "warp";
          version = "3.2.13";
          sha256 = "92395bf42d012e5c4deaea7f9e1fc2271a63c5380b4c5bc1cf16b7c53aa2c424";
          revision = "1";
          editedCabalFile = "0i8x4hv5j5l3lz2m0abxik05xq1lzcilw8mhw5f5paiar6csqmg7";
          libraryHaskellDepends = [
            array
            async
            auto-update
            base
            blaze-builder
            bytestring
            bytestring-builder
            case-insensitive
            containers
            ghc-prim
            hashable
            http-date
            http-types
            http2
            iproute
            network
            simple-sendfile
            stm
            streaming-commons
            text
            unix
            unix-compat
            vault
            wai
            word8
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/yesodweb/wai";
          description = "A fast, light-weight web server for WAI applications";
          license = stdenv.lib.licenses.mit;
        }) {};
      warp-tls = callPackage ({ base, bytestring, cryptonite, data-default-class, mkDerivation, network, stdenv, streaming-commons, tls, tls-session-manager, wai, warp }:
      mkDerivation {
          pname = "warp-tls";
          version = "3.2.4";
          sha256 = "05d1aad58fa1a16a652369d7247d4c68b86af0b8febaea9ab7969c121f956e17";
          libraryHaskellDepends = [
            base
            bytestring
            cryptonite
            data-default-class
            network
            streaming-commons
            tls
            tls-session-manager
            wai
            warp
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/yesodweb/wai";
          description = "HTTP over TLS support for Warp via the TLS package";
          license = stdenv.lib.licenses.mit;
        }) {};
      word8 = callPackage ({ base, mkDerivation, stdenv }:
      mkDerivation {
          pname = "word8";
          version = "0.1.3";
          sha256 = "2630934c75728bfbf390c1f0206b225507b354f68d4047b06c018a36823b5d8a";
          libraryHaskellDepends = [
            base
          ];
          doHaddock = false;
          doCheck = false;
          description = "Word8 library";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      wreq = callPackage ({ Cabal, aeson, attoparsec, authenticate-oauth, base, base16-bytestring, byteable, bytestring, cabal-doctest, case-insensitive, containers, cryptohash, exceptions, ghc-prim, hashable, http-client, http-client-tls, http-types, lens, lens-aeson, mime-types, mkDerivation, psqueues, stdenv, template-haskell, text, time, time-locale-compat, unordered-containers }:
      mkDerivation {
          pname = "wreq";
          version = "0.5.2.0";
          sha256 = "713a60156fec01b5bb131145eeda291f742696a0db8108b20e971e686f03671b";
          revision = "1";
          editedCabalFile = "01x430yrqiv02pq7h55h3y70hvz7n62882vnw1m53qqxp667i580";
          isLibrary = true;
          isExecutable = true;
          setupHaskellDepends = [
            base
            Cabal
            cabal-doctest
          ];
          libraryHaskellDepends = [
            aeson
            attoparsec
            authenticate-oauth
            base
            base16-bytestring
            byteable
            bytestring
            case-insensitive
            containers
            cryptohash
            exceptions
            ghc-prim
            hashable
            http-client
            http-client-tls
            http-types
            lens
            lens-aeson
            mime-types
            psqueues
            template-haskell
            text
            time
            time-locale-compat
            unordered-containers
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://www.serpentine.com/wreq";
          description = "An easy-to-use HTTP client library";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      x509 = callPackage ({ asn1-encoding, asn1-parse, asn1-types, base, bytestring, containers, cryptonite, hourglass, memory, mkDerivation, mtl, pem, stdenv }:
      mkDerivation {
          pname = "x509";
          version = "1.7.2";
          sha256 = "dc0315a9e2bbfb2b3b6746b83cde901c0cc6aca5a3983f129c6f1cbe0ee0ce7b";
          revision = "1";
          editedCabalFile = "07mphpmj4zk5mzhp5x50a7q6w134kgymf557dcgbp643cbkcmc66";
          libraryHaskellDepends = [
            asn1-encoding
            asn1-parse
            asn1-types
            base
            bytestring
            containers
            cryptonite
            hourglass
            memory
            mtl
            pem
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/vincenthz/hs-certificate";
          description = "X509 reader and writer";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      x509-store = callPackage ({ asn1-encoding, asn1-types, base, bytestring, containers, cryptonite, directory, filepath, mkDerivation, mtl, pem, stdenv, x509 }:
      mkDerivation {
          pname = "x509-store";
          version = "1.6.5";
          sha256 = "1aaab11da87f8c27b7475c4b0789823864e5f215fd5bf7c8a455feba807fe9d1";
          libraryHaskellDepends = [
            asn1-encoding
            asn1-types
            base
            bytestring
            containers
            cryptonite
            directory
            filepath
            mtl
            pem
            x509
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/vincenthz/hs-certificate";
          description = "X.509 collection accessing and storing methods";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      x509-system = callPackage ({ base, bytestring, containers, directory, filepath, mkDerivation, mtl, pem, process, stdenv, x509, x509-store }:
      mkDerivation {
          pname = "x509-system";
          version = "1.6.6";
          sha256 = "40dcdaae3ec67f38c08d96d4365b901eb8ac0c590bd7972eb429d37d58aa4419";
          libraryHaskellDepends = [
            base
            bytestring
            containers
            directory
            filepath
            mtl
            pem
            process
            x509
            x509-store
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/vincenthz/hs-certificate";
          description = "Handle per-operating-system X.509 accessors and storage";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      x509-validation = callPackage ({ asn1-encoding, asn1-types, base, byteable, bytestring, containers, cryptonite, data-default-class, hourglass, memory, mkDerivation, mtl, pem, stdenv, x509, x509-store }:
      mkDerivation {
          pname = "x509-validation";
          version = "1.6.9";
          sha256 = "8470cead7cf0c8cd93137f1edeb1603805d54f50647b15331d9d952fbb2cb500";
          revision = "1";
          editedCabalFile = "02n9s0wizi4wivs6is4cyapqjjnbrx3zdk34q0cnlfsvbbvyhjax";
          libraryHaskellDepends = [
            asn1-encoding
            asn1-types
            base
            byteable
            bytestring
            containers
            cryptonite
            data-default-class
            hourglass
            memory
            mtl
            pem
            x509
            x509-store
          ];
          doHaddock = false;
          doCheck = false;
          homepage = "http://github.com/vincenthz/hs-certificate";
          description = "X.509 Certificate and CRL validation";
          license = stdenv.lib.licenses.bsd3;
        }) {};
      zlib = callPackage ({ base, bytestring, mkDerivation, stdenv, zlib }:
      mkDerivation {
          pname = "zlib";
          version = "0.6.1.2";
          sha256 = "e4eb4e636caf07a16a9730ce469a00b65d5748f259f43edd904dd457b198a2bb";
          libraryHaskellDepends = [
            base
            bytestring
          ];
          librarySystemDepends = [ zlib ];
          doHaddock = false;
          doCheck = false;
          description = "Compression and decompression in the gzip and zlib formats";
          license = stdenv.lib.licenses.bsd3;
        }) { zlib = pkgs.zlib; };
    };
in
compiler.override {
  initialPackages = stackPackages;
  configurationCommon = { ... }: self: super: { inherit c2hs; inherit qt; };
}
