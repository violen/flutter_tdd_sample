import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd_sample/models/person.dart';

class MockPerson extends Mock implements Person {}

void main() {
  // Testing here

  test('validate invocation and return of cheering', () {
    var mockedPerson = MockPerson();
    mockedPerson.cheer();
    verify(mockedPerson.cheer());
  });

  test('validate age', () {
    var person = Person(name: 'Hans Wurst', age: 12);
    expect(person.age, 12);
    expect(person.cheer(), 'YAAAY!!!');
  });


  test('validate mom and dad', () {
    List<Person> parents = [MockPerson(), MockPerson()];

    var child = Person(name: 'Hugo', age: 10);
    child.parents.addAll(parents);

    expect(child.parents.length, 2);
  });

  test('random generated', () {
    var children = List<Person>.generate(10, (n) => MockPerson() );

    var father = Person(name: 'Dude', age: 55);
    father.children.addAll(children);

    expect(father.children.length, 10);
  });
}
