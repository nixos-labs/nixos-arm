{ lib, pkgs, ... }:
{
  systemd.network.enable = true;
  systemd.services.sshd.wantedBy = lib.mkForce [ "multi-user.target" ];

  users.users.pi = {
    users.users.mrtuxa = {
    isNormalUser = true;
    initialPassword = "raspnixos";
    extraGroups = [ "networkmanager" "wheel" ];
  };
}