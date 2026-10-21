.class public Lk0/n5$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/n5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/n5;


# direct methods
.method public constructor <init>(Lk0/n5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/n5$b;->a:Lk0/n5;

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

    .line 2
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 3
    iget v1, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v1, v1, -0x7d0

    int-to-byte v1, v1

    .line 4
    iget v2, v0, Landroid/text/format/Time;->month:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    int-to-byte v2, v2

    .line 5
    iget v4, v0, Landroid/text/format/Time;->monthDay:I

    int-to-byte v4, v4

    .line 6
    iget v5, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v5, v5

    .line 7
    iget v6, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v6, v6

    .line 8
    iget v7, v0, Landroid/text/format/Time;->second:I

    int-to-byte v7, v7

    .line 9
    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    int-to-byte v0, v0

    .line 10
    iget-object v8, p0, Lk0/n5$b;->a:Lk0/n5;

    const/4 v9, 0x7

    new-array v10, v9, [I

    const/4 v11, 0x0

    aput v1, v10, v11

    aput v2, v10, v3

    const/4 v1, 0x2

    aput v4, v10, v1

    const/4 v1, 0x3

    aput v5, v10, v1

    const/4 v1, 0x4

    aput v6, v10, v1

    const/4 v1, 0x5

    aput v7, v10, v1

    and-int/lit8 v0, v0, 0xf

    or-int/lit16 v0, v0, 0xe0

    const/4 v1, 0x6

    aput v0, v10, v1

    const/16 v0, 0x76

    invoke-static {v8, v0, v9, v10}, Lk0/n5;->b3(Lk0/n5;II[I)V

    return-void
.end method
