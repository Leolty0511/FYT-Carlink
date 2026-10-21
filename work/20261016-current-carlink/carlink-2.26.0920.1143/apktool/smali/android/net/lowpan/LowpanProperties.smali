.class public final Landroid/net/lowpan/LowpanProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/LowpanProperties$LowpanStandardProperty;
    }
.end annotation


# static fields
.field public static final KEY_CHANNEL_MASK:Landroid/net/lowpan/LowpanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/lowpan/LowpanProperty<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final KEY_MAX_TX_POWER:Landroid/net/lowpan/LowpanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/lowpan/LowpanProperty<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/net/lowpan/LowpanProperties$LowpanStandardProperty;

    .line 2
    .line 3
    const-string v1, "android.net.lowpan.property.CHANNEL_MASK"

    .line 4
    .line 5
    const-class v2, [I

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/net/lowpan/LowpanProperties$LowpanStandardProperty;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Landroid/net/lowpan/LowpanProperties;->KEY_CHANNEL_MASK:Landroid/net/lowpan/LowpanProperty;

    .line 11
    .line 12
    new-instance v0, Landroid/net/lowpan/LowpanProperties$LowpanStandardProperty;

    .line 13
    .line 14
    const-string v1, "android.net.lowpan.property.MAX_TX_POWER"

    .line 15
    .line 16
    const-class v2, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Landroid/net/lowpan/LowpanProperties$LowpanStandardProperty;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Landroid/net/lowpan/LowpanProperties;->KEY_MAX_TX_POWER:Landroid/net/lowpan/LowpanProperty;

    .line 22
    .line 23
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
