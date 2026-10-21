.class Landroid/net/DnsPinger$DnsArg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DnsPinger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DnsArg"
.end annotation


# instance fields
.field public dns:Ljava/net/InetAddress;

.field public seq:I

.field public final synthetic this$0:Landroid/net/DnsPinger;


# direct methods
.method public constructor <init>(Landroid/net/DnsPinger;Ljava/net/InetAddress;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/DnsPinger$DnsArg;->this$0:Landroid/net/DnsPinger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroid/net/DnsPinger$DnsArg;->dns:Ljava/net/InetAddress;

    .line 3
    iput p3, p0, Landroid/net/DnsPinger$DnsArg;->seq:I

    return-void
.end method
