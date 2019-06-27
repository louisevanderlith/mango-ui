import 'dart:html';

/// A [NodeValidator] which allows everything.
class TrustedNodeValidator implements NodeValidator {
  bool allowsElement(Element element) => true;
  bool allowsAttribute(element, attributeName, value) => true;
}
