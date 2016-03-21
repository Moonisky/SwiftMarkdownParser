# Swif Markdown Parser
A Swift Wrapper of the [Sundown](https://github.com/vmg/sundown) Markdown Library.

The aim of this framework is to provide the basic functionality that sundown provides alongside the possibility to do stuff quickly (simple API).

Because it's implemented by C, so I recommend you use CocoaPods or dynamic Framework for maintaining the pure Swift.

----

这是一个对 [Sundown](https://github.com/vmg/sundown) Markdown 解析库的 Swift 封装库。

这个框架的目标在于给 Swift 的使用者提供 Sundown 所提供的基本功能，以便大家能够快速、便捷地进行 markdown 解析工作。

由于 Sundown 的底层由 C 实现，因此我建议您使用 CocoaPods 或者动态框架进行安装，以维持 Swift 的代码纯净度。

##Example

```swift
let markdown = "# How to Write Markdown\n* Start with some bullet points\n* Crucially, you want to **emphasis** the _important_ points"
print(markdown)

print("===================")

let parser = SundownWrapper.convertMarkdownString(markdown)
print(parser)
```

The results in Console are:

控制台当中的结果为：

```
# How to Write Markdown
* Start with some bullet points
* Crucially, you want to **emphasis** the _important_ points
===================
<h1>How to Write Markdown</h1>

<ul>
<li>Start with some bullet points</li>
<li>Crucially, you want to <strong>emphasis</strong> the <em>important</em> points</li>
</ul>
```

###Requirements

* iOS 8.0+

  > If you want to support iOS 7, you should use my source code for using this functionality. Because it does not allow using 3rd party dynamic frameworks, and it's impossible to build static libraries that contain Swift code.

* Swift 2.0

* Xcode 7.0+

##Install

###Embedded Framework

* Download the [latest release of MarkdownParseKit](https://github.com/SemperIdem/SwiftMarkdownParser) and extract the zip.
* Go to your Xcode project's "General" settings. Drag `MarkdownParseKit.framework` from `Frameworks` directory to the "Embedded Binaries" section. Make sure **Copy items if needed** is selected.

----

* 下载 [MarkdownParseKit]() 的最新发布版本，然后解压文件。
* 前往您 Xcode 项目中的 "General" 设置选项当中。将 `Frameworks` 目录中的 `MarkdownParseKit.framework` 文件拖入到 "Embedded Binaries" 栏目当中。请确保 **Copy items if needed** 被选中。

### Sources

* Clone [MarkdownParseKit](https://github.com/SemperIdem/SwiftMarkdownParser) from my repository on Github.

* Drag `Sundown` folder and `SundownWrapper.swift` to your projects.

* If you don't have a `Swift Bridge Header`, please create one. You can find the tutorials on Google.

* In your `Bridge Header`, paste the following snippet in your file:

  ```c
  #include "markdown.h"
  #include "html.h"
  ```

----

* 用 git 命令将我 Github 上的 [MarkdownParseKit](https://github.com/SemperIdem/SwiftMarkdownParser) 仓库拷贝下来；

* 将 `Sundown` 文件夹以及 `SundownWrapper.swift` 文件拖曳到您的项目当中；

* 如果您没有 `Swift 桥接头文件` 的话，那么请创建一个。您可以在百度上找到创建此头文件的教程。

* 在您的 `桥接头文件` 当中，将下列代码复制到您的文件当中：

  ```c
  #include "markdown.h"
  #include "html.h"
  ```

##Licence

The wrapper is available under the MIT license. Note that the actual library is not licensed under the MIT license.

这个封装库是基于 MIT 协议开源的。大家要注意的是，Sundown 库并不是基于 MIT 协议开源的。