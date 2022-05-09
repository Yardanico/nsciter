# nsciter - Nim wrapper for https://sciter.com/

This library is a low and high-level wrapper for the Sciter GUI framework.
Only Sciter.JS edition is supported.

Based on https://github.com/citrusn/nsciter. Raw bindings are generated with Futhark and then saved as separate files.
Tested on Windows and Linux (GTK3), shouldn't be hard to add macOS support.

This wrapper does not support statically linking Sciter because I don't have access to the source code,
but in theory it should be really simple to do.

## Examples

Examples are available in the `examples` folder.

### `hello.nim`

Simple example with a button (and a callback to change the contexts on a press) and an image

![Screenshot of the example](assets/pic.png?raw=true "Screenshot")

### Licensing 
Sciter itself is proprietary, but they provide binaries for Windows/Linux/macOS
and you can use these in any projects without any restrictions as long as you mention the Sciter copyright.
Check [this file](https://github.com/c-smile/sciter-sdk/blob/master/license.htm) for the full license.

The library itself is MIT.
