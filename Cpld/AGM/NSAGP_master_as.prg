usb_connect
if { [as_device_id] } {
  as_write  ./NSAGP_master.bin
  as_verify ./NSAGP_master.bin
}
usb_close
