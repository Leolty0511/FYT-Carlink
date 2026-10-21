.class public Lk0/ym$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ym;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ym;


# direct methods
.method public constructor <init>(Lk0/ym;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ym$g;->a:Lk0/ym;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

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

    .line 4
    sget v2, Lk0/nt;->a:I

    const v3, 0x101c8

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/16 v7, 0xc9

    const/16 v8, 0xe3

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x1

    const/4 v12, 0x3

    if-ne v2, v3, :cond_0

    const/16 v2, 0x9

    new-array v2, v2, [I

    aput v8, v2, v9

    aput v7, v2, v11

    aput v12, v2, v6

    .line 5
    iget v3, v0, Landroid/text/format/Time;->minute:I

    aput v3, v2, v12

    iget v3, v0, Landroid/text/format/Time;->hour:I

    aput v3, v2, v5

    aput v1, v2, v4

    iget v1, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v1, v1, -0x7d0

    aput v1, v2, v10

    const/4 v1, 0x7

    iget v3, v0, Landroid/text/format/Time;->month:I

    add-int/2addr v3, v11

    aput v3, v2, v1

    const/16 v1, 0x8

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    aput v0, v2, v1

    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    new-array v2, v10, [I

    aput v8, v2, v9

    aput v7, v2, v11

    aput v12, v2, v6

    .line 6
    iget v3, v0, Landroid/text/format/Time;->minute:I

    aput v3, v2, v12

    iget v0, v0, Landroid/text/format/Time;->hour:I

    aput v0, v2, v5

    aput v1, v2, v4

    invoke-static {v2}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
