[TOC]
> ###  条形码
# 条形码
## 简介
条形码(barcode)是将宽度不等的多个黑条和空白，按照一定的编码规则排列，用以表达一组信息的图形标识符。常见的条形码是由反射率相差很大的黑条（简称条）和白条（简称空）排成的平行线图案。条形码可以标出物品的生产国、制造厂家、商品名称、生产日期、图书分类号、邮件起止地点、类别、日期等许多信息，因而在商品流通、图书管理、邮政管理、银行系统等许多领域都得到广泛的应用 。



 ![barcode](http://www.t-x-m.com/barcode.asp?bc1=123456789012&bc2=10&bc3=3.5&bc4=1.2&bc5=1&bc6=1&bc7=Arial&bc8=15&bc9=1)

简单来说条形码可分为商品码 和 内码,
**商品码**: 是EAN13码, 是国家编码中心管理的, 用来表示某具体厂家和型号的产品, 一般由厂家、产品码、价格等信息组成, 商品码由于是编码中心管理, 可以在各大商场门市被扫描辨别.
此条形码分为4个部分，以条形码6936983800013 为例从左到右分别为：
1-3位：共3位，对应该条码的693，是中国的国家代码之一。（690--695都是中国的代码，由国际上分配，赋码权在国际物品编码协会）
4-8位：共5位，对应该条码的69838，代表着生产厂商代码，由厂商申请，国家分配。可到所在地的编码中心分支机构办理申请厂商识别代码
9-12位：共4位，对应该条码的0001，代表着厂内商品代码，由厂商自行确定
第13位：共1位，对应该条码的3，是校验码，依据一定的算法，由前面12位数字计算而得到。
公式第13位算法：
代码位置序号是指包括校验bai码在内的，由右至左的顺序号（校验码的代du码位置序号为1）。
1：取出该数的奇数位的和，c1=6+3+9+3+0+0=21；
2：取出该数的偶数位的和，c2=9+6+8+8+0+1=32；
3：将奇数位的和与“偶数位的和的三倍”相加。
4：取出结果的个位数：117（117%10=7）；
5：用10减去这个个位数：10-7=3；
6：对得到的数再取个位数（对10去余）3%10=3；
**内码**: 就是企业内部根据自身需要自由设计的条形码, 没有统一规定, 可以用在员工ID、设备ID、产品ID、产品包装ID、原料批次号等等;
如何识别其中的信息？
条形码本身就可以包含必要信息,就像商品码一样, 也可以只是随便一个唯一号(比如 日期 + 流水号) , 然后在发行条形码时在后台数据库存储这个ID对应的完整信息, 然后扫描条形码时就可以去数据库找出其对应的信息,使得它有意义!

注意：**商品条形码并不代表产品的原产地**（即并不能直接说明该商品是国内产品还是进口产品），只代表管理商品条码的国家或地区的编码组织，也就是说以“690－695”开头的条码只是某商品的生产商（或经销商）在中国内陆地区申请的厂商识别代码。以美国雪碧为例，若需在中国销售，其条形码可以由美国总公司在美国境内申请，也可以由中国的代理商在中国申请。如果是美国总公司申请的，其前缀码则是00－09，若为中国大陆的代理申请，则其前缀码为690－695。与此同时，**在国内生产的商品，也可以使用境外注册的商品条码。**

## 识别原理

条码符号是由反射率不同的“条”、“空”按照一定的编码规则组合起来的一种信息符号。由于条码符号中“条”、“空”对光线具有不同的反射率，从而使条码扫描器接受到强弱不同的反射<u>光信号</u>，相应地产生电位高低不同的电脉冲。而条码符号中“条”、“空”的宽度则决定电位高低不同的电脉冲信号的长短。扫描器接收到的光信号需要经光电转换成电信号并通过放大电路进行放大。由于扫描光点具有一定的尺寸、条码印刷时的边缘模糊性以及一些其他原因，经过电路放大的条码电信号是一种平滑的起伏信号，这种信号被称为“模拟电信号”。<u>“模拟电信号”</u>需经整形变成通常的“数字信号”。根据码制所对应的编码规则，译码器便可将<u>“数字信号”</u>识读译成数字、字符信息
## 码制分类
码制即指条形码条和空的排列规则
世界上常用的码制有EAN条形码、UPC条形码、25条形码、交叉25条形码、库德巴条形码、Code 39条形码和Code 128条形码等 。

1，UPC条形码（统一产品代码）：只能表示数字，有A、B、C、D、E五个版本，版本A-12位数字，版本E-7位数字，最后一位为校验位，大小是宽1.5in（英寸）（lin - 2.54cm），高1in，而且背景要清晰，主要在美国和加拿大使用，用于工业、医药、仓储等部门   。
2，EAN条形码：是国际通用的符号体系，是一种长度固定、无含意的条形码，所表达的信息全部为数字，主要应用于商品标识  。还用于在全球范围内（主要在欧洲）进行销售点扫描的消费品标签。它们看起来与UPC代码非常相似，主要区别在于它们的地理应用。尽管EAN-13（包含13位数字）是默认的外形尺寸，但您会在空间有限的产品（如小糖果）上找到EAN-8（覆盖8位数字）条形码。EAN代码的主要优点是灵活性。EAN-13是一种高密度条形码，可以在较小的区域内编码相对大量的数据，而EAN-8代码非常适合识别非常小的产品或资产。EAN代码也易于一维扫描仪读取，从而使扫描过程快速无缝。

3，Code 39条形码和Code 128条形码：为目前国内企业内部的自定义码制，可以根据需要确定条形码的长度和信息，它编码的信息可以是数字，也可以包含字母，主要应用于工业生产线领域、图书管理等，如表示产品序列号、图书、文档编号等   。
4，Code 93码：是一种类似于Code 39码的条形码，它的密度较高，同样适用于工业制造领域 [7]  。
交叉25条形码（也叫穿插25码）：只能表示数字0－9，长度可变，条形码呈连续性，所有条与空都表示代码，第一个数字由条开始，第二个数字由空组成，应用于商品批发、仓库、机场、生产（包装）识别、商业中，条形码的识读率高，可用于固定扫描器的可靠扫描，在所有一维条形码中的密度最高 。
5，库德巴条形码( Codabar)：也称“血库用码”，可表示数字0－9，字符$、+、－，还有只能用作起始和终止符的a、b、c、d四个字符，空白区比窄条宽10倍，非连续性条形码，每个字符表示为4条3空，条形码长度可变，没有校验位，主要应用于血站的献血员管理和血库管理，也可作物料管理、图书馆、机场包裹发送中  。
6，PDF417二维条形码（简称417条形码）：典型的二维条形码码制，不需要连接一个数据库，本身就可以存储大量数据。417条形码主要应用于医院、驾驶证、物料管理、货物运输；特点是当条形码受到一定破坏时，错误纠正能使条形码正确解码；PDF417条形码是Symbol科技公司于1990年研制的二维条形码产品。它是一个多行、连续性、可变长、包含大量数据的符号标识。每个条形码有3－90行，每一行有一个起始部分、数据部分、终止部分，它的字符集包括所有128个字符，最大数据含量是1850个字符 。

## 码制特点

UPC

- 用于对全球贸易识别码（GTIN）进行编码。
- 包含6（UPC-E）或12（UPC-A）数字。
- 最后一位用作mod10校验和。
- 可以将其他数据存储在EAN-2或EAN-5附加代码中。
- 它已按照ISO / IEC 15420进行了标准化。

EAN

- 用于对全球贸易识别码（GTIN）进行编码。
- 包含8（EAN-8）或13（EAN-13）数字。
- 最后一位用作mod10校验和。
- 可以将其他数据存储在EAN-2或EAN-5附加代码中。
- 它已按照ISO / IEC 15420进行了标准化。

Code 39

- 通常用于物流中，以编码特定于应用程序的标识符。
- 标准版本可以编码数字0-9，大写字母AZ，符号-。$ / +％和空格。
- 支持可变长度的数据内容。
- 支持从1：2到1：3的窄条到宽条比率。建议使用1：2.5。
- 默认情况下，不验证校验和。
- 它已按照ISO / IEC 16388进行了标准化。

Code 128

- 用途广泛。
- 条形码数据只能是数字数据，也可以是ASCII表的两个不同子集。三种不同模式的组合可以在单个代码中使用。
- 支持可变长度的数据内容。
- 强制校验和已验证。
- 它已根据ISO / IEC 15417进行了标准化。

Code 93

- 通常用于物流中，以编码特定于应用程序的标识符。
- 支持标准编码（数字0-9，大写字母AZ，符号-。$ / +％和空格）和完全ASCII模式（包括控制字符）的数据。
- 支持可变长度的数据内容。
- 验证了两个mod47校验和。

Codeabar

- 美国血库，照相馆，图书馆和FedEx航空货运单上都使用了这种符号。
- 编码数字和字符– $：/.+
- 第一个和最后一个符号（保护模式）是A，B，C或D中的一个。它们作为数据字符串的一部分返回。
- 支持可变长度的数据内容。
- 某些使用Codabar的标准将定义一个校验位，但没有商定的标准校验和算法。
- 窄与宽之间的宽度比可以在1：2.25和1：3之间选择。

QRcode

- 支持可变长度的数据内容。
- 数据编码模式支持数字，字母数字，二进制数据和汉字字符。
- 可以定义不同的大小（称为版本）和纠错级别。
- 它已按照ISO / IEC 18004进行了标准化。

## 条形码分类

一维条形码
一维条形码可标识物品的生产国、制造厂家、商品名称、生产日期、类别等信息。在商品流通、图书管理、邮政管理、银行系统等许多领域有广泛的应用。目前使用频率最高的几种码制有EAN(European Article Number)码、UPC(UniversalProduct Code)码、39码、交叉(ITF)25码和EAN128码。
二维条形码
一维条形码所携带的信息量有限，如EAN-13码仅能容纳13位阿拉伯数字，更多的信息只能依赖商品数据库的支持，离开了预先建立的数据库，这种条形码就没有意义了，因此，在一定程度上也限制了条形码的应用范围。基于这个原因，在20世纪90年代出现了二维条形码。目前二维条形码主要有PDF417码、Code49码、Code 16K码、Data Matrix码、Maxiocle码等．主要分为堆积或层排式、棋盘或矩阵式两大类。二维条形码(2 Dimensional Bar Code)是一种在水平方向和垂直方向均带有信息的条形码。二维条形码除了具有一维条形码的优点外，同时还有储存信息量大、耐损性强、可靠性高，保密、防伪性强等优点。


## 条形码的应用

**第一，零售业**。零售业是条形码应用最为成熟的领域。EAN商品条形码为零售业应用条形码进行销售奠定了基础。目前大多数在超市中出售的商品都使用了EAN条形码，在销售时，用扫描器扫描EAN条形码，POS系统从数据库中查找到相应的名称、价格等信息，并对客户所购买的商品进行统计，这大大加快收银的速度和准确性，同时各种销售数据还可作为商场和供虚商进货、供货的参考数据。由于销售信息能够及时准确地被统计出来，所以商家在经营过程中可以准确地掌握各种商品的流通信息，可以大大地减少了库存，最大限度地利用资金．从而提高商家的效益和竞争能力 。

**第二，图书馆**。条形码也被广泛用于图书馆中的图书流通环节中，图书和借书证上都贴上了条形码，借书时只要扫描一下借书证上的条形码，再扫一下借出的图书上的条形码，相关的信息就被自动记录人数据库中，而还书时只要一扫图书上的条形码，系统就会根据原先记录的信息进行核对，如足期就将该书还入库中。与传统的方式相比，这大大地提高了工作效率 。

**第三，仓储管理与物流跟踪**。对于大鼙物品流动的场合，用传统的手工记录方式记录物品的流动状况．既费时费力，准确度又低，在一些特殊场合，手工记录是不现实的。况且这些手工记录的数据在统汁、查询过程中的应用效率电相当低。应用条形码技术，可以实现快速、准确地记录每一件物品，采集到的各种数据可实时地由计算机系统进行处理．使得各种统计数据能够准确、及时地反映物品的状态 。

**第四，质量跟踪管理**。ISO9000质量保证体系强调质睦管理的可追溯性，也就是说，对于出现质量问题的产品，应当可以追溯出它的生产时间、操作者等信息。在过去，这些信息很难记录下来，即使有一些工厂（如一些家用电器生产厂）采用加工单的形式进行记录，但随着时间的积累，加工单也越来越多，有的工厂甚至要用几间房子来存放这些单据。从这么多的单据中查找一张单据的难度可想而知！如采用条形码技术，在生产过程的主要环节中，对生产者及产品的数据通过扫描条形码进行记录，并利用计算机系统进行处理和存储。如产品质量出现问题．可利用电脑系统很快地查到该产品生产时的数据，为工厂查找事故原因、改进工作质量提供依据  。

**第五，数据自动录入（二维条形码）**。大量格式化的单据的录入问题是一件很繁琐的事，浪费大量的人力不说，正确率也难以保障。用二维条形码技术，可以把上千个字母或儿卣个汉字放入名片大小的一个二维条形码中，并可用专用的扫描器住几秒钟内正确地输入这些内容。目前电脑和打印机作为一种必备的办公用品，已相当普及，可以开发一些软件，将格式化报表的内容同时打印在一个二维条形码中。在需要输入这些报表内容的地方扫描二维条形码，报表的内容就自动录入完成了。同时，还可以对数据进行加密，确保报表数据的真实性 。

条形码技术在我国的邮电系统、图书情报、生产过程控制、医疗卫生、交通运输等领域都得到较为广泛的应用，特别是商业信息化程度的不断提高，条形码技术也逐步普及，并反过来推动了商业pos系统的发展

>  ###  Barcode4J
# Barcode4J
 ## 介绍
Barcode4J开源Java条形码生成库。支持多种编码格式，比如：code-39，code-128等。可以在Apache License 2.0版下获得。http://barcode4j.sourceforge.net/

 ## 预览所有支持的条形码符号
http://barcode4j.sourceforge.net/barcode-examples.pdf

## 版本

| 类型             | 版本 | 发布日期       |
| ---------------- | ---- | -------------- |
| 当前版本         | 2.1  | **2010-12-15** |
| 先前版本（稳定） | 2.0  | 2008-05-14     |
| 先前版本（稳定） | 1.0  | 2004-11-18     |

可以从[Barcode4J项目的文件页面](http://sourceforge.net/project/showfiles.php?group_id=96670)下载发行版本 。

可以从[Krysalis项目的文件页面](http://sourceforge.net/project/showfiles.php?group_id=36516)下载旧版本（名称从Krysalis Barcode更改为Barcode4J之前） 。

## Krysalis->Barcode4J！

why?

我们想让这个条形码包更显眼，并给它一个更清晰的名字。许多人也将此软件包简称为“ Krysalis”，但“ Krysalis”实际上是该项目所在社区的名称。

**变化**

- 项目名称（Krysalis条形码到Barcode4J）
- 新项目的网站可以在[http://barcode4j.sourceforge.net](http://barcode4j.sourceforge.net/)下找到
- Java包从org.krysalis.barcode重命名 为org.krysalis.barcode4j。
- 主要的XML名称空间声明已从http://www.krysalis.org/barcode/ns更改 为 http://barcode4j.krysalis.org/ns。
- JAR文件名是“ barcode4j * .jar”，而不是“ krysalis-barcode * .jar”。
 **Xalan扩展**
将样式表中的名称空间声明从 xmlns：barcode =“ org.krysalis.barcode.xalan.BarcodeExt” 更改为xmlns：barcode =“ org.krysalis.barcode4j.xalan.BarcodeExt”
**SAXON扩展**
将样式表中的名称空间声明从 xmlns：barcode =“ http://www.krysalis.org/barcode/org.krysalis.barcode.saxon.BarcodeExtensionElementFactory” 更改为xmlns：barcode =“ http://barcode4j.krysalis.org /org.krysalis.barcode4j.saxon.BarcodeExtensionElementFactory”
**FOP扩展**
将样式表中的名称空间声明从 xmlns：barcode =“ http://www.krysalis.org/barcode/ns” 更改为xmlns：barcode =“ http://barcode4j.krysalis.org/ns”
 ## 条码XML格式
 ### 一般结构

```
<barcode message="123456789">
    <{type}>
      {barcode-specific configuration}
    </{type}>
</barcode>
```

**{type}**对应条形码类型的名称，例如。“ ean13”或“ code39”。您也可以使用实现类的完全限定类名，例如。“ org.krysalis.barcode4j.impl.Code39”。

XSLT样式表的一般结构
在使用Xalan-J（Xalan-Java是XSLT处理器，用于将XML文档转换为HTML，文本或其他XML文档类型）、SAXON（ XSLT和XQuery处理器）或FOP（格式化对象处理器）实现时，条形码XML格式的一般结构略有变化，要包含条形码名称空间。例如，在使用Barcode4J和FOP时，它是这样的:

```
<barcode:barcode
    xmlns:barcode="http://barcode4j.krysalis.org/ns"
    message="123456789">
  <barcode:{type}>
    {barcode-specific configuration}
  </barcode:{type}>
</barcode:barcode>
```
**{barcode-specific configuration}**条形码的配置是由条形码实现本身定义的一组元素和属性。例子：

```
<barcode>
  <intl2of5>
    <height>10mm</height>
    <wide-factor>2.5</wide-factor>
  </intl2of5>
</barcode>
```

 ### 数据类型
 {boolean}:  true|yes|on or false|no|off.
 {string}:  "Hello123".
 {char}：一个Unicode字符。
 {number}：一个数字，例如“ 2.43”或“ 5”。
 {unit}：长度单位，mm，cm或pt之一。默认单元通常是“mm”(毫米)，但与实现有关。
 {length}：采用“ { number } [[] { unit }]” 形式的长度。实例：1.2毫米，5.0，3，或10MW。
 {checksum-mode}:校验和模式决定校验和的行为。可能的值(并非所有条形码格式都支持所有值)
 add：校验和自动添加到消息中。
 check：在渲染条形码时检查校验和。
 ignore：不执行校验和处理。
 auto：启用条形码类型的默认行为。
 {human-readable-placement}:  人类可读部分的位置{枚举}。
 bottom: 消息位于符号的底部。
 top: 消息放置在符号的顶部
 none: 不生成任何人类可读的部分。
 {baseline-alignment}：此枚举确定条形码行（例如POSTNET）的对齐方式。
 bottom: 短线和长线在底部对齐。
 top: 短线和长线在顶部对齐。
 {font-name}：输出<font-name />时使用的字体名称。并非所有字体都可用于所有输出格式。
 {shape}：此枚举确定选择DataMatrix条形码的符号设置。
 force-none：允许使用正方形和矩形符号。
 force-square：强制使用正方形符号。
 force-rectangle：强制使用矩形符号。
 {dimension}：指定x和y方向的尺寸（以像素/单位为单位）。示例：“ 12x8”定义水平大小为12个单位，垂直大小为8个单位。如果仅指定一个数字，则将其同时用于两个方向，即“ 12”与“ 12x12”相同。
 ###  条码XML格式:缩写版
 如下面的Code 39示例所示，可以将条形码XML格式“缩写”（从而接受所有默认值）：
```
<barcode message="123456789">
  <code39/>
</barcode>
```
此时假设是默认值，结果有效:
```
<barcode message="123456789">
  <code39>
    <height>15mm</height>
    <module-width>0.19mm</module-width>
    <wide-factor>2.5</wide-factor>
    <interchar-gap-width>1mw</interchar-gap-width>
    <quiet-zone enabled="true">10mw</quiet-zone>
    <checksum>auto</checksum>
    <human-readable>
      <placement>bottom</placement>
      <font-name>Helvetica</font-name>
      <font-size>8pt</font-size>
      <pattern>{string}</pattern> <!-- see below for details -->
      <display-start-stop>false</display-start-stop>
      <display-checksum>false</display-checksum>
    </human-readable>
  </code39>
</barcode>
```
 ### 可读的消息模式

一般一维符号没有内部结构。通常是一些包含很多数字的非常大的数字。如果没有分组，这些是很难阅读的。或者你可以将日期和时间编码为一组连续的数字。为了便于人们阅读复杂的长信息，需要一种模式。有一种工具可以向用户可读的消息中添加自定义模式，但是它只适用于 Interleaves 2 of 5, Code 39, Code 128 and Codabar。其他符号要么没有人类可读的部分，要么需要对消息进行特殊格式化(如UPC/EAN)。
```
<human-readable>
  <pattern>{string}</pattern>
</human-readable>
```
例：
|  条码信息  | 1234567890   |       01012001103854         |1234567890|
|:-: | :-: | :-: | :-: |
|  可读模式 | ____ ____ __       |__/__/____ __：__：__ 世界标准时间 |____ \\ ___ \ ____|
| 可读信息  | 1234 5678 90  |01/01/2001 10:38:54 UTC |1234 \ 567_890|

 ### 配置
 code 128
 示例
  ![barcode](http://barcode4j.sourceforge.net/images/example-code128.png)
 结构
默认实现的配置为：

 ```
<barcode>
  <code128>
      <height>{length:15mm}</height>
      <module-width>{length:0.21mm}</module-width>
      <codesets>{string:ABC}</codesets>
      <quiet-zone enabled="{boolean:true}">{length:10mw}</quiet-zone>
      <human-readable>
        <placement>{human-readable-placement:bottom}</placement>
        <font-name>{font-name:Helvetica}</font-name>
        <font-size>{length:8pt}</font-size>
      </human-readable>
  </code128>
</barcode>
 ```
 注意：
- height 至少应为条形码长度的0.15倍或0.25英寸。
- codesets代码集可以限制为A，B，C或这三者的组合。示例：“ AB”启用A和B。
消息格式
- 有效字符：支持完整的7位ASCII（US-ASCII）字符集
- 可以使用功能1至4。它们在消息中被编码为ASCII字符0xF1（241），0xF2（242），0xF3（243）和0xF4（244）。
- 与条形码字体不同，开始，停止和校验和字符不应作为消息的一部分，因为它们是自动添加的.

EAN 13
示例：
![barcode](http://barcode4j.sourceforge.net/images/example-ean-13.png)
默认配置
```
<barcode>
  <ean-13>
      <height>{length:15mm}</height>
      <module-width>{length:0.33mm}</module-width>
      <quiet-zone enabled="{boolean:true}">{length:10mw}</quiet-zone>
      <checksum>{checksum-mode:auto=add|check}</checksum>
      <human-readable>
        <placement>{human-readable-placement:bottom}</placement>
        <font-name>{font-name:Helvetica}</font-name>
        <font-size>{length:8pt}</font-size>
      </human-readable>
  </ean-13>
</barcode>
```
消息格式
- 有效字符为0-9

- 消息长度必须为12或13个字符，具体取决于校验和模式。

- checksum设置为自动时的行为：如果传入12个字符的消息，则会添加校验字符。如果传递了13个字符的消息，则选中校验字符。

- 支持补充（2个和5个字符）。您可以通过在条形码消息后附加“ +”和补充消息来添加它们。示例：9783468111242 + 56789

  。。。
## 支持的输出格式

### SVG

[SVG](http://www.w3.org/Graphics/SVG)是此软件包支持的第一种输出格式。目前，尚未执行任何验证以确保生成的输出符合每个SVG变体（尤其是SVG配置文件基本和微小）。该代码仅通过Apache Batik和Adobe SVG Viewer进行了测试。

SVG输出可配置为生成命名空间（带有和不带前缀）和非命名空间SVG内容。生成的文档不包含任何架构或DTD声明。

根据您在Java方面的需求，支持将SVG生成为W3C DOM或JDOM。添加对其他输出方法（例如XOM）的支持非常容易。

### EPS（封装的PostScript）

EPS输出格式生成1级PostScript，并包含一个HiResBoundingBox，用于在目标文档中进行精确定位。条形码中使用的字体应预期存在于目标PostScript解释器中。

注意

为了最大程度地减小文件大小并出于性能考虑，生成的EPS文件不包含位图预览。因此，如果将EPS文件导入到应用程序中，可能看不到压力条。

### 位图格式（PNG，TIFF，JPEG等）

Java2D输出支持支持位图格式。支持哪种位图格式取决于环境支持：

- JDK 1.3.x仅通过使用JDK中包含的Sun JPEG编码器提供对JPEG输出的支持。
- JDK 1.4或更高版本提供了Image I / O API，默认情况下它包含对JPEG，PNG的支持。如果 类路径中存在[JAI（Java Advanced Imaging），](http://java.sun.com/products/java-media/jai/)则支持其他格式（例如TIFF或BMP） （下载“ Image I / O Tools”）。这些格式的支持会自动启用。
- 通过添加与ImageIO兼容的编解码器或注册由**Barcode4J**提供的BitmapEncoder接口的其他实现，可以支持其他输出格式。例如，可以对BitmapEncoder实现进行编码，以与Sun提供的较旧的JIMI映像库接口。

默认情况下，位图生成为灰度图像（8位）。您可以选择启用或禁用灰度图像的抗锯齿功能。您也可以选择生成单色图像（1位）。此外，您可以指定位图的分辨率。

注意

尽管支持JPEG输出，但是不建议使用JPEG输出，因为它是有损压缩格式，并且对比度会受到影响，从而降低所生成条形码的可读性。

### Java2D（AWT）

Java2D实现可用于将**Barcode4J**嵌入 Java应用程序（例如，报表引擎）中。它也用于在位图图像上绘制条形码。

## 设计要求

- 整个条码包应该是灵活和可扩展的。

- 设计时应支持不同的条码类型(1D和2D)。

- 条形码实现应该使用XML进行配置，并且要能够轻松地将整个包集成到更大的工作中。

- 条码逻辑(校验和、编码、字符集等)应该与条码的呈现分开，这样就可以方便地支持不同的输出格式(SVG、位图等)。
## JavaDocs
http://barcode4j.sourceforge.net/trunk/javadocs/index.html
org.krysalis.barcode4j

  该软件包包含用于生成条形码的主要接口。

 主要接口

  - **BarcodeGenerator**：用于生成条形码的主要接口。
  - **BarcodeClassResolver**：将符号名称解析为条形码实现类。
  - **BarcodeLogicHandler**：接收由条形码逻辑实现生成的条形码事件（类似于XML的SAX事件）。

  **BarcodeUtil**是一个非常有用的帮助类。

org.krysalis.barcode4j.impl

  该软件包是标准条形码的实现。每个实现主要由两类组成：逻辑实现和表示实现。表示部分调用逻辑部分以生成类似于SAX事件的内容，但生成条形码（请参见**BarcodeLogicHandler**）。

 org.krysalis.barcode4j.output（和子包）

实现各种输出格式。要实现新的基于坐标的输出格式，主要任务是创建新的CanvasProvider实现。

org.krysalis.barcode4j.tools

该软件包包含内部使用的各种工具类。

org.krysalis.barcode4j.cli

命令行界面。

 org.krysalis.barcode4j.servlet

该软件包包含条形码Servlet。

 org.krysalis.barcode4j.xalan

该软件包包含[Apache Xalan](http://xml.apache.org/xalan-j/)的XSLT扩展。

 org.krysalis.barcode4j.saxon

该软件包包含[Michael Kay](http://saxon.sourceforge.net/)的[SAXON XSLT处理器](http://saxon.sourceforge.net/)的XSLT扩展。

 org.krysalis.barcode4j.playground

该软件包包含playground GUI应用程序。

## 创建条形码

### Barcode Servlet

**Barcode4J**提供了一个简单的Servlet，可用于生成SVG，EPS或带有URL的任何受支持位图格式的条形码。

它附带了一个示例Web应用程序，使您可以使用Barcode Servlet

如本地安装的Web容器生成的条形码的URL可能如下所示：

```
  https://localhost:8080/barcode4j/gensvg?type=code128＆msg=条形码
```

| **参数** | **约束** | **描述**                                               |
| ----------- | -------------- | ------------------------------------------------------------ |
| type    | 必需           | 条形码的类型。示例：code128（用于Code 128），ean-13，upc-e等。这些值与org.krysalis.barcode4j.BarcodeClassResolver所使用的值相同。 |
| fmt         | 默认为SVG      | 条形码的输出格式。您可以使用MIME类型（例如“ image / svg + xml”）或简短格式类型（例如“ svg”或“ eps”）。此Servlet支持的输出格式为：SVG，EPS和任何支持的位图格式。 |
| msg     | 必需         | 要编码的消息。                                               |
| height  | 可选的         | 指定所需的条形码总高度。                                     |
| mw    | 可选的         | 所需的模块宽度（通常是窄模块的宽度）。例子：0.21mm           |
| wf          | 可选的         | 所需的宽因子。示例：2或2.5                                   |
| qz         | 可选的         | 确定安静区域。例如：10mw（模块宽度的10倍）或1.5cm。“禁用”压制了安静区域。 |
| hrp | 可选的         | 确定人类可读部分的位置。可能的值：“顶部”，“底部”或“无”    |
| hrsize  | 可选的         | 确定人类可读部分的字体大小。示例：12pt                       |
| hrfont      | 可选的         | 确定用于人类可读部分的字体。示例：CourierNew                 |
| res     | 默认为300dpi   | （仅适用于位图）确定位图的分辨率（以dpi为单位）。            |
| gray    | 默认为false    | （仅适用于位图）确定是否应以黑白（黑白）的灰度来创建位图。有效值：“ true”和“ false”。 |

注意：并非每种条形码类型都支持所有参数。例如，UPC和EAN条形码不支持factor 参数。

### 使用命令行界面

命令行界面具有以下功能：

- 输出到控制台或文件
- 输出格式：SVG，EPS，位图格式
- 能够设置与XSLT或XSL-FO扩展中相同的符号系统属性（通过配置文件）
- 能够设置位图的分辨率和颜色设置

命令行界面的主要类是org.krysalis.barcode4j.cli.Main。

所需的库是：

- barcode4j.jar（build /目录）
- avalon-framework-4.2.0.jar（[Apache Avalon Framework](http://excalibur.apache.org/framework/)，来自lib /目录）
- commons-cli-1.0.jar（来自lib /目录的[Apache Jakarta Commons CLI](http://jakarta.apache.org/commons/cli)）

例子：

```
视窗：
java -cp build\barcode4j.jar;lib\avalon-framework-4.2.0.jar;lib\commons-cli-1.0.jar org.krysalis.barcode4j.cli.Main <参数>

Unix：
java -cp build/barcode4j.jar:lib/avalon-framework-4.2.0.jar:lib/commons-cli-1.0.jar
org.krysalis.barcode4j.cli.Main <参数>
```

参数：
```
Barcode4J command-line application, Version 2.1.0
usage: java -jar barcode4j.jar [-v] [[-s <symbology>]|[-c <cfg-file>]] [-f
            <format>] [-d <dpi>] [-bw] [-o <file>] <message>
    --bw                （用于位图）创建单色（1-bit）图像 代替灰度（8-bit）
 -s,--symbol <name>     要选择的条形码类型（默认设置， 如果要自定义，请使用-c）
 -c,--config <file>     配置文件<文件>
 -d,--dpi <integer>     （用于位图）以dpi为单位的图像分辨率 默认：300 
 -f,--format <format>   输出格式：MIME类型或文件扩展名默认值：image / svg + xml（SVG）
 -o,--output <file>     输出文件名
 -v,--verbose          -详细启用调试输出

有效的输出格式：
SVG: image/svg+xml, svg
EPS: image/x-eps, eps
PNG: image/x-png, png
TIFF: image/tiff, tiff, tif (unavailable)
JPEG: image/jpeg, jpeg, jpg
GIF: image/gif, gif
BMP: image/bmp, bmp
```
例子
java -cp build\barcode4j.jar;lib\avalon-framework-4.2.0.jar;lib\commons-cli-1.0.jar org.krysalis.barcode4j.cli.Main  -s code128 "123456"
创建SVG输出（因为如果未指定格式，则默认为SVG）。由于没有输出文件名，SVG被写入控制台。使用的类型是“code128”（-s code128）

java -cp build\barcode4j.jar;lib\avalon-framework-4.2.0.jar;lib\commons-cli-1.0.jar org.krysalis.barcode4j.cli.Main  -o barcode.eps -f eps -s ean13 "008888650997"
创建一个以EPS格式（-f eps）写入文件（-o）的EAN-13（-fean13）条形码。

java -cp build\barcode4j.jar;lib\avalon-framework-4.2.0.jar;lib\commons-cli-1.0.jar org.krysalis.barcode4j.cli.Main  -o barcode.png -f png --bw -d 600 -s ean13 "008888650997"
创建与上述相同的条形码，但会生成单色（--bw）PNG位图（-f png）。分辨率设置为600dpi（-d 600）。

通常默认配置无法满足我们需求时，可以添加一个XML配置文件
<?xml version="1.0" encoding="UTF-8"?>
```
<barcode>
  <code128>
    <height>2cm</height>
    <module-width>0.5mm</module-width>
  </code128>
</barcode>
```
### 嵌入Java应用程序（xml API)

基本步骤：

1. 提供一个Avalon配置对象以配置条形码引擎，Barcode4J使用Avalon框架来配置所使用的条形码类型。这是通过配置对象的形式完成的
2. 创建一个条形码生成器
3. 创建一个CanvasProvider（取决于输出格式）
4. 最终生成条形码

```
//提供一个Avalon配置对象以配置条形码引擎
DefaultConfigurationBuilder builder = new DefaultConfigurationBuilder();
Configuration cfg = builder.buildFromFile(ResourceUtils.getFile("classpath:barcode-cfg.xml"));
//创建一个条形码生成器
BarcodeGenerator gen = BarcodeUtil.getInstance().createBarcodeGenerator(cfg);
```

```
    //创建一个CanvasProvider
    //SVG DOM实现（W3C DOM或JDOM）
        SVGCanvasProvider provider = new SVGCanvasProvider(false, 0);
        gen.generateBarcode(provider, msg);
        org.w3c.dom.DocumentFragment frag = provider.getDOMFragment();
      
//        JDOMSVGCanvasProvider provider = new JDOMSVGCanvasProvider(false, 0);
//        gen.generateBarcode(provider, "msg");
//        org.jdom.Document doc = provider.getDocument();
```

```
 //EPS
        OutputStream out = new java.io.FileOutputStream(new File("D://output.eps"));
        EPSCanvasProvider provider = new EPSCanvasProvider(out, 0);
        gen.generateBarcode(provider, msg);
        provider.finish();
```

```
  //位图(尽管支持JPEG输出，但是不建议使用JPEG输出，因为它是有损压缩格式，并且对比度会受到影响，从而降低所生成条形码的可读性。)
        OutputStream out = new java.io.FileOutputStream(new File("output.png"));
        BitmapCanvasProvider provider = new BitmapCanvasProvider(
                out, "image/x-png", 300, BufferedImage.TYPE_BYTE_GRAY, true, 0);
        gen.generateBarcode(provider, msg);
        provider.finish();
      //写入BufferedImage
        BitmapCanvasProvider provider = new BitmapCanvasProvider(
               300, BufferedImage.TYPE_BYTE_GRAY, true, 0);
        gen.generateBarcode(provider, msg);
        provider.finish();
        BufferedImage barcodeImage = provider.getBufferedImage();
```

```
  //Java2D (AWT)
        BufferedImage bimage = new BufferedImage(300, 120, BufferedImage.TYPE_INT_RGB);
        Graphics2D g2d = BitmapBuilder.prepareGraphics2D(bimage,new BarcodeDimension(30,10),0,false); ;
        Java2DCanvasProvider provider = new Java2DCanvasProvider(g2d, 0);
        gen.generateBarcode(provider, msg);
        ImageIO.write(bimage, "jpg", new File("D://abc.jpg"));
```

### 嵌入Java应用程序（JavaBean API）

基本步骤：

使用JavaBeans创建条形码的必要步骤与使用XML的步骤相似：

1. 创建  barcode bean
2. 设置所需的值以配置条形码生成器
3. 创建一个CanvasProvider（取决于输出格式）
4. 最终生成条形码

```
//创建  barcode bean
Code39Bean bean = new Code39Bean();
```

可用 bean classes:

- org.krysalis.barcode4j.impl.codabar.CodabarBean
- org.krysalis.barcode4j.impl.code128.Code128Bean
- org.krysalis.barcode4j.impl.code39.Code39Bean
- org.krysalis.barcode4j.impl.int2of5.Interleaved2Of5Bean
- org.krysalis.barcode4j.impl.postnet.POSTNETBean
- org.krysalis.barcode4j.impl.upcean.EAN13Bean
- org.krysalis.barcode4j.impl.upcean.EAN8Bean
- org.krysalis.barcode4j.impl.upcean.UPCABean
- org.krysalis.barcode4j.impl.upcean.UPCEBean

```
//设置所需的值以配置条形码生成器
bean.setModuleWidth（UnitConv.in2mm（1.0f / dpi））;
bean.setWideFactor（3）; 
bean.doQuietZone（false）; 
```

```
//创建一个CanvasProvider
//打开输出文件
File outputFile = new File("D://out.png");
OutputStream out = new FileOutputStream(outputFile);
try {
    //Set up the canvas provider for monochrome PNG output 
    BitmapCanvasProvider canvas = new BitmapCanvasProvider(
            out, "image/x-png", dpi, BufferedImage.TYPE_BYTE_BINARY, false, 0);

    //Generate the barcode
    bean.generateBarcode(canvas, "123456");

    //Signal end of generation
    canvas.finish();
} finally {
    out.close();
}
```

### 几种生成类库对比

| Barcode4j                   | Zing              | JBarcode        |
| --------------------------- | ----------------- | --------------- |
| Interleaved 2 of 5          | AZTEC             | EAN13           |
| ITF-14                      | CODABAR           | UPCA            |
| Code 39                     | CODE_39           | EAN8            |
| Code 128                    | CODE_93           | UPCE            |
| EAN-128（基于代码128）      | CODE_128          | Codabar         |
| Codabar                     | DATA_MATRIX       | Code11          |
| UPC-A                       | EAN_8             | Code39          |
| UPC-E                       | EAN_13            | Code39Ext       |
|                             | ITF               | Code93          |
| EAN-13                      | MAXICODE          | Code93Ext       |
| EAN-8                       | PDF_417           | Code128         |
| POSTNET                     | QR_CODE           | MSIPlessey      |
| RoyalMailCBC 4-state        | RSS_14            | Standard2of5    |
| USPSIntelligentMail 4-state | RSS_EXPANDED      | Interleaved2of5 |
| PDF 417                     | UPC_A             | PostNet         |
| DataMatrix                  | UPC_E             |                 |
|                             | UPC_EAN_EXTENSION |                 |



