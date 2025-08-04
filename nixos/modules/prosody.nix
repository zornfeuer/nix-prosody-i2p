{ ... }: let
  address = "xxx.b32.i2p"
in
{
  services.prosody = {
    inherit address;
    enable = true;
    intefaces = [ "localhost" ];
    admins = [ "admin@${address}" ];
    modules = {
      roster = true;
      saslauth = true;
      tls = true;
      dialback = true;
      disco = true;
      private = true;
      vcard = true;
      register = true;
      admin_adhoc = true;
    }; # no posix and no darknet modules
    allowRegistration = false;
    # darknetOnly = true;
    c2sRequireEncryption = true;
    s2sSecureAuth = false;
    authentication = "internal_plain";

    virtualHosts = {
      ${address} = {
        enabled = true;
      };
    };
    ssl = {
      key = /etc/prosody/certs/${address}.key;
      cert = /etc/prosody/certs/${address}.crt;
    };
  };
}
