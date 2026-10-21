.class public Lk0/qa$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/qa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/qa;


# direct methods
.method public constructor <init>(Lk0/qa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/qa$b;->a:Lk0/qa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    .line 1
    new-instance v0, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 3
    iget v1, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v1, v1, -0x7d0

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
    iget v6, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v6, v6

    .line 8
    sget v7, Lk0/nt;->c:I

    const/16 v9, 0xb2

    const/16 v10, 0xe3

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x6

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 v8, 0x22

    if-eq v7, v8, :cond_1

    const/16 v8, 0x23

    if-ne v7, v8, :cond_0

    goto :goto_0

    :cond_0
    const/16 v7, 0x9

    new-array v7, v7, [I

    aput v10, v7, v11

    aput v9, v7, v3

    aput v13, v7, v15

    .line 9
    iget v0, v0, Landroid/text/format/Time;->second:I

    shl-int/2addr v0, v15

    and-int/lit16 v0, v0, 0xff

    aput v0, v7, v14

    shl-int/lit8 v0, v6, 0x2

    and-int/lit16 v0, v0, 0xff

    aput v0, v7, v12

    shl-int/lit8 v0, v5, 0x3

    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x5

    aput v0, v7, v3

    shl-int/lit8 v0, v4, 0x3

    and-int/lit16 v0, v0, 0xff

    aput v0, v7, v13

    const/4 v0, 0x7

    shl-int/2addr v2, v12

    and-int/lit16 v2, v2, 0xff

    aput v2, v7, v0

    const/16 v0, 0x8

    shl-int/2addr v1, v15

    and-int/lit16 v1, v1, 0xff

    aput v1, v7, v0

    invoke-static {v7}, Lz/k;->s([I)V

    goto :goto_1

    :cond_1
    :goto_0
    new-array v1, v13, [I

    aput v10, v1, v11

    aput v9, v1, v3

    aput v14, v1, v15

    and-int/lit16 v2, v5, 0xff

    aput v2, v1, v14

    and-int/lit16 v2, v6, 0xff

    aput v2, v1, v12

    .line 10
    iget v0, v0, Landroid/text/format/Time;->second:I

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x5

    aput v0, v1, v2

    invoke-static {v1}, Lz/k;->s([I)V

    :goto_1
    return-void
.end method
