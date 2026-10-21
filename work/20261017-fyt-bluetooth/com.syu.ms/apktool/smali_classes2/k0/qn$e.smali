.class public Lk0/qn$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/qn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Landroid/text/format/Time;

.field public final synthetic b:Lk0/qn;


# direct methods
.method public constructor <init>(Lk0/qn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/qn$e;->b:Lk0/qn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    new-instance v0, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lk0/qn$e;->a:Landroid/text/format/Time;

    .line 2
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 3
    iget-object v0, p0, Lk0/qn$e;->a:Landroid/text/format/Time;

    iget v1, v0, Landroid/text/format/Time;->year:I

    and-int/lit16 v2, v1, 0xff

    int-to-byte v2, v2

    const/16 v3, 0x8

    shr-int/2addr v1, v3

    and-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    .line 4
    iget v4, v0, Landroid/text/format/Time;->month:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    int-to-byte v4, v4

    const/4 v6, 0x4

    shl-int/2addr v4, v6

    or-int/2addr v1, v4

    int-to-byte v1, v1

    .line 5
    iget v4, v0, Landroid/text/format/Time;->monthDay:I

    int-to-byte v4, v4

    .line 6
    iget v7, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v7, v7

    .line 7
    iget v8, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v8, v8

    .line 8
    iget v0, v0, Landroid/text/format/Time;->second:I

    int-to-byte v0, v0

    const/16 v9, 0x9

    new-array v9, v9, [I

    const/4 v10, 0x0

    const/16 v11, 0xe3

    aput v11, v9, v10

    const/16 v10, -0x7e

    aput v10, v9, v5

    const/4 v5, 0x2

    const/4 v10, 0x6

    aput v10, v9, v5

    const/4 v5, 0x3

    aput v2, v9, v5

    aput v1, v9, v6

    const/4 v1, 0x5

    aput v4, v9, v1

    aput v7, v9, v10

    const/4 v1, 0x7

    aput v8, v9, v1

    aput v0, v9, v3

    .line 9
    invoke-static {v9}, Lz/k;->s([I)V

    return-void
.end method
