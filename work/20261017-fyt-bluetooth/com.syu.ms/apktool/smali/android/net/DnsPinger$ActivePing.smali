.class Landroid/net/DnsPinger$ActivePing;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DnsPinger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActivePing"
.end annotation


# instance fields
.field public internalId:I

.field public packetId:S

.field public result:Ljava/lang/Integer;

.field public socket:Ljava/net/DatagramSocket;

.field public start:J

.field public final synthetic this$0:Landroid/net/DnsPinger;

.field public timeout:I


# direct methods
.method private constructor <init>(Landroid/net/DnsPinger;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroid/net/DnsPinger$ActivePing;->this$0:Landroid/net/DnsPinger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/DnsPinger$ActivePing;->start:J

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/DnsPinger;Landroid/net/DnsPinger$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/net/DnsPinger$ActivePing;-><init>(Landroid/net/DnsPinger;)V

    return-void
.end method
