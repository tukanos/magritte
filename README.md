## GemStone port
This is port is intended to work with **GemStone 3.7.2 or newer** (using Filetree).  It also works, meaning it passes all tests, for **Pharo 12** and **Pharo 13** (using Tonel).

The GemStone part is loaded using Filetree, which was converted from the Tonel repository using the conversion utility [T2F2T-Conversion](https://github.com/GsDevKit/T2F2T-Conversion).  Huge obvious disadvantage of this approach is creating a duplicate code which needs to be maintained.  Any change in Tonel side of things (`../source`) needs to be ported Filetree (`../filetree`) and other way around.

 1) Load latest Magritte to GemStone:

 - part 1:

```Smalltalk
GsDeployer deploy: [
    Metacello new
        baseline: 'Magritte';
        repository: 'github://tukanos/magritte:PharoAndGemStone/filetree';
        load
]
```
 - part 2:

That is not all you **need** to load Traits too (there is no way to load it via Filetree so you need).
Adding MATPropertyOwner trait to MAObject:

```Smalltalk
"Loading traits directly from gs file, placed on GemStone server."
GsFileIn fromGemHostPath: '/<path>/gsFiles/MATPropertyOwner.gs'
```

In case you need to load TMagritteBootstrap trait:
```Smalltalk
"Loading traits directly from gs file, placed on GemStone server."
GsFileIn fromGemHostPath: '/<path>/gsFiles/TMagritteBootstrap.gs'
```

*Note:* Don't forget to *commit* after loading the gs files.  Otherwise you won't get loaded traits.

 2) Load latest Magritte into Pharo 12/13:

```Smalltalk
    Metacello new
      baseline: 'Magritte';
      repository: 'github://github://tukanos/magritte:PharoAndGemStone/source';
      load 
```

**Notes:**

 - In future, there will be a way to load a Tonel and Filetree code to GemStone using the new [Rowan](https://github.com/GemTalk/Rowan?tab=readme-ov-file) project/package management system.

 - There is a way to load [Tonel](https://github.com/GsDevKit/tonel/tree/gs_master) to Gemstone. The issue is that Metacello used in GemStone currently supports only Filetree.

 - The log of passing tests from GemStone 3.7.2:

```Smalltalk
Test suite:MADurationDescriptionTest: Error count: 0; FailureCount: 0; Passed: 68; Run: 68
Test suite:MASingleOptionDescriptionTest: Error count: 0; FailureCount: 0; Passed: 78; Run: 78
Test suite:MAMemoDescriptionTest: Error count: 0; FailureCount: 0; Passed: 61; Run: 61
Test suite:MAPasswordDescriptionTest: Error count: 0; FailureCount: 0; Passed: 62; Run: 62
Test suite:MADescriptionTest: Error count: 0; FailureCount: 0; Passed: 1423; Run: 1423
Test suite:MADateAndTimeDescriptionTest: Error count: 0; FailureCount: 0; Passed: 69; Run: 69
Test suite:MAContainerTest: Error count: 0; FailureCount: 0; Passed: 67; Run: 67
Test suite:MAPriorityContainerTest: Error count: 0; FailureCount: 0; Passed: 67; Run: 67
Test suite:MADateDescriptionTest: Error count: 0; FailureCount: 0; Passed: 68; Run: 68
Test suite:MATableDescriptionTest: Error count: 0; FailureCount: 0; Passed: 60; Run: 60
Test suite:MAColorDescriptionTest: Error count: 0; FailureCount: 0; Passed: 59; Run: 59
Test suite:MANumberDescriptionTest: Error count: 0; FailureCount: 0; Passed: 73; Run: 73
Test suite:MABooleanDescriptionTest: Error count: 0; FailureCount: 0; Passed: 65; Run: 65
Test suite:MATokenDescriptionTest: Error count: 0; FailureCount: 0; Passed: 60; Run: 60
Test suite:MAClassDescriptionTest: Error count: 0; FailureCount: 0; Passed: 59; Run: 59
Test suite:MAFileDescriptionTest: Error count: 0; FailureCount: 0; Passed: 59; Run: 59
Test suite:MAToOneRelationDescriptionTest: Error count: 0; FailureCount: 0; Passed: 61; Run: 61
Test suite:MARelationDescriptionTest: Error count: 0; FailureCount: 0; Passed: 189; Run: 189
Test suite:MAToManyRelationDescriptionTest: Error count: 0; FailureCount: 0; Passed: 64; Run: 64
Test suite:MAToManyScalarRelationDescriptionTest: Error count: 0; FailureCount: 0; Passed: 64; Run: 64
Test suite:MAElementDescriptionTest: Error count: 0; FailureCount: 0; Passed: 1289; Run: 1289
Test suite:MAReferenceDescriptionTest: Error count: 0; FailureCount: 0; Passed: 457; Run: 457
Test suite:MAOptionDescriptionTest: Error count: 0; FailureCount: 0; Passed: 148; Run: 148
Test suite:MAMultipleOptionDescriptionTest: Error count: 0; FailureCount: 0; Passed: 70; Run: 70
Test suite:MAStringDescriptionTest: Error count: 0; FailureCount: 0; Passed: 60; Run: 60
Test suite:MASymbolDescriptionTest: Error count: 0; FailureCount: 0; Passed: 60; Run: 60
Test suite:MAMagnitudeDescriptionTest: Error count: 0; FailureCount: 0; Passed: 347; Run: 347
Test suite:MATimeDescriptionTest: Error count: 0; FailureCount: 0; Passed: 69; Run: 69
```

## The upstream README:
[![Build Status](https://travis-ci.org/magritte-metamodel/magritte.svg?branch=master)](https://travis-ci.org/magritte-metamodel/magritte)

Most applications consist of a big number of model- or so called domain-objects. Building different views, editors, and reports; querying, validating and storing those objects is very repetitive and error-prone, if an object changes its shape frequently.

Magritte is a fully dynamic meta-description framework that helps to solve those problems, while keeping the full power with the programmer in all aspects. Moreover since Magritte is described in itself, you can let your users modify the meta-world and add their own fields and forms without writing a single line of code.

### Installation
  * [Pharo Smalltalk](http://www.pharo.org/):
    * Pharo 8.x - 13.x:
    ```smalltalk
    Metacello new
      baseline: 'Magritte';
      repository: 'github://magritte-metamodel/Magritte';
      load
       ```
    * Pharo 4.x: In the Configuration Browser (under [World Menu]->Tools), "Load Stable Version"
    * Previous versions: Load `ConfigurationOfMagritte3` from http://smalltalkhub.com/mc/Magritte/Magritte3/main/. 
  * [GemStone Smalltalk](http://seaside.gemstone.com/): Get the latest code from Gemstone repository at https://github.com/GsDevKit/Magritte3 .
  * [GemStone 3.7.2 or newer Smalltalk](https://gemtalksystems.com/): Get the latest code from Gemstone repository at https://github.com/tukanos/magritte .
  * [Cincom Smalltalk](http://www.cincomsmalltalk.com/): Load the bundle `MagritteForVisualWorks` from the Cincom public StORE.
  * [GNU Smalltalk](http://smalltalk.gnu.org/): An initial port is available through the the GNU Smalltalk git repository. 

Christoph Lamprecht ported Magritte to [Perl](http://sites.google.com/site/vlclamprecht/Home/perl).

### Add as a project dependency

In you project Baseline or Configuration definition, add to the spec:

```
baseline: 'Magritte' 
with: [ spec repository: 'github://magritte-metamodel/magritte:v3.8'; 
             loads: #(Core) ]; 
```

This snippet uses v3.8 release version that is not compatible with Pharo 12+, remember to change the release version to your needs. See BaselineOfMagritte for other groups to load beside of 'Core'.

### Mailing-Lists
  * [Magritte, Pier and Related Tools](https://www.iam.unibe.ch/mailman/listinfo/smallwiki)
  * [Seaside](http://lists.squeakfoundation.org/cgi-bin/mailman/listinfo/seaside)

### Development
  * [Code Repository](http://smalltalkhub.com/\#\!/~Magritte/Magritte3)
  * [Add-On Repository](http://smalltalkhub.com/\#\!/~Magritte/MagritteAddons)
  * [Report Issue](https://github.com/magritte-metamodel/magritte/issues)

### Documentation
  * [Magritte Chapter in Seaside Book](http://book.seaside.st/book/advanced/magritte)
  * [Using Magritte in Seaside](http://onsmalltalk.com/using-magritte-with-seaside)
  * Ongoing work: [A booklet on the Magritte the Meta Data-Driven Framework](https://github.com/SquareBracketAssociates/Booklet-Magritte)
  * [The Magritte Wiki](https://github.com/magritte-metamodel/magritte/wiki)
  
### Papers
  * [Magritte – Meta-Described Web Application Development](http://sdmeta.gforge.inria.fr/Teaching/Lille/0910-MetaModelisation/Magritte/Reng06a.pdf)
  * [Magritte – A Meta-Driven Approach to Empower Developers and End Users](http://scg.unibe.ch/archive/papers/Reng07aMagritte.pdf)
  
