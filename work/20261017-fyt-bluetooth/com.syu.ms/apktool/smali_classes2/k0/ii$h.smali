.class public Lk0/ii$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ii;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ii;


# direct methods
.method public constructor <init>(Lk0/ii;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ii$h;->a:Lk0/ii;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    new-instance v0, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 3
    iget v1, v0, Landroid/text/format/Time;->year:I

    int-to-byte v1, v1

    .line 4
    iget v2, v0, Landroid/text/format/Time;->month:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    int-to-byte v2, v2

    .line 5
    iget v4, v0, Landroid/text/format/Time;->monthDay:I

    int-to-byte v4, v4

    .line 6
    iget v5, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v5, v5

    .line 7
    iget v0, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v0, v0

    const/16 v6, 0x9

    new-array v6, v6, [I

    const/16 v7, 0xe3

    const/4 v8, 0x0

    aput v7, v6, v8

    const/16 v7, -0x7e

    aput v7, v6, v3

    const/4 v3, 0x2

    const/4 v7, 0x6

    aput v7, v6, v3

    and-int/lit16 v3, v1, 0xff

    const/4 v9, 0x3

    aput v3, v6, v9

    const/4 v3, 0x4

    shl-int/2addr v2, v3

    and-int/lit8 v1, v1, 0xf

    or-int/2addr v1, v2

    aput v1, v6, v3

    const/4 v1, 0x5

    aput v4, v6, v1

    aput v5, v6, v7

    const/4 v2, 0x7

    aput v0, v6, v2

    const/16 v0, 0x8

    aput v8, v6, v0

    .line 8
    invoke-static {v6}, Lz/k;->s([I)V

    .line 9
    sget v0, Lk0/nt;->a:I

    const v2, 0xad01b7

    if-eq v0, v2, :cond_1

    const v2, 0xae01b7    # 1.5979992E-38f

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v1, [I

    .line 10
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array v0, v1, [I

    .line 11
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        -0x12
        0x2
        0x53
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x12
        0x2
        0x53
        0x2
    .end array-data
.end method
