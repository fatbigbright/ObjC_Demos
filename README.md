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
6. 20130928.ProtocolDemo:   
重新认识一下Protocol
7. 20130930.DelegateDemo:   
用一个UITextField来解释委托模式的基本形式。
8. 20131001.ObserverDemo:   
国庆快乐！这个国庆的周年数字好敏感啊。今天的Demo是一个观察者模式的实现。参照《iOS开发指南——从零基础到App Store上架》第3.2.2节的例子进行的修改。主要修改了Subject协议的实现部分，把观察者列表改为了私有成员。
9. 20131002.NotificationDemo:   
观察者模式的具体应用：通知机制。
10. 20131003.KVODemo:   
观察者模式的具体应用：KVO机制。AppStatusWatcher类继承自NSObject，而NSObject实现了NSKeyValueObserving协议。发送addObserver消息给AppDelegate对象，使其监控appStatus属性的值变化。每当变化时，就会发送AppStatusWatcher的ObserveValueForKeyPath消息。
11. 20131004.LabelButtonDemo:   
简单的标签按钮演示，如何连接输出口，如何连接Action。
12. 20131005.SwitchSliderBar:   
演示开关、滑块还有分段控件的基本用法和效果。
13. 20131006.WebViewDemo:   
演示UIWebView的基本用法。
14. 20131007.ScrollViewDemo:   
UIScrollView的基本用法，之一。
15. 20131008.KeyboardDemo:   
之前漏掉了UITextField的那节，导致今天看书感觉断片儿了……只得一起补上了。文本框控件需要注意的是两点：一个是如何关闭键盘的讲究，本例只试验了“第一响应者”的方式。还有好几种方式，具体可以参看[这篇博文](http://blog.csdn.net/mikixiyou/article/details/8547615)；二是键盘打开和关闭时的回调，要依靠10月2日的例子中演示的通知中心机制。具体看书吧，[链接在此](http://www.ituring.com.cn/article/34708)。
16. 20131009.ActivityIndicatorViewProgressViewDemo:   
进度条和活动指示器的使用。NSTimer的使用方法还需研究。
17. 20131010.AlerViewActionSheetDemo:   
警告与操作表。注意操作表好像有多种出现方式，比如工具栏。但似乎从工具栏中出现也没什么不一样的。还是我的Demo的写法不对？
18. 20131011.ToolBarNavigationBarDemo:   
工具栏和导航栏。
19. 20131012.AutoLayeroutDemo: 
自动布局和横纵屏。view.transform = CGAffineTransformMakeRotation(弧度)可以对视图进行几何变换。