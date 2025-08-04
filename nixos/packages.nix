{ pkgs, lib, ... }:

{
  environment.systemPackages = with pkgs; [
    git
    wget
    i2pd
    curl
    prosody
  ];
}
