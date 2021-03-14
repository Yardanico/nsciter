# nsciter - Nim wrapper for https://sciter.com/

This library is a low and high-level wrapper for the Sciter GUI framework.

Based on https://github.com/citrusn/nsciter and Nimterop. Currently only supports Linux (GTK3).

This wrapper does not support statically linking Sciter because I don't have access to the source code :)

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
