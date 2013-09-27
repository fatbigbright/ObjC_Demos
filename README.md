ObjC_Demos
==========
***
*重要更新履历*   
#####2013-09-25   
    从今天开始，效仿`https://github.com/fatbigbright/HTMLCSS.git`暂时还算成功的经验，增加一项每天使用XCode编程的作业。快要十一放假了，这是第一个容易引起坚持中断的假期。如果有要出去玩的事，就要做好双份的作业。无人监督，唯有自勉。接下来半年是最关键的。
***

All my demo programs to practice and test objective-C

1. ProtocolDemo00:   
practice for protocol.
2. MultiViewDemo00:    
  对于NavigationController，如果想要SecondViewController能够将参数返回给RootViewController，并且在pop之后马上在RootViewController中显示出来，则需要在SecondViewController中定义一个RootViewController的对象引用，并将这个引用指向RootViewController，同时RootViewController要提供相应的更新其视图的方法。   
另外，可以让所有这个的视图继承自同一个接口（protocol），再给继随的navigationcontroller类定义一个方法，让这个方法去编历所有视图，同时更新。
3. ClassDemo:   
  最基本的类定义和对象使用。
4. 20130926.BlockDemo:   
  有关Block的Demo。主要参照了苹果公司开发者网站的[这篇文章](https://developer.apple.com/library/mac/documentation/Cocoa/Conceptual/ProgrammingWithObjectiveC/WorkingwithBlocks/WorkingwithBlocks.html#//apple_ref/doc/uid/TP40011210-CH8-SW1)。
5. 20130927.BlockDemo:   
  继续昨天的学习。[另一篇参考文章](https://developer.apple.com/library/mac/documentation/Cocoa/Conceptual/Blocks/Articles/bxVariables.html#//apple_ref/doc/uid/TP40007502-CH6-SW3)，先马克一下。
