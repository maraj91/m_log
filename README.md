# m_log

a lite log utility for the flutter, provide runtime log with different color which became easy to identify at run time,  when debug mode print console window, user can adjust log level control log print

## Features

1: debug mode print to console
2: control print log level

## Use this package as a library

1. Depend on it [m_log](https://pub.dev/packages/m_log)

Add this to your package's pubspec.yaml file:

```
dependencies:
  m_log: ^0.0.6
  
``` 

2. Install it

You can install packages from the command line:

with Flutter


```
$ flutter pub add m_log
  
```

Alternatively, your editor might support flutter packages get. Check the docs for your editor to learn more.

3. Import it

Now in your Dart code, you can use:

```
import 'package:m_log/m_log.dart';
  
```

## How to use

```

MLog.d(tag: "MARAJ -->> ",content: "This is D");
MLog.e(tag: "MARAJ -->> ",content: "This is E");
MLog.i(tag: "MARAJ -->> ",content: "This is I");
MLog.v(tag: "MARAJ -->> ",content: "This is V");
MLog.w(tag: "MARAJ -->> ",content: "This is W");

```

## Output

![](https://github.com/maraj91/m_log/blob/master/screenshot/console_output.png)


## tag field is optional
