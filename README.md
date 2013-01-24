ObjC_Demos
==========

All my demo programs to practice and test objective-C

1. ProtocolDemo00: practice for protocol.
2. MultiViewDemo00: 
  对于NavigationController，如果想要SecondViewController能够将参数返回给RootViewController，并且在pop之后马上在RootViewController中显示出来，则需要在SecondViewController中定义一个RootViewController的对象引用，并将这个引用指向RootViewController，同时RootViewController要提供相应的更新其视图的方法。
  另外，可以让所有这个的视图继承自同一个接口（protocol），再给继随的navigationcontroller类定义一个方法，让这个方法去编历所有视图，同时更新。
