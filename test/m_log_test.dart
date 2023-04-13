import 'package:flutter_test/flutter_test.dart';
import 'package:m_log/m_log.dart';

void main() {
  test('Log the value', () {
    MLog.d(tag: "MARAJ -->> ",content: "This is D");
    MLog.e(tag: "MARAJ -->> ",content: "This is E");
    MLog.i(tag: "MARAJ -->> ",content: "This is I");
    MLog.v(tag: "MARAJ -->> ",content: "This is V");
    MLog.w(tag: "MARAJ -->> ",content: "This is W");
  });
}
