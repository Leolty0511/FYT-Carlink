.class public Lk0/y4$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/y4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/y4;


# direct methods
.method public constructor <init>(Lk0/y4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/y4$d;->a:Lk0/y4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    sget v0, Lu0/b;->a0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 4
    iget v2, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v2, v2, -0x7d0

    int-to-byte v2, v2

    .line 5
    iget v3, v0, Landroid/text/format/Time;->month:I

    add-int/2addr v3, v1

    int-to-byte v3, v3

    .line 6
    iget v4, v0, Landroid/text/format/Time;->monthDay:I

    int-to-byte v4, v4

    .line 7
    iget v5, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v5, v5

    .line 8
    iget v0, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v0, v0

    const/16 v6, 0x8

    new-array v7, v6, [I

    const/4 v8, 0x0

    const/16 v9, 0xe3

    aput v9, v7, v8

    aput v6, v7, v1

    const/4 v1, 0x2

    const/16 v6, -0x5a

    aput v6, v7, v1

    const/4 v1, 0x3

    aput v2, v7, v1

    const/4 v1, 0x4

    aput v3, v7, v1

    const/4 v1, 0x5

    aput v4, v7, v1

    const/4 v1, 0x6

    aput v5, v7, v1

    const/4 v1, 0x7

    aput v0, v7, v1

    .line 9
    invoke-static {v7}, Lz/k;->s([I)V

    :cond_0
    return-void
.end method
