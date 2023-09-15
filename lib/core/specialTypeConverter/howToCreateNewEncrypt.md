# Converter App

## Introduction

This is a converter app that allows you to create custom converters for different encoding and decoding operations. To create a new encrypt type, follow the steps below:

## Creating a New Encrypt type

1. **Create your new Encrypt class under encrypts package.** Follow spelling rules. Example:"encrypt_x.dart"
2. **Your new encrypt type must inherits Encrypt which is under same package.** Not required but it is recommended to create .dumb() and .parse() named constructors.
3. **Create a parser method according structure of your special encryption type.** Create under encryption/parser.
4. **Add your new encrypt type to EncryptionTypes(enum) then add your encrypt inside of getDumbObject() extension method.** -you need a .dumb() named constructor for it.-
5. **Lastly write propper transformations to Algorithms(enum) and ExtensionAlghorithms of your converter that depends on new encrypt type of you.**