.class public Lk0/s1$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/s1;


# direct methods
.method public constructor <init>(Lk0/s1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/s1$k;->a:Lk0/s1;

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
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    .line 4
    iget v2, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v3, v2

    .line 5
    iget v4, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v5, v4

    .line 6
    iget v0, v0, Landroid/text/format/Time;->second:I

    int-to-byte v0, v0

    const/4 v6, 0x5

    new-array v7, v6, [I

    const/4 v8, 0x0

    const/16 v9, 0xe3

    aput v9, v7, v8

    const/16 v10, 0x89

    const/4 v11, 0x1

    aput v10, v7, v11

    const/4 v10, 0x2

    aput v10, v7, v10

    const/4 v12, 0x7

    shl-int/2addr v1, v12

    or-int/2addr v2, v1

    const/4 v13, 0x3

    aput v2, v7, v13

    const/4 v2, 0x4

    aput v4, v7, v2

    .line 7
    invoke-static {v7}, Lz/k;->s([I)V

    new-array v4, v12, [I

    aput v9, v4, v8

    const/16 v7, -0x3a

    aput v7, v4, v11

    aput v2, v4, v10

    const/16 v7, 0x50

    aput v7, v4, v13

    or-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput v1, v4, v2

    aput v5, v4, v6

    const/4 v1, 0x6

    aput v0, v4, v1

    .line 8
    invoke-static {v4}, Lz/k;->s([I)V

    return-void
.end method
