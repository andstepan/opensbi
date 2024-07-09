SoCHub Headsail VP OpenSBI Port
===============================

## About this port

This is the port for the Headsail Virtual Prototype. This port is based on version OpenSBI version 1.5 and applies only on the virtual prototype. In order to be used for the physical chip it needs to be modified. For the virtual prototype, a stock implementation of PLIC is used. However, on the physical chip the address space of PLIC has been shortened in order to save space.

This implies that the standard pointer arithmetics used in order to access PLIC's registers may not be valid for the physical chip.

## Copyright

Copyright SoCHub-fi (C) 2024

Author: Andreas Stergiopoulos <andreas.stergiopoulos@tuni.fi>