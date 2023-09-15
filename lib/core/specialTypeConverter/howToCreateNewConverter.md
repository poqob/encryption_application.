# Converter App

## Introduction

This is a converter app that allows you to create custom converters for different encoding and decoding operations. To create a new converter, follow the steps below:

## Creating a New Converter

To create a new converter for your encoding and decoding needs, follow these steps:

1. **Create Your Converter Class:** Start by creating a new Dart class for your converter. This class will handle the encoding and decoding operations. Then
    **Create Propper types under encryption/encrypts**
2. **Inherit `AConverter` Abstract Class:** Make sure your converter class inherits from the `AConverter` abstract class. This abstract class provides a structure for implementing converters. Do not forget to create `XDecoder` that inherits `ADecoder` and `XCoder` which inherits `ACoder` as well.

3. **Factory Constructor:** Implement a factory constructor for your converter. This constructor should call the default `encode` and `decode` methods from the encoder and decoder classes you want to use. You can also provide default instances of your encoder and decoder classes if needed.

4. **Implement Your Conversion Methods:** In addition to the default `encode` and `decode` methods, you can add any other custom binary-based methods that your converter requires. These methods should perform the specific encoding or decoding logic you need.

5. **Use Your Converter:** Once your converter class is defined, you can create an instance of it using the factory constructor. Then, you can use it to encode and decode text as per your requirements.

Feel free to customize your converter class to suit your encoding and decoding needs. 
