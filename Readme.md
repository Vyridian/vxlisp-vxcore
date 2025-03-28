# Core vxlisp library

## Links
* [Core Web Site](https://vyridian.github.io/vxlisp-vxcore)
* [Core Repository](https://github.com/Vyridian/vxlisp-vxcore)
* [Core API](https://vyridian.github.io/vxlisp-vxcore/build/doc/doc.html)
* [Compiler Web Site](https://vyridian.github.io/vxlisp)
* [Compiler Repository](https://github.com/Vyridian/vxlisp)

## Test Suites:
* [Js](https://vyridian.github.io/vxlisp-vxcore/public/testjs.html)
* [Java](https://vyridian.github.io/vxlisp-vxcore/build/java/src/test/resources/testsuite.html)
* [C++](https://vyridian.github.io/vxlisp-vxcore/build/cpp/src/test/resources/testsuite.html)
* [CSharp](https://vyridian.github.io/vxlisp-vxcore/build/csharp/test/resources/testsuite.html)
* [Kotlin](https://vyridian.github.io/vxlisp-vxcore/build/kotlin/app/src/test/kotlin/resources/testsuite.html)

## Purpose

* This library is intended to be compiled into all vxlisp projects.

* It also serves as a demonstration of code written in vxlisp.

## Script Commands

* ./scripts/doc - This command builds the documenation html.

* ./scripts/buildall - This command builds doc, cpp, js, java, C++, CSharp, and Kotlin source and test files.

* ./scripts/buildcpp - This command builds c++ source and test files.

* ./scripts/buildcsharp - This command builds csharp source and test files.

* ./scripts/buildjava - This command builds java source and test files.

* ./scripts/buildjs - This command builds js source and test files.

* ./scripts/buildkotlin - This command builds kotlin source and test files.

* ./scripts/webserver - This command runs the development webserver to server docs and test suite output.

# Language Specific Tools

## C++
* g++ and make - https://code.visualstudio.com/docs/cpp/config-mingw
* Note: The make files don't make the deps and build folders, so they currently need to be made manually.

## C#
* dotnet sdk

## Java
* jdk
* junit
* gradle
* maven

## Kotlin
* jdk
* junit
* gradle
* maven
