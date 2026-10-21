.class public Lk0/z6$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/z6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/z6;


# direct methods
.method public constructor <init>(Lk0/z6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/z6$c;->a:Lk0/z6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    sget v0, Lu0/b;->a0:I

    const/4 v1, 0x7

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x6

    if-ne v0, v3, :cond_0

    .line 2
    new-instance v0, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 4
    iget v5, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v5, v5, -0x7d0

    int-to-byte v5, v5

    .line 5
    iget v6, v0, Landroid/text/format/Time;->month:I

    add-int/2addr v6, v3

    int-to-byte v6, v6

    .line 6
    iget v7, v0, Landroid/text/format/Time;->monthDay:I

    int-to-byte v7, v7

    .line 7
    iget v8, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v8, v8

    .line 8
    iget v0, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v0, v0

    new-array v9, v2, [I

    const/4 v10, 0x0

    const/16 v11, 0xe3

    aput v11, v9, v10

    aput v2, v9, v3

    const/4 v3, 0x2

    const/16 v10, -0x5a

    aput v10, v9, v3

    const/4 v3, 0x3

    aput v5, v9, v3

    const/4 v3, 0x4

    aput v6, v9, v3

    const/4 v3, 0x5

    aput v7, v9, v3

    aput v8, v9, v4

    aput v0, v9, v1

    .line 9
    invoke-static {v9}, Lz/k;->s([I)V

    .line 10
    :cond_0
    sget v0, Lk0/nt;->c:I

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    new-array v0, v4, [I

    .line 11
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array v0, v4, [I

    .line 12
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array v0, v4, [I

    .line 13
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array v0, v4, [I

    .line 14
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x6
        0xa7
        0x5
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x6
        0xa7
        0x5
        0x3
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x6
        0xa7
        0x5
        0x2
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x6
        0xa7
        0x5
        0x1
        0x0
    .end array-data
.end method
