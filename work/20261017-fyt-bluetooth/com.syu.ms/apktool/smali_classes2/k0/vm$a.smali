.class public Lk0/vm$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/vm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/vm;


# direct methods
.method public constructor <init>(Lk0/vm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/vm$a;->a:Lk0/vm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

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

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xe3

    aput v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0xc9

    aput v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x3

    aput v4, v2, v3

    .line 4
    iget v3, v0, Landroid/text/format/Time;->minute:I

    aput v3, v2, v4

    const/4 v3, 0x4

    iget v0, v0, Landroid/text/format/Time;->hour:I

    aput v0, v2, v3

    const/4 v0, 0x5

    aput v1, v2, v0

    invoke-static {v2}, Lz/k;->s([I)V

    .line 5
    sget v1, Lk0/nt;->a:I

    const v2, 0x8001c5

    if-eq v1, v2, :cond_1

    const v2, 0xa201c7

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v0, [I

    .line 6
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array v0, v0, [I

    .line 7
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0xee
        0x2
        0x1
        0x2
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xee
        0x2
        0x1
        0x1
    .end array-data
.end method
