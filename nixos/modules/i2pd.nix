{
  services.i2pd = {
    enable = true;
    enableIPv6 = false;
    
    proto = {
      http = {
        enable = true;
        port = 7070;
        auth = false;
      };

      httpProxy = {
        enable = true;
        port = 4444;
      };

      socksProxy = {
        enable = true;
        port = 4447;
      };

      sam = {
        enable = true;
        port = 7656;
      };
    };
    
    addressbook.subscriptions = [
      http://reg.i2p/hosts.txt
      http://identiguy.i2p/hosts.txt
      http://stats.i2p/cgi-bin/newhosts.txt
    ];

    inTunnels = {
      prosody-s2s = {
        port = 5269;
        inPort = 5269;
        keys = "prosody.dat";
      };
      prosody-c2s = {
        port = 5222;
        inPort = 5222;
        keys = "prosody.dat";
      };
    };
  };
}
