{
  services = {
    emacs.enable = true;
    openssh = import ./openssh.nix;
    xserver = import ./xserver.nix;
    udev.extraRules = ''
      KERNEL=="hidraw*", SUBSYSTEM=="hidraw", ATTRS{idVendor}=="1050", ATTRS{idProduct}=="0113|0114|0115|0116|0120|0402|0403|0406|0407|0410", TAG+="uaccess", GROUP="plugdev", MODE="0660"
    '';
  };
}
