nxtcom
written by Dave Baum (dfb@baumfamily.org) 
-----------------------------------------

nxtcom downloads rxe files to a NXT either via USB or Bluetooth.

nxtcom version 0.1.1
Usage: nxtcom [options] filename
       -v : verbose mode
       -q : quiet (no confirmation sound)
       -S=<comm_port> : use specified comm_port
       -U[=<serial_number>] : use USB connection


The -v option enables verbose mode, which is really only useful for
debugging problems.

The -q option disables the confirmation tone that is normally played
after a successful download.

By default, nxtcom attempts to conenct via USB to the first NXT it
can find.  If you have multiple NXT devices connected via USB, you
can use the -U option to specify which device to use.  Be sure to
use the full serial number of the device, using uppercase letters:

nxtcom -U=00165304EC52  foo.rxe

In order to use Bluetooth, use the -S option, specifying the device
file for the appropriate Bluetooth communcation port.  For example,
if the connection is /dev/tty.NXT-DevB-1, then the following command
would download foo.rxe:

nxtcom -S=/dev/tty.NXT-DevB-1 foo.rxe

