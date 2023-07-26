### Bifrost guest VM files
Files are retrieved from [amd-focal.img](https://zenodo.org/record/7920234)

- mount
```
sudo modprobe nbd max_part=8
sudo /dev/nbd0 ./amd-focal.img
sudo mount /dev/nbd0p1 ./mnt/
```

- umount
```
sudo umount ./mnt
sudo qemu-nbd --disconnect /dev/nbd0
sudo rmmod nbd
```

