.class final Landroid/net/lowpan/LowpanProperties$LowpanStandardProperty;
.super Landroid/net/lowpan/LowpanProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/LowpanProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LowpanStandardProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/net/lowpan/LowpanProperty<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/net/lowpan/LowpanProperty;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/net/lowpan/LowpanProperties$LowpanStandardProperty;->mName:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/net/lowpan/LowpanProperties$LowpanStandardProperty;->mType:Ljava/lang/Class;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/lowpan/LowpanProperties$LowpanStandardProperty;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/lowpan/LowpanProperties$LowpanStandardProperty;->mType:Ljava/lang/Class;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/net/lowpan/LowpanProperties$LowpanStandardProperty;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
