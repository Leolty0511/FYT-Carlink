.class public Lk0/j7$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/j7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/j7;


# direct methods
.method public constructor <init>(Lk0/j7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/j7$g;->a:Lk0/j7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1
    new-instance v0, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 3
    iget v1, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v1, v1

    .line 4
    iget v2, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v2, v2

    .line 5
    iget v3, v0, Landroid/text/format/Time;->second:I

    int-to-byte v3, v3

    .line 6
    sget v4, Lk0/nt;->c:I

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/16 v8, 0xe3

    const/4 v9, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x6

    const/4 v12, 0x1

    const/16 v13, 0xc

    if-eq v4, v13, :cond_1

    const/16 v13, 0xd

    if-eq v4, v13, :cond_1

    const/16 v13, 0x13

    if-eq v4, v13, :cond_1

    const/16 v13, 0x15

    if-ne v4, v13, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v11, [I

    aput v8, v0, v9

    const/16 v4, 0x76

    aput v4, v0, v12

    aput v10, v0, v7

    aput v1, v0, v10

    aput v2, v0, v6

    aput v3, v0, v5

    .line 7
    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v3, 0x9

    new-array v3, v3, [I

    aput v8, v3, v9

    const/16 v4, 0x84

    aput v4, v3, v12

    aput v11, v3, v7

    .line 8
    iget v4, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v4, v4, -0x7e4

    aput v4, v3, v10

    iget v4, v0, Landroid/text/format/Time;->month:I

    add-int/2addr v4, v12

    aput v4, v3, v6

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    aput v0, v3, v5

    aput v1, v3, v11

    const/4 v0, 0x7

    aput v2, v3, v0

    const/16 v0, 0x8

    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    xor-int/2addr v1, v12

    int-to-byte v1, v1

    aput v1, v3, v0

    invoke-static {v3}, Lz/k;->s([I)V

    :goto_1
    return-void
.end method
