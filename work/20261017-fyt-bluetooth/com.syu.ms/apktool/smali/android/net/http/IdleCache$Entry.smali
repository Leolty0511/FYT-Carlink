.class Landroid/net/http/IdleCache$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/IdleCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Entry"
.end annotation


# instance fields
.field public mConnection:Landroid/net/http/Connection;

.field public mHost:Lorg/apache/http/HttpHost;

.field public mTimeout:J

.field public final synthetic this$0:Landroid/net/http/IdleCache;


# direct methods
.method public constructor <init>(Landroid/net/http/IdleCache;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/http/IdleCache$Entry;->this$0:Landroid/net/http/IdleCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
