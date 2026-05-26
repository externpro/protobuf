# protobuf dependencies

|project|license [^_l]|description [dependencies]|version|source|diff [^_d]|
|-------|-------------|--------------------------|-------|------|----------|
|<a id='protobuf' />[protobuf](https://developers.google.com/protocol-buffers/)|[BSD-3-Clause](https://github.com/protocolbuffers/protobuf/blob/v3.14.0/LICENSE 'BSD 3-Clause New or Revised License')|language-neutral, platform-neutral extensible mechanism for serializing structured data [deps: _zlib_]| |[upstream](https://github.com/protocolbuffers/protobuf 'github.com/protocolbuffers/protobuf')|  [patch]|
|<a id='zlib' />[zlib](https://zlib.net/ 'zlib website')|[Zlib](https://zlib.net/zlib_license.html 'zlib/libpng license, see https://en.wikipedia.org/wiki/Zlib_License')|a general-purpose lossless data-compression library|[xpv1.3.2.1](https://github.com/externpro/zlib/releases/tag/xpv1.3.2.1 'release')|[repo](https://github.com/externpro/zlib 'github.com/externpro/zlib') [upstream](https://github.com/madler/zlib 'github.com/madler/zlib')|[diff](https://github.com/externpro/zlib/compare/v1.3.2...xpv1.3.2.1 'github.com/externpro/zlib/compare/v1.3.2...xpv1.3.2.1') [patch]|

![deps](xprodeps.svg 'dependencies')

Dependency version check: all 1 parent-manifest versions match pinned versions.

|diff  |description|
|------|-----------|
|patch |diff modifies/patches existing cmake|
|intro |diff introduces cmake|
|auto  |diff adds cmake to replace autotools/configure/make|
|native|diff adds cmake but uses existing build system|
|bin   |diff adds cmake to repackage binaries built elsewhere|
|fetch |diff adds cmake and utilizes FetchContent|

[^_l]: see [SPDX License List](https://spdx.org/licenses/ '') for a list of commonly found licenses
[^_d]: see table above with description of diff
