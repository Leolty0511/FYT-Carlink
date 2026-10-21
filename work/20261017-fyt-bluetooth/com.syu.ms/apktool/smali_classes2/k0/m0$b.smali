.class public Lk0/m0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/m0;


# direct methods
.method public constructor <init>(Lk0/m0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/m0$b;->a:Lk0/m0;

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

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/16 v3, 0xa

    new-array v3, v3, [I

    const/16 v4, 0xe3

    const/4 v5, 0x0

    aput v4, v3, v5

    const/16 v4, 0xa6

    aput v4, v3, v2

    const/4 v4, 0x2

    const/4 v6, 0x7

    aput v6, v3, v4

    const/4 v7, 0x3

    .line 4
    iget v8, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v8, v8, -0x7d0

    int-to-byte v8, v8

    aput v8, v3, v7

    const/4 v7, 0x4

    iget v8, v0, Landroid/text/format/Time;->month:I

    add-int/2addr v8, v2

    int-to-byte v8, v8

    aput v8, v3, v7

    const/4 v7, 0x5

    iget v8, v0, Landroid/text/format/Time;->monthDay:I

    int-to-byte v8, v8

    aput v8, v3, v7

    shl-int/2addr v1, v6

    iget v7, v0, Landroid/text/format/Time;->hour:I

    or-int/2addr v1, v7

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v7, 0x6

    aput v1, v3, v7

    iget v1, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v1, v1

    aput v1, v3, v6

    const/16 v1, 0x8

    iget v0, v0, Landroid/text/format/Time;->second:I

    int-to-byte v0, v0

    aput v0, v3, v1

    const/16 v0, 0x9

    aput v2, v3, v0

    invoke-static {v3}, Lz/k;->s([I)V

    .line 5
    iget-object v0, p0, Lk0/m0$b;->a:Lk0/m0;

    iget v1, v0, Lk0/m0;->t:I

    const/16 v3, 0x14

    if-ne v1, v3, :cond_3

    .line 6
    iget v1, v0, Lk0/m0;->E:I

    const/16 v3, 0x418

    if-ne v1, v2, :cond_2

    .line 7
    iget v1, v0, Lk0/m0;->F:I

    add-int/2addr v1, v2

    iput v1, v0, Lk0/m0;->F:I

    if-lt v1, v7, :cond_0

    .line 8
    sget-object v0, Lk0/nt;->f:[Lo1/x;

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    invoke-static {v0, v3, v1}, Lo1/x;->B([Lo1/x;I[I)V

    goto :goto_0

    .line 9
    :cond_0
    rem-int/2addr v1, v4

    if-ne v1, v2, :cond_1

    .line 10
    sget-object v0, Lk0/nt;->f:[Lo1/x;

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    invoke-static {v0, v3, v1}, Lo1/x;->B([Lo1/x;I[I)V

    goto :goto_0

    .line 11
    :cond_1
    sget-object v0, Lk0/nt;->f:[Lo1/x;

    new-array v1, v4, [I

    fill-array-data v1, :array_2

    invoke-static {v0, v3, v1}, Lo1/x;->B([Lo1/x;I[I)V

    goto :goto_0

    .line 12
    :cond_2
    iput v5, v0, Lk0/m0;->F:I

    .line 13
    sget-object v0, Lk0/nt;->f:[Lo1/x;

    new-array v1, v4, [I

    fill-array-data v1, :array_3

    invoke-static {v0, v3, v1}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_3
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x0
    .end array-data
.end method
