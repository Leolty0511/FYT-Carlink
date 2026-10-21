.class public Landroid/net/wifi/hotspot2/omadm/XMLParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# instance fields
.field private mCurrent:Landroid/net/wifi/hotspot2/omadm/XMLNode;

.field private mRoot:Landroid/net/wifi/hotspot2/omadm/XMLNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLParser;->mRoot:Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 6
    .line 7
    iput-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLParser;->mCurrent:Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLParser;->mCurrent:Landroid/net/wifi/hotspot2/omadm/XMLNode;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->addText(Ljava/lang/String;)V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/net/wifi/hotspot2/omadm/XMLParser;->mCurrent:Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Landroid/net/wifi/hotspot2/omadm/XMLParser;->mCurrent:Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->close()V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Landroid/net/wifi/hotspot2/omadm/XMLParser;->mCurrent:Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getParent()Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Landroid/net/wifi/hotspot2/omadm/XMLParser;->mCurrent:Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance p1, Lorg/xml/sax/SAXException;

    .line 28
    .line 29
    const-string p2, "End tag \'"

    .line 30
    .line 31
    const-string v0, "\' doesn\'t match current node: "

    .line 32
    .line 33
    invoke-static {p2, p3, v0}, Landroid/accessibilityservice/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    iget-object p3, p0, Landroid/net/wifi/hotspot2/omadm/XMLParser;->mCurrent:Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 38
    .line 39
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1
.end method

.method public parse(Ljava/lang/String;)Landroid/net/wifi/hotspot2/omadm/XMLNode;
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLParser;->mRoot:Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 9
    .line 10
    iput-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLParser;->mCurrent:Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 11
    .line 12
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lorg/xml/sax/InputSource;

    .line 21
    .line 22
    new-instance v2, Ljava/io/StringReader;

    .line 23
    .line 24
    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1, p0}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Landroid/net/wifi/hotspot2/omadm/XMLParser;->mRoot:Landroid/net/wifi/hotspot2/omadm/XMLNode;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    return-object p1

    .line 36
    :catch_0
    move-exception p1

    .line 37
    new-instance v0, Lorg/xml/sax/SAXException;

    .line 38
    .line 39
    invoke-direct {v0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 44
    .line 45
    const-string v0, "XML string not provided"

    .line 46
    .line 47
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/net/wifi/hotspot2/omadm/XMLParser;->mCurrent:Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 2
    .line 3
    new-instance p2, Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 4
    .line 5
    invoke-direct {p2, p1, p3}, Landroid/net/wifi/hotspot2/omadm/XMLNode;-><init>(Landroid/net/wifi/hotspot2/omadm/XMLNode;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Landroid/net/wifi/hotspot2/omadm/XMLParser;->mCurrent:Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 9
    .line 10
    iget-object p3, p0, Landroid/net/wifi/hotspot2/omadm/XMLParser;->mRoot:Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 11
    .line 12
    if-nez p3, :cond_0

    .line 13
    .line 14
    iput-object p2, p0, Landroid/net/wifi/hotspot2/omadm/XMLParser;->mRoot:Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->addChild(Landroid/net/wifi/hotspot2/omadm/XMLNode;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :cond_1
    new-instance p1, Lorg/xml/sax/SAXException;

    .line 24
    .line 25
    const-string p2, "More than one root nodes"

    .line 26
    .line 27
    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method
