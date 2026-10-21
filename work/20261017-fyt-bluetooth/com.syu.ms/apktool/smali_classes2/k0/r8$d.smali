.class public Lk0/r8$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/r8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/r8;


# direct methods
.method public constructor <init>(Lk0/r8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/r8$d;->a:Lk0/r8;

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
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 4
    iget v3, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v3, v3, -0x7d0

    int-to-byte v3, v3

    .line 5
    iget v4, v0, Landroid/text/format/Time;->month:I

    add-int/2addr v4, v2

    int-to-byte v4, v4

    .line 6
    iget v5, v0, Landroid/text/format/Time;->monthDay:I

    int-to-byte v5, v5

    .line 7
    iget v6, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v6, v6

    .line 8
    iget v0, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v0, v0

    const/16 v7, 0x9

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/16 v9, 0xe3

    aput v9, v7, v8

    const/16 v8, -0x79

    aput v8, v7, v2

    const/4 v2, 0x2

    const/4 v8, 0x6

    aput v8, v7, v2

    const/4 v2, 0x3

    aput v3, v7, v2

    const/4 v2, 0x4

    aput v4, v7, v2

    const/4 v2, 0x5

    aput v5, v7, v2

    aput v1, v7, v8

    const/4 v1, 0x7

    aput v6, v7, v1

    const/16 v1, 0x8

    aput v0, v7, v1

    .line 9
    invoke-static {v7}, Lz/k;->s([I)V

    return-void
.end method
