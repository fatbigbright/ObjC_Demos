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
20. 20131013.DatePicker:   
日期选择器。
21. 20131014.NormalPickerDemo: 
一般的Picker的实例，较昨天的例子略复杂一点。数据源协议和代理协议都用到了。到了表格，会用得更多。楽しみに吧。
22. 20131015.CollectionViewDemo:   
集合视图的使用。注意，集合视图的单元格自定义尺寸时要保证单元格本身的尺寸和集合视图中的单元格尺寸同时被设置为相同的值，否则会存在显示不正常的情况。
23. 20131016.TableViewDemo:   
简单表视图。多写几次就记住了……
24. 20131017.TableViewCustomizeCellDemo:   
自定义表视图中的单元格。
25. 20131018.TableViewSearchBarDemo:  
为表视图增加搜索栏，注意在Storyboard中添加搜索栏时，要保证把搜索栏拖拽到TableView的紧上边（与上方状态栏之间，搜索栏的控件悬停在附近时出现蓝色亮线的地方）。否则可能出现诡异的搜索栏不显示的问题。
26. 20131019.TableViewWithSectionsDemo:   
为表视图增加索引。
27. 20131020.TableViewWithSectionAndSearchBarDemo: 
综合前面两天的Demo，实现一个带索引，并且索引能动态随搜索栏变化的表视图。
28. 20131021.StaticTableViewDemo:   
今天没状态。只写个静态表的简单Demo。
29. 20131022.AddingDeletingLineInTableView:   
能插入删除记录的表视图。争取周末做个综合的。
30. 20131023.MoveTableViewLineDemo:   
实现移动单元格的功能。
31. 20131024.RefreshTableViewDemo:   
实现动态刷新的表视图。这种效果适合数据更新比较频繁的列表。比如微博。
32. 20131025.ModalTransitionDemo:   
模态视图的创建显示和数据的传递。
33. 20131028.PageControlNavigation:  
断了两天。烧得太难受了。今天是分页视图。一直觉得那几个小点的存在没什么意义，一个滚动视图就搞定不好吗？
34. 20131029.PageControlNavigationDemo:   
PageViewController的使用。
35. 20131030.TabDemo:   
使用Nib文件建立一个TabBar的Demo。注意参考这篇文章： [Loaded nib but the view outlet was not set](http://stackoverflow.com/questions/4763519/loaded-nib-but-the-view-outlet-was-not-set-new-to-interfacebuilder)。
36. 20131031.TabStoryBoardDemo:   
昨天那个Demo的故事板实现版，零代码实现。
37. 20131101.NavigationDemo:   
带导航栏的多级表视图。一级有故事板辅助设计，二级为纯代码实现。发现始终不能正常把三级详细视图压入导航栏堆栈。各种不懂。先留着，以后可能就懂了。明天先按书实现一个全故事板的。
38. 20131103.NavigationStoryboardDemo:  
故事板实现的三级导航。
39. 20131104.NavigationComboDemo:   
组合导航模式的故事板实现。
40. 20131105.PopoverDemo:   
iPad独有的Popover视图。
41. 20131106.SplitViewDemo:   
iPad独有的分割视图。
42. 20131108.ModalViewDemo:   
命名错了，应该是20131109，算了不改了。尝试在prepareForSegue中修改destinationViewController的modalPresentationStyle，发现不管用！！
20131111光棍节更新：如果segue连接之后对于presentation等都不做设置，即保持默认状态。则发现管用！！
43. 20131111.MasterDetailNIBDemo:  
XCode4自带的MasterDetail的Universal模板有毛病，ipad版中DetailView的Label没有正常连接到对应类的成员上。
44. 20131113.MasterDetailStoryboardDemo:   
故事板版本的MasterDetail例子，同样不需要写什么编码。
45. 20131116.TableViewDemo:   
复习一下带搜索栏的表视图的实现方法。
46. 20131119.TableIndexingDemo:   
复习，带索引的表视图。
47. 20131125.HanoiTowerDemo:   
鱼妹妹正在学习递归，先写好个汉诺塔方便回来讨论。
48. 20131129.AppSettingsDemo:   
    * 书中设置与配置各指什么？设置指退出程序进行的程序设定；配置是指在程序运行中可以进行的设定。
    * 多值选项中Values和Titles要同时设置，否则无法在系统设置中看到。
    * 在.plist文件编辑界面中点击右键，选择Propery List Type->iPhone Settings plist可以把手动编辑的设置文件转为标准的settings.plist文件。
    * 20131201: 读取部分完成。