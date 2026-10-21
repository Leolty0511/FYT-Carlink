.class Landroid/net/wifi/hotspot2/ConfigParser$MimePart;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/ConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MimePart"
.end annotation


# instance fields
.field public data:[B

.field public isLast:Z

.field public type:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/net/wifi/hotspot2/ConfigParser$MimePart;->type:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Landroid/net/wifi/hotspot2/ConfigParser$MimePart;->data:[B

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroid/net/wifi/hotspot2/ConfigParser$MimePart;->isLast:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/wifi/hotspot2/ConfigParser$1;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Landroid/net/wifi/hotspot2/ConfigParser$MimePart;-><init>()V

    return-void
.end method
