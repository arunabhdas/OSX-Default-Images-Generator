OSX-Default-Images-Generator
============================

Script to generate 'Mac Icons''Mac Launch (Default) Images'

## Prepare

This script needs `convert` command.  Please install `ImageMagick` like bellow.

```
$ brew install imagemagick
```

## Usage

```
usage: ./macgenerator.sh src_image bg_color [dst_dir]
```

options

- `src_image`: 'App Icons' source file. (1024x1024 size png)
- `bg_color`:  Background collor of 'App Launch (Default) Images'. You can set value like [this](http://www.imagemagick.org/script/command-line-options.php#fill).
- `dst_dir`: Destination directory for images (optional).

## Example

```
$ ./macgenerator.sh d_1024px.png "#FF4981"
```

Above command generates:

```
.
├── README.md
├── d_1024px.png
├── dst
│   ├── icon
│   │   ├── Icon-16.png
│   │   ├── Icon-16@2x.png
│   │   ├── Icon-32.png
│   │   ├── Icon-32@2x.png
│   │   ├── Icon-128.png
│   │   ├── Icon-128@2x.png
│   │   ├── Icon-256.png
│   │   ├── Icon-256@2x.png
│   │   ├── Icon-512.png
│   │   ├── Icon-512@2x.png
└── generator.sh
```

## References

- [iOS App Programming Guide: App-Related Resources](https://developer.apple.com/library/ios/documentation/iphone/conceptual/iphoneosprogrammingguide/App-RelatedResources/App-RelatedResources.html)
- [iOSヒューマンインターフェイスガイドライン: 起動画像](https://developer.apple.com/jp/devcenter/ios/library/documentation/userexperience/conceptual/mobilehig/LaunchImages/LaunchImages.html)
- [ImageMagick: Command-line Options](http://www.imagemagick.org/script/command-line-options.php#fill)

