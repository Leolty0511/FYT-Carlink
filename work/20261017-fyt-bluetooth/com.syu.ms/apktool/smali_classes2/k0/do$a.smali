.class public Lk0/do$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/do;


# direct methods
.method public constructor <init>(Lk0/do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/do$a;->a:Lk0/do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

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
    iget v3, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v3, v3

    .line 5
    iget v4, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v4, v4

    .line 6
    iget v0, v0, Landroid/text/format/Time;->second:I

    int-to-byte v0, v0

    const/4 v5, 0x6

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0xe3

    aput v7, v5, v6

    const/16 v6, 0x98

    aput v6, v5, v2

    const/4 v2, 0x2

    const/4 v6, 0x3

    aput v6, v5, v2

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput v1, v5, v6

    const/4 v1, 0x4

    aput v4, v5, v1

    const/4 v1, 0x5

    aput v0, v5, v1

    .line 7
    invoke-static {v5}, Lz/k;->s([I)V

    return-void
.end method
