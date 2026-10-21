.class public Lk0/pt$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk0/pt;->o([BII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    sget v0, Lu0/b;->f:I

    xor-int/lit16 v1, v0, 0xeb

    const/16 v2, 0x8

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xe3

    aput v4, v2, v3

    const/16 v3, 0x55

    const/4 v4, 0x1

    aput v3, v2, v4

    const/4 v3, 0x2

    const/16 v5, 0xaa

    aput v5, v2, v3

    const/4 v3, 0x3

    const/4 v5, 0x4

    aput v5, v2, v3

    const/16 v3, 0x45

    aput v3, v2, v5

    const/4 v3, 0x5

    aput v4, v2, v3

    const/4 v3, 0x6

    aput v0, v2, v3

    const/4 v0, 0x7

    aput v1, v2, v0

    .line 2
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method
