{ stdenv, lib, libpcap, buildGoPackage, fetchFromGitHub }:

buildGoPackage rec {
  name = "metricbeat-${version}";
  version = "5.0-rc1";
  rev = "569eb2d40dc886eddc5e9d9f73be6b503d8b54a3";

  goPackagePath = "github.com/elastic/beats";
  subPackages = [ "metricbeat" "filebeat" "packetbeat" ];

  buildInputs = [ libpcap ];
  src = fetchFromGitHub {
    owner = "elastic";
    repo = "beats";
    inherit rev;
    sha256 = "16n5194b1qrycfziy7nrla36fkbrqv6f41k6wxfjpwra3036biz3";
  };
}
