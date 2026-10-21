.class public Lk0/mr$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/mr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/mr;


# direct methods
.method public constructor <init>(Lk0/mr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/mr$a;->a:Lk0/mr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 1
    sget v0, Lu0/b;->s0:I

    int-to-double v1, v0

    const-wide v3, 0x4036800000000000L    # 22.5

    cmpg-double v5, v1, v3

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x6

    const/4 v11, 0x3

    const/4 v12, 0x0

    if-gtz v5, :cond_0

    if-gez v0, :cond_1

    :cond_0
    const-wide v13, 0x4075180000000000L    # 337.5

    cmpl-double v5, v1, v13

    if-ltz v5, :cond_2

    const/16 v5, 0x168

    if-gt v0, v5, :cond_2

    :cond_1
    move v1, v12

    goto/16 :goto_0

    :cond_2
    cmpl-double v3, v1, v3

    const-wide v4, 0x4050e00000000000L    # 67.5

    if-lez v3, :cond_3

    cmpg-double v3, v1, v4

    if-gez v3, :cond_3

    move v1, v9

    goto :goto_0

    :cond_3
    cmpl-double v3, v1, v4

    const-wide v4, 0x405c200000000000L    # 112.5

    if-ltz v3, :cond_4

    cmpg-double v3, v1, v4

    if-gtz v3, :cond_4

    move v1, v8

    goto :goto_0

    :cond_4
    cmpl-double v3, v1, v4

    const-wide v4, 0x4063b00000000000L    # 157.5

    if-lez v3, :cond_5

    cmpg-double v3, v1, v4

    if-gez v3, :cond_5

    move v1, v11

    goto :goto_0

    :cond_5
    cmpl-double v3, v1, v4

    const-wide v4, 0x4069500000000000L    # 202.5

    if-ltz v3, :cond_6

    cmpg-double v3, v1, v4

    if-gtz v3, :cond_6

    move v1, v7

    goto :goto_0

    :cond_6
    cmpl-double v3, v1, v4

    const-wide v4, 0x406ef00000000000L    # 247.5

    if-lez v3, :cond_7

    cmpg-double v3, v1, v4

    if-gez v3, :cond_7

    move v1, v6

    goto :goto_0

    :cond_7
    cmpl-double v3, v1, v4

    const-wide v4, 0x4072480000000000L    # 292.5

    if-ltz v3, :cond_8

    cmpg-double v3, v1, v4

    if-gtz v3, :cond_8

    move v1, v10

    goto :goto_0

    :cond_8
    cmpl-double v3, v1, v4

    if-lez v3, :cond_1

    cmpg-double v1, v1, v13

    if-gez v1, :cond_1

    const/4 v1, 0x7

    :goto_0
    new-array v2, v10, [I

    const/16 v3, 0xe3

    aput v3, v2, v12

    const/16 v3, 0xa7

    aput v3, v2, v9

    aput v11, v2, v8

    aput v1, v2, v11

    and-int/lit16 v1, v0, 0xff

    aput v1, v2, v7

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    aput v0, v2, v6

    .line 2
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method
