.class public Lk0/ck$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ck;


# direct methods
.method public constructor <init>(Lk0/ck;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ck$c;->a:Lk0/ck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

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

    int-to-byte v1, v1

    .line 4
    iget v2, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v2, v2

    .line 5
    iget v0, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v0, v0

    const/16 v3, 0xd

    new-array v3, v3, [I

    const/16 v4, 0xe3

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    const/16 v6, 0xa

    aput v6, v3, v4

    const/4 v7, 0x2

    const/16 v8, -0x35

    aput v8, v3, v7

    const/4 v7, 0x3

    aput v5, v3, v7

    const/4 v7, 0x4

    aput v5, v3, v7

    const/4 v7, 0x5

    aput v5, v3, v7

    const/4 v7, 0x6

    aput v2, v3, v7

    const/4 v7, 0x7

    aput v0, v3, v7

    const/16 v0, 0x8

    aput v1, v3, v0

    const/16 v0, 0x9

    const/16 v1, 0xc

    if-lt v2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    aput v4, v3, v0

    aput v5, v3, v6

    const/16 v0, 0xb

    aput v5, v3, v0

    aput v5, v3, v1

    .line 6
    invoke-static {v3}, Lz/k;->s([I)V

    return-void
.end method
