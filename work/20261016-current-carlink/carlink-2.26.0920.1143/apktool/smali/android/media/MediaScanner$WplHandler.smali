.class Landroid/media/MediaScanner$WplHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/sax/ElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WplHandler"
.end annotation


# instance fields
.field final handler:Lorg/xml/sax/ContentHandler;

.field playListDirectory:Ljava/lang/String;

.field final synthetic this$0:Landroid/media/MediaScanner;


# direct methods
.method public constructor <init>(Landroid/media/MediaScanner;Ljava/lang/String;Landroid/net/Uri;Landroid/database/Cursor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/MediaScanner$WplHandler;->this$0:Landroid/media/MediaScanner;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroid/media/MediaScanner$WplHandler;->playListDirectory:Ljava/lang/String;

    .line 7
    .line 8
    new-instance p1, Landroid/sax/RootElement;

    .line 9
    .line 10
    const-string/jumbo p2, "smil"

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, p2}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p2, "body"

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const-string/jumbo p3, "seq"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p3}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const-string/jumbo p3, "media"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p3}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p2, p0}, Landroid/sax/Element;->setElementListener(Landroid/sax/ElementListener;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Landroid/media/MediaScanner$WplHandler;->handler:Lorg/xml/sax/ContentHandler;

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public end()V
    .locals 0

    return-void
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner$WplHandler;->handler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public start(Lorg/xml/sax/Attributes;)V
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string/jumbo v1, "src"

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroid/media/MediaScanner$WplHandler;->this$0:Landroid/media/MediaScanner;

    .line 13
    .line 14
    iget-object v1, p0, Landroid/media/MediaScanner$WplHandler;->playListDirectory:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0, p1, v1}, Landroid/media/MediaScanner;->access$2600(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
