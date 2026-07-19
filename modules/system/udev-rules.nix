{
  services.udev.extraRules = ''
    # Wooting 80HE
    SUBSYSTEM=="hidraw", ATTRS{idVendor}=="31e3", MODE="0666"

    # G-Wolves HSK Pro
    SUBSYSTEM=="hidraw", ATTRS{idVendor}=="33e4", MODE="0666"
  '';
}
