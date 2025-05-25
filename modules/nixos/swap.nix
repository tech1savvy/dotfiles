{

  # create a swap file
  swapDevices = [{
    device = "/var/lib/swapfile";
    size = 16 * 1024; # Size in MB (16GB)
  }];

  # enable swap on resume
  boot.resumeDevice = "/dev/disk/by-uuid/b1eaaa31-6bc5-4c18-a340-269fb4b1edc0"; # UUID of the partition hosting the swap file
  # you can find the UUID with the command:
  # df -h /var/lib/swapfile
  boot.kernelParams = [ "resume_offset=4136960" ]; 
  # calulate offset for ext4 filesystem with cmd, after the swap file is created:
  # sudo filefrag -v /var/lib/swapfile | awk '{if($1=="0:"){print $4}}'

}