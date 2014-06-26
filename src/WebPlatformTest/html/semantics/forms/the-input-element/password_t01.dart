/**
 * after web-platform-tests/html/semantics/forms/the-input-element/password.html
 * @assertion
 * <link rel="help" href="http://www.w3.org/html/wg/drafts/html/master/forms.html#password-state-%28type=password%29">
 * @description Password input element
 */
import 'dart:html';
import "../../../../Utils/expectWeb.dart";

const String htmlEL='''
<input id="password" type="password" />
<input id="password_with_value" type="password" value="foobar" />
''';

void main() {
  document.body.appendHtml(htmlEL);
  var password;
  
  void setup() {
    password = document.getElementById("password");
  }

  test(() {
    setup();
    assert_equals(password.value, "");
    assert_equals(document.getElementById("password_with_value").value, "foobar");
  }, "Value returns the current value for password");

  test(() {
    setup();
    password.value = "A";
    assert_equals(password.value, "A");
    assert_equals(password.getAttribute("value"), null);
    password.value = "B";
    assert_equals(password.value, "B");
    assert_equals(password.getAttribute("value"), null);
  }, "Setting value changes the current value for password, but not the value content attribute");

  test(() {
    setup();
    // Any LF (\n) must be stripped.
    password.value = "\nAB";
    assert_equals(password.value, "AB");
    password.value = "A\nB";
    assert_equals(password.value, "AB");
    password.value = "AB\n";
    assert_equals(password.value, "AB");

    // Any CR (\r) must be stripped.
    password.value = "\rAB";
    assert_equals(password.value, "AB");
    password.value = "A\rB";
    assert_equals(password.value, "AB");
    password.value = "AB\r";
    assert_equals(password.value, "AB");

    // Any combinations of LF CR must be stripped.
    password.value = "\r\nAB";
    assert_equals(password.value, "AB");
    password.value = "A\r\nB";
    assert_equals(password.value, "AB");
    password.value = "AB\r\n";
    assert_equals(password.value, "AB");
    password.value = "\r\nA\n\rB\r\n";
    assert_equals(password.value, "AB");
  }, "Value sanitization algorithm should strip line breaks for password");

  checkTestFailures();
}