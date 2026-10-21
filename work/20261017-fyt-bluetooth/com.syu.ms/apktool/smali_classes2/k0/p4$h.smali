.class public Lk0/p4$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/p4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/p4;


# direct methods
.method public constructor <init>(Lk0/p4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/p4$h;->a:Lk0/p4;

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

    move-result v1

    const/4 v2, 0x6

    new-array v3, v2, [I

    const/4 v4, 0x0

    const/16 v5, 0xe3

    aput v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x7

    aput v5, v3, v4

    const/4 v4, 0x2

    aput v2, v3, v4

    const/4 v5, 0x3

    .line 4
    iget v6, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v6, v6

    aput v6, v3, v5

    const/4 v5, 0x4

    iget v0, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v0, v0

    aput v0, v3, v5

    const/4 v0, 0x5

    aput v1, v3, v0

    invoke-static {v3}, Lz/k;->s([I)V

    .line 5
    sget v0, Lk0/nt;->c:I

    if-eqz v0, :cond_0

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v2, [I

    .line 6
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x7
        0xee
        0x20
        0x85
        0x0
    .end array-data
.end method
