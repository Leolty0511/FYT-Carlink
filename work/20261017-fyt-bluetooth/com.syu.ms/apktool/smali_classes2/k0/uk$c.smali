.class public Lk0/uk$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/uk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/uk;


# direct methods
.method public constructor <init>(Lk0/uk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/uk$c;->a:Lk0/uk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

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

    .line 4
    iget v1, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v1, v1

    .line 5
    iget v0, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v0, v0

    const/16 v2, 0xd

    new-array v2, v2, [I

    const/16 v3, 0xe3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    const/16 v5, 0xa

    aput v5, v2, v3

    const/4 v3, 0x2

    const/16 v6, -0x35

    aput v6, v2, v3

    const/4 v3, 0x3

    aput v4, v2, v3

    const/4 v3, 0x4

    aput v1, v2, v3

    const/4 v1, 0x5

    aput v0, v2, v1

    const/4 v0, 0x6

    aput v4, v2, v0

    const/4 v0, 0x7

    aput v4, v2, v0

    const/16 v0, 0x8

    aput v4, v2, v0

    const/16 v0, 0x9

    aput v4, v2, v0

    aput v4, v2, v5

    const/16 v0, 0xb

    aput v4, v2, v0

    const/16 v0, 0xc

    aput v4, v2, v0

    .line 6
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method
