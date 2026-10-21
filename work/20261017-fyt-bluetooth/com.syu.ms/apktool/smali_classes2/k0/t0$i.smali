.class public Lk0/t0$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/t0;


# direct methods
.method public constructor <init>(Lk0/t0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/t0$i;->a:Lk0/t0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

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

    const/4 v3, 0x7

    new-array v3, v3, [I

    const/16 v4, 0xe3

    const/4 v5, 0x0

    aput v4, v3, v5

    const/16 v4, 0xc8

    aput v4, v3, v2

    const/4 v2, 0x2

    const/4 v4, 0x4

    aput v4, v3, v2

    const/4 v2, 0x3

    aput v5, v3, v2

    aput v1, v3, v4

    const/4 v1, 0x5

    .line 4
    iget v2, v0, Landroid/text/format/Time;->hour:I

    aput v2, v3, v1

    const/4 v1, 0x6

    iget v0, v0, Landroid/text/format/Time;->minute:I

    aput v0, v3, v1

    invoke-static {v3}, Lz/k;->s([I)V

    return-void
.end method
