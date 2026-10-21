.class Landroid/net/Proxy$AndroidProxySelectorRoutePlanner;
.super Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AndroidProxySelectorRoutePlanner"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/scheme/SchemeRegistry;Ljava/net/ProxySelector;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;Ljava/net/ProxySelector;)V

    .line 2
    iput-object p3, p0, Landroid/net/Proxy$AndroidProxySelectorRoutePlanner;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public chooseProxy(Ljava/util/List;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Ljava/net/Proxy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")",
            "Ljava/net/Proxy;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Landroid/net/Proxy$AndroidProxySelectorRoutePlanner;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/net/Proxy;->getProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object p1

    return-object p1
.end method

.method public determineProxy(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpHost;
    .locals 0

    .line 1
    iget-object p2, p0, Landroid/net/Proxy$AndroidProxySelectorRoutePlanner;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/net/Proxy;->getPreferredHttpHost(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/HttpHost;

    move-result-object p1

    return-object p1
.end method

.method public determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;
    .locals 2

    .line 1
    iget-object p2, p0, Landroid/net/Proxy$AndroidProxySelectorRoutePlanner;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/net/Proxy;->getPreferredHttpHost(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/HttpHost;

    move-result-object p2

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lorg/apache/http/conn/routing/HttpRoute;

    invoke-direct {p2, p1}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Lorg/apache/http/HttpHost;)V

    return-object p2

    .line 3
    :cond_0
    new-instance p3, Lorg/apache/http/conn/routing/HttpRoute;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p3, p1, v0, p2, v1}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/HttpHost;Z)V

    return-object p3
.end method
