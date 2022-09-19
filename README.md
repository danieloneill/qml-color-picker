qmlcolorpicker
==============

A colorpicker made using QtQuick/QML and C++ components.

The C++ component allows the selected color to be edited from both the sliders **and** the text fields, which could not have been achieved using pure QML.

This is a Qt6-compatible port/modification of [qml-color-picker](https://github.com/astorije/qml-color-picker) by [astorije](https://github.com/astorije).

Installation
------------

This project has been fully tested with Qt 6.3.2.

It relies on a C++ plugin for QtQuick (that is, a native library built from some C++ files).

Enter the 'ColorComponents' directory and run either:

`mkdir build && cd build && qmake .. && make install`

or:

`qmake && nmake release` for MSVC (you need to run it from the Visual Studio Command Prompt to have the environment properly set)

Usage
-----

Simply run ColorPicker.qml with the Qt `qml` tool.

License
-------

This project has been released under the LGPL 3 license.
Please refer to LICENSE.GPL and LICENSE.LGPL for more information.
