import 'package:test/test.dart';

import '../travel.dart';

void main() {
  test('Travel Distance', () {
    // Arrange
    var distance = 10.0;
    var expectedDistance = distance;

    // Act
    var travel = Travel(expectedDistance);
    var result = travel.distance;

    // Assert
    expect(expectedDistance, result);
  });

  test('Travel Distance to Miles', () {
    // Arrange
    var miles = 10.0;
    var expectedMiles = miles * convertToMiles;

    // Act
    var travel = Travel(miles);
    var result = travel.distanceToMiles();

    // Assert
    expect(expectedMiles, result);
  });

  test('Travel Distance to Kilometers', () {
    // Arrange
    var kilometers = 10.0;
    var expectedKilometers = kilometers * convertToKilometers;

    // Act
    var travel = Travel(kilometers);
    var result = travel.distanceToKilometers();

    // Assert
    expect(expectedKilometers, result);
  });
}
