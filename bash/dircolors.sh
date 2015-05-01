#                                    LS_COLORS
# Maintainers: Magnus Woldrich <m@japh.se>,
#              Ryan Delaney <ryan.delaney@gmail.com> OpenGPG: 0D98863B4E1D07B6
#         URL: https://github.com/trapd00r/LS_COLORS
#     Version: 0.254
#     Updated: Sun Jun  1 14:36:30 PDT 2014
#
#   This is a collection of extension:color mappings, suitable to use as your
#   LS_COLORS environment variable. Most of them use the extended color map,
#   described in the ECMA-48 document; in other words, you'll need a terminal
#   with capabilities of displaying 256 colors.
#
#   As of this writing, around 300 different filetypes/extensions is supported.
#   That's indeed a lot of extensions, but there's a lot more! Therefore I need
#   your help.
#
#   Fork this project on github, add the extensions you are missing, and send me
#   a pull request.
#
#   For files that usually ends up next to each other, like html, css and js,
#   try to pick colors that fit nicely together. Filetypes with multiple
#   possible extensions, like htm and html, should have the same color.

# This program is distributed in the hope that it will be useful, but WITHOUT ANY
# WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.  See the Perl Artistic License for more details.
#
# This program is free software: you can redistribute it and/or modify it under
# the terms of the Perl Artistic License as published by the Perl Foundation,
# either version 1.0 of the License, or (at your option) any later version.
#
# You should have received a copy of the Perl Artistic License along
# with this program.  If not, see <http://www.perlfoundation.org/artistic_license_1_0>.

# core {{{1
BLK                   38;5;68
CAPABILITY            38;5;17
CHR                   38;5;113;1
DIR                   38;5;30
DOOR                  38;5;127
EXEC                  38;5;208;1
FIFO                  38;5;126
FILE                  38;5;253
LINK                  target
MULTIHARDLINK         38;5;222;1
# "NORMAL don't reset the bold attribute -
# https://github.com/trapd00r/LS_COLORS/issues/11
#NORMAL                38;5;254
ORPHAN                48;5;196;38;5;232;1
OTHER_WRITABLE        38;5;220;1
SETGID                48;5;234;38;5;100;1
SETUID                38;5;137
SOCK                  38;5;197
STICKY                38;5;86;48;5;234
STICKY_OTHER_WRITABLE 48;5;235;38;5;139;3

*LS_COLORS 48;5;89;38;5;197;1;3;4;7 # :-)
# }}}
# documents {{{1
*README               38;5;220;1
*LICENSE              38;5;220;1
*COPYRIGHT            38;5;220;1
*AUTHORS              38;5;220;1
*HISTORY              38;5;220;1
.log                  38;5;190
# plain-text {{{2
.txt                  38;5;253
# markup {{{2
.etx                  38;5;184
.info                 38;5;184
.markdown             38;5;184
.md                   38;5;184
.mkd                  38;5;184
.nfo                  38;5;184
.pod                  38;5;184
.tex                  38;5;184
.textile              38;5;184
# key-value, non-relational data {{{2
.msg                  38;5;178
.pgn                  38;5;178
.xml                  38;5;178
.json                 38;5;178
.yml                  38;5;178
# }}}
# binary {{{2
.cbr                  38;5;141
.cbz                  38;5;141
.chm                  38;5;141
.djvu                 38;5;141
.pdf                  38;5;141
.PDF                  38;5;141
# words {{{3
.docm                 38;5;111;4
.doc                  38;5;111
.docx                 38;5;111
.eps                  38;5;111
.odb                  38;5;111
.odt                  38;5;111
# presentation {{{3
.odp                  38;5;166
.pps                  38;5;166
.ppt                  38;5;166
# spreadsheet {{{3
.csv                  38;5;78
#   Open document spreadsheet
.ods                  38;5;112
.xla                  38;5;76
#   Excel spreadsheet
.xls                  38;5;112
.xlsx                 38;5;112
#   Excel spreadsheet with macros
.xlsxm                38;5;112;4
#   Excel module
.xltm                 38;5;73;4
.xltx                 38;5;73
# }}}
# }}}
# configs {{{2
*cfg                  1
*conf                 1
*rc                   1
.ini                  1
#   vim
.vim                  1
.viminfo              1
#   cisco VPN client configuration
.pcf                  1
#   adobe photoshop proof settings file
.psf                  1
# }}}
# }}}
# code {{{1
# version control {{{2
.git                  38;5;197
.gitignore            38;5;240
.gitattributes        38;5;240
.gitmodules           38;5;240

# shell {{{2
.awk                  38;5;172
.bash                 38;5;172
.bat                  38;5;172
.BAT                  38;5;172
.sed                  38;5;172
.sh                   38;5;172
.zsh                  38;5;172

# interpreted {{{2
.ahk                  38;5;29;1
.py                   38;5;41
# sql
.msql                 38;5;222
.mysql                38;5;222
.pgsql                38;5;222
.sql                  38;5;222
#   Tool Command Language
.tcl                  38;5;64;1

# compiled {{{2
#
#   assembly language
.asm                  38;5;81
#   LISP
.cl                   38;5;81
.lisp                 38;5;81
#   lua
.lua                  38;5;81
#   C
.c                    38;5;81
.C                    38;5;81
.h                    38;5;110
.H                    38;5;110
.tcc                  38;5;110
#   C++
.c++                  38;5;81
.h++                  38;5;110
.hpp                  38;5;110
.hxx                  38;5;110
.ii                   38;5;110
#   method file for Objective C
.M                    38;5;110
.m                    38;5;110
#   Csharp
.cc                   38;5;81
.cs                   38;5;81
.cp                   38;5;81
.cpp                  38;5;81
.cxx                  38;5;81
#   fortran
.f                    38;5;81
.for                  38;5;81
.ftn                  38;5;81
#   pascal
.s                    38;5;110
.S                    38;5;110
#   ?
.sx                   38;5;81
#   interface file in GHC - https://github.com/trapd00r/LS_COLORS/pull/9
.hi                   38;5;110
#   haskell
.hs                   38;5;81

# binaries {{{2
# compiled apps for interpreted languages
.PL                   38;5;160
.pyc                  38;5;240
# }}}
# html {{{2
.css                  38;5;125;1
.htm                  38;5;125;1
.html                 38;5;125;1
.jhtm                 38;5;125;1
.mht                  38;5;125;1
# }}}
# java {{{2
.coffee               38;5;074;1
.java                 38;5;074;1
.js                   38;5;074;1
.jsm                  38;5;074;1
.jsm                  38;5;074;1
.jsp                  38;5;074;1
# }}}
# php {{{2
.php                  38;5;81
#   CakePHP view scripts and helpers
.ctp                  38;5;81
# }}}
# vb/a {{{2
.vb                   38;5;81
.vba                  38;5;81
.vbs                  38;5;81
# 2}}}
# Build stuff {{{2
*Makefile             38;5;155
*MANIFEST             38;5;243
*pm_to_blib           38;5;240
# automake
.am                   38;5;242
.in                   38;5;242
.old                  38;5;242
.out                  38;5;242
.SKIP                 38;5;244
# }}}
# patch files {{{2
.diff                 48;5;197;38;5;232
.patch                48;5;197;38;5;232;1
#}}}
# graphics {{{1
.bmp                  38;5;97
.tiff                 38;5;97
.TIFF                 38;5;97
.cdr                  38;5;97
.gif                  38;5;97
.go                   38;5;97
.ico                  38;5;97
.jpeg                 38;5;97
.JPG                  38;5;97
.jpg                  38;5;97
.nth                  38;5;97
.png                  38;5;97
.svg                  38;5;97
.xpm                  38;5;97
# }}}
# video {{{1
.avi                  38;5;114
.divx                 38;5;114
.IFO                  38;5;114
.m2v                  38;5;114
.m4v                  38;5;114
.mkv                  38;5;114
.MOV                  38;5;114
.mov                  38;5;114
.mp4                  38;5;114
.mpeg                 38;5;114
.mpg                  38;5;114
.ogm                  38;5;114
.rmvb                 38;5;114
.sample               38;5;114
.wmv                  38;5;114
  # mobile/streaming {{{2
.3g2                  38;5;115
.3gp                  38;5;115
.gp3                  38;5;115
.webm                 38;5;115
.gp4                  38;5;115
.asf                  38;5;115
.flv                  38;5;115
.ts                   38;5;115
.ogv                  38;5;115
.f4v                  38;5;115
  # }}}
  # lossless {{{2
.VOB                  38;5;115;1
.vob                  38;5;115;1
# }}}
# audio {{{1
.3ga                  38;5;137;1
.S3M                  38;5;137;1
.aac                  38;5;137;1
.dat                  38;5;137;1
.dts                  38;5;137;1
.fcm                  38;5;137;1
.m4a                  38;5;137;1
.mid                  38;5;137;1
.midi                 38;5;137;1
.mod                  38;5;137;1
.mp3                  38;5;137;1
.oga                  38;5;137;1
.ogg                  38;5;137;1
.s3m                  38;5;137;1
.sid                  38;5;137;1
# lossless
.ape                  38;5;136;1
.flac                 38;5;136;1
.wav                  38;5;136;1
.wv                   38;5;136;1
.wvc                  38;5;136;1

# }}}
# fonts {{{1
.afm                  38;5;66
.pfb                  38;5;66
.pfm                  38;5;66
.ttf                  38;5;66
.otf                  38;5;66
#   postscript fonts
.PFA                  38;5;66
.pfa                  38;5;66
# }}}
# archives {{{1
.7z                   38;5;40
.a                    38;5;40
.arj                  38;5;40
.bz2                  38;5;40
.gz                   38;5;40
.rar                  38;5;40
.tar                  38;5;40
.tgz                  38;5;40
.xz                   38;5;40
.zip                  38;5;40
  # packaged apps {{{2
.apk                  38;5;215
.deb                  38;5;215
.jad                  38;5;215
.jar                  38;5;215
.cab                  38;5;215
.pak                  38;5;215
.vdf                  38;5;215
.vpk                  38;5;215
.bsp                  38;5;215
  # }}}
  # segments {{{2
.r00                  38;5;239
.r01                  38;5;239
.r02                  38;5;239
.r03                  38;5;239
.r04                  38;5;239
.r05                  38;5;239
.r06                  38;5;239
.r07                  38;5;239
.r08                  38;5;239
.r09                  38;5;239
.r10                  38;5;239
.r100                 38;5;239
.r101                 38;5;239
.r102                 38;5;239
.r103                 38;5;239
.r104                 38;5;239
.r105                 38;5;239
.r106                 38;5;239
.r107                 38;5;239
.r108                 38;5;239
.r109                 38;5;239
.r11                  38;5;239
.r110                 38;5;239
.r111                 38;5;239
.r112                 38;5;239
.r113                 38;5;239
.r114                 38;5;239
.r115                 38;5;239
.r116                 38;5;239
.r12                  38;5;239
.r13                  38;5;239
.r14                  38;5;239
.r15                  38;5;239
.r16                  38;5;239
.r17                  38;5;239
.r18                  38;5;239
.r19                  38;5;239
.r20                  38;5;239
.r21                  38;5;239
.r22                  38;5;239
.r25                  38;5;239
.r26                  38;5;239
.r27                  38;5;239
.r28                  38;5;239
.r29                  38;5;239
.r30                  38;5;239
.r31                  38;5;239
.r32                  38;5;239
.r33                  38;5;239
.r34                  38;5;239
.r35                  38;5;239
.r36                  38;5;239
.r37                  38;5;239
.r38                  38;5;239
.r39                  38;5;239
.r40                  38;5;239
.r41                  38;5;239
.r42                  38;5;239
.r43                  38;5;239
.r44                  38;5;239
.r45                  38;5;239
.r46                  38;5;239
.r47                  38;5;239
.r48                  38;5;239
.r49                  38;5;239
.r50                  38;5;239
.r51                  38;5;239
.r52                  38;5;239
.r53                  38;5;239
.r54                  38;5;239
.r55                  38;5;239
.r56                  38;5;239
.r57                  38;5;239
.r58                  38;5;239
.r59                  38;5;239
.r60                  38;5;239
.r61                  38;5;239
.r62                  38;5;239
.r63                  38;5;239
.r64                  38;5;239
.r65                  38;5;239
.r66                  38;5;239
.r67                  38;5;239
.r68                  38;5;239
.r69                  38;5;239
.r69                  38;5;239
.r70                  38;5;239
.r71                  38;5;239
.r72                  38;5;239
.r73                  38;5;239
.r74                  38;5;239
.r75                  38;5;239
.r76                  38;5;239
.r77                  38;5;239
.r78                  38;5;239
.r79                  38;5;239
.r80                  38;5;239
.r81                  38;5;239
.r82                  38;5;239
.r83                  38;5;239
.r84                  38;5;239
.r85                  38;5;239
.r86                  38;5;239
.r87                  38;5;239
.r88                  38;5;239
.r89                  38;5;239
.r90                  38;5;239
.r91                  38;5;239
.r92                  38;5;239
.r93                  38;5;239
.r94                  38;5;239
.r95                  38;5;239
.r96                  38;5;239
.r97                  38;5;239
.r98                  38;5;239
.r99                  38;5;239
# partial files
.part                 38;5;239
  # }}}
# partition images {{{2
.iso                  38;5;124
.bin                  38;5;124
.nrg                  38;5;124
.qcow                 38;5;124
# }}}
# databases {{{2
.accdb                38;5;60
.accde                38;5;60
.accdr                38;5;60
.accdt                38;5;60
.db                   38;5;60
.localstorage         38;5;60
.sqlite               38;5;60
.typelib              38;5;60
# }}}
# tempfiles {{{1
# undo files
.pacnew               38;5;33
.un~                  38;5;241
.orig                 38;5;241
# backups
.BUP                  38;5;241
.bak                  38;5;241
.o                    38;5;241 #   *nix Object file (shared libraries, core dumps etc)
# temporary files
.swp                  38;5;244
.swo                  38;5;244
.tmp                  38;5;244
# state files
.pid                  38;5;248
.state                38;5;248
*lockfile             38;5;248
# error logs
.err                  38;5;160;1
.error                38;5;160;1
.stderr               38;5;160;1
# state dumps
.dump                 38;5;241
.stackdump            38;5;241
.zcompdump            38;5;241
.zwc                  38;5;241
# tcpdump, network traffic capture
.pcap                 38;5;29
.cap                  38;5;29
.dmp                  38;5;29
# }}}
# hosts {{{1
# /etc/hosts.{deny,allow}
.allow                38;5;112
.deny                 38;5;196
# }}}
# systemd {{{1
# http://www.freedesktop.org/software/systemd/man/systemd.unit.html
.service              38;5;45
*@.service            38;5;45
.socket               38;5;45
.swap                 38;5;45
.device               38;5;45
.mount                38;5;45
.automount            38;5;45
.target               38;5;45
.path                 38;5;45
.timer                38;5;45
.snapshot             38;5;45
# }}}
# metadata {{{1
.application          38;5;116
.cue                  38;5;116
.description          38;5;116
.directory            38;5;116
.m3u                  38;5;116
.m3u8                 38;5;116
.properties           38;5;116
.sfv                  38;5;116
.srt                  38;5;116
.theme                38;5;116
.torrent              38;5;116
.urlview              38;5;116
# }}}
# encrypted data {{{1
.gpg                  38;5;192;3
.signature            38;5;192;3
.sig                  38;5;192;3
.pgp                  38;5;192;3
.asc                  38;5;192;3
.enc                  38;5;192;3
# }}}
# emulators {{{1
.32x                  38;5;213
.cdi                  38;5;213
.fm2                  38;5;213
.rom                  38;5;213
.sav                  38;5;213
.st                   38;5;213
  # atari
.a00                  38;5;213
.a52                  38;5;213
.A64                  38;5;213
.a64                  38;5;213
.a78                  38;5;213
.adf                  38;5;213
.atr                  38;5;213
  # nintendo
.gb                   38;5;213
.gba                  38;5;213
.gbc                  38;5;213
.gel                  38;5;213
.gg                   38;5;213
.ggl                  38;5;213
.ipk                  38;5;213 # Nintendo (DS Packed Images)
.j64                  38;5;213
.nds                  38;5;213
.nes                  38;5;213
  # Sega
.sms                  38;5;213
# }}}
# unsorted {{{1
#
#   Portable Object Translation for GNU Gettext
.pot                  38;5;7
#   CAD files for printed circuit boards
.pcb                  38;5;7
#   groff (rendering app for texinfo)
.mm                   38;5;7
#   perldoc
.pod                  38;5;7
#   GIMP brush
.gbr                  38;5;7
#   Linux Shell Executable Binary
.pl                   38;5;7
# printer spool file
.spl                  38;5;7
#   GIMP project file
.scm                  38;5;7
#   Nokia Symbian OS files
.sis                  38;5;7

.1p                   38;5;7
.3p                   38;5;7
.cnc                  38;5;7
.def                  38;5;7
.ex                   38;5;7
.example              38;5;7
.ger                  38;5;7
.map                  38;5;7
.mf                   38;5;7
.mfasl                38;5;7
.mht                  38;5;7
.mi                   38;5;7
.mtx                  38;5;7
.pc                   38;5;7
.pi                   38;5;7
.plt                  38;5;7
.pm                   38;5;7
.rb                   38;5;7
.rdf                  38;5;7
.rst                  38;5;7
.ru                   38;5;7
.sch                  38;5;7
.sty                  38;5;7
.sug                  38;5;7
.t                    38;5;7
.tdy                  38;5;7
.tfm                  38;5;7
.tfnt                 38;5;7
.tg                   38;5;7
.xln                  38;5;7
# }}}
# termcap {{{1
TERM ansi
TERM color-xterm
TERM con132x25
TERM con132x30
TERM con132x43
TERM con132x60
TERM con80x25
TERM con80x28
TERM con80x30
TERM con80x43
TERM con80x50
TERM con80x60
TERM cons25
TERM console
TERM cygwin
TERM dtterm
TERM Eterm
TERM eterm-color
TERM gnome
TERM gnome-256color
TERM jfbterm
TERM konsole
TERM kterm
TERM linux
TERM linux-c
TERM mach-color
TERM mlterm
TERM putty
TERM rxvt
TERM rxvt-256color
TERM rxvt-cygwin
TERM rxvt-cygwin-native
TERM rxvt-unicode
TERM rxvt-unicode-256color
TERM rxvt-unicode256
TERM screen
TERM screen-256color
TERM screen-256color-bce
TERM screen-bce
TERM screen-w
TERM screen.linux
TERM screen.rxvt
TERM terminator
TERM vt100
TERM xterm
TERM xterm-16color
TERM xterm-256color
TERM xterm-88color
TERM xterm-color
TERM xterm-debian
# }}}


# vim: ft=dircolors:fdm=marker:et:sw=2: