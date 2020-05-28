pkgs: {

  deploymentName = "ff";

  topology = import ./topologies/ff.nix;

  withExplorer = false;
  withLegacyExplorer = false;

  withFaucet = true;
  faucetHostname = "faucet";
  faucetOptions = {
    anonymousAccess = true;
    faucetLogLevel = "DEBUG";
    secondsBetweenRequests = 86400;
    lovelacesToGiveAnonymous = 1000000000;
    lovelacesToGiveApiKeyAuth = 1000000000000;
  };

  ec2 = {
    credentials = {
      accessKeyIds = {
        IOHK = "default";
        dns = "dev";
      };
    };
  };
}
