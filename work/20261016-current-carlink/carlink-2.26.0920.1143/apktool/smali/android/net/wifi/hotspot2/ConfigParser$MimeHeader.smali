.class Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/ConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MimeHeader"
.end annotation


# instance fields
.field public boundary:Ljava/lang/String;

.field public contentType:Ljava/lang/String;

.field public encodingType:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;->contentType:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;->boundary:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;->encodingType:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/wifi/hotspot2/ConfigParser$1;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;-><init>()V

    return-void
.end method
