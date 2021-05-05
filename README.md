## ChromeOS-booting

Simple setup script for triple booting ChromeOS with Windows 10 and Pop! OS.

Related blog: [Step by step tutorial on creating a triple boot laptop of Windows 10, Pop! OS, and Chrome OS (brunch)](https://sgyzetrov.github.io/Win10_PoPOS_ChromeOS_triple_boot_using_grub2.html)

`tripleboot_chromeos.sh` is for when you have already setup dual booting with Windows 10 and Pop! OS following the tutorial at [sgyzetrov.github.io/Win10_PoPOS_ChromeOS_triple_boot_using_grub2.html](https://sgyzetrov.github.io/Win10_PoPOS_ChromeOS_triple_boot_using_grub2.html).

Plain text version can be found at [https://raw.githubusercontent.com/sgyzetrov/ChromeOS-booting/master/tripleboot_chromeos.sh](https://raw.githubusercontent.com/sgyzetrov/ChromeOS-booting/master/tripleboot_chromeos.sh)

`tripleboot_chromeos.sh` script assumes you have grub-customizer installed. If you don't, uncomment the two lines (line 4 & 12) in the script to install it.

`FAQ` and `install.sh` is kept AS IS from the original repo.

## LICENSE

MIT License

Copyright (c) 2021 Yang (Simon) Guo

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.