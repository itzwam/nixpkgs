{ lib, rustPlatform, fetchFromGitHub }:

rustPlatform.buildRustPackage rec {
  pname = "nixpacks";
  version = "0.3.3";

  src = fetchFromGitHub {
    owner = "railwayapp";
    repo = pname;
    rev = "v${version}";
    sha256 = "sha256-CnRYMdqQvYvHzYNFa6QNh9yFyHeXrMJFPafEcYZ/sHE=";
  };

  cargoSha256 = "sha256-OHG1XMSurmSxtMb/rizgLnyIHIo+SJSlM1Ggl8crHzM=";

  # skip test due FHS dependency
  doCheck = false;

  meta = with lib; {
    description = "App source + Nix packages + Docker = Image Resources";
    homepage = "https://github.com/railwayapp/nixpacks";
    license = licenses.mit;
    maintainers = [ maintainers.zoedsoupe ];
  };
}
