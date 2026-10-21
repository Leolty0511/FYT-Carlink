.class public Lk0/c4$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/c4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/c4;


# direct methods
.method public constructor <init>(Lk0/c4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/c4$e;->a:Lk0/c4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 1
    new-instance v0, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 3
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 4
    iget v4, v0, Landroid/text/format/Time;->hour:I

    const/16 v5, 0xc

    if-le v4, v5, :cond_0

    sub-int/2addr v4, v5

    .line 5
    iput v4, v0, Landroid/text/format/Time;->hour:I

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 6
    :goto_0
    sget v5, Lk0/nt;->c:I

    const/4 v6, 0x2

    const/16 v7, -0x3a

    const/16 v8, 0xe3

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x3

    const/4 v12, 0x4

    const/4 v13, 0x7

    if-eq v5, v11, :cond_2

    if-eq v5, v12, :cond_2

    if-eq v5, v10, :cond_2

    if-eq v5, v13, :cond_2

    const/16 v14, 0x8

    if-ne v5, v14, :cond_1

    goto :goto_1

    :cond_1
    new-array v5, v13, [I

    aput v8, v5, v3

    aput v7, v5, v2

    aput v12, v5, v6

    aput v2, v5, v11

    .line 7
    iget v2, v0, Landroid/text/format/Time;->hour:I

    aput v2, v5, v12

    iget v0, v0, Landroid/text/format/Time;->minute:I

    aput v0, v5, v10

    shl-int/lit8 v0, v4, 0x7

    shl-int/2addr v1, v9

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput v0, v5, v9

    invoke-static {v5}, Lz/k;->s([I)V

    goto :goto_2

    :cond_2
    :goto_1
    new-array v1, v13, [I

    aput v8, v1, v3

    aput v7, v1, v2

    aput v12, v1, v6

    aput v2, v1, v11

    .line 8
    iget v2, v0, Landroid/text/format/Time;->hour:I

    aput v2, v1, v12

    iget v0, v0, Landroid/text/format/Time;->minute:I

    aput v0, v1, v10

    shl-int/lit8 v0, v4, 0x7

    or-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    aput v0, v1, v9

    invoke-static {v1}, Lz/k;->s([I)V

    :goto_2
    return-void
.end method
