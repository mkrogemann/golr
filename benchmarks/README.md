golr benchmarks
===============

All benchmarks were taken on this hardware:

- MacBook Air, 13-inch, Mid 2011
- Processor 1.7 GHz Intel Core i5
- Memory 4GB 1333 MHz DDR3
- Graphics  Intel HD Graphics 3000 384 MB
- SSD: 256 GB

Using this Software environment:
- Mac OS X Lion 10.7.5 (11G63b)
- Various Rubies, managed through RVM

The filenames of the benchmark results consist of the Ruby version and the git hash of the golr code base that was used for benchmarking.

The files are kept in subfolders named 'v0.5.4' etc. These names correlate to the release tags of golr.

The conditions are not 'clean room', the machine is not freshly booted for benchmarking, etc...

Learnings
=========

- Switching from String-based Key to an Array ("simulating a Tuple") improved performance as expected for all Rubies except JRuby, which came as a surprise
- Using no Key at all but a two-dimensional Array instead did not yield any improvements, but perfomed worse by 4% for MRI-1.9.3

