# Titanium SVG

A lightweight module to handle SVG files (both raw text or file URL) in Titanium. It returns a Ti.Blob that can be
consumed by a `Ti.UI.ImageView`, `Ti.Map.Annotation`, etc.

## Example

```js
const window = Ti.UI.createWindow();
const image = require('ti.svg').SVGImage('icon.svg');

window.add(Ti.UI.createImageView({ image }))
window.open();
```

## Author

Hans Knöchel

## License

MIT