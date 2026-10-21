.class public Lk0/ao$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ao;


# direct methods
.method public constructor <init>(Lk0/ao;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ao$b;->a:Lk0/ao;

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

    const/16 v1, 0x9

    new-array v1, v1, [I

    const/16 v2, 0xe3

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0x82

    const/4 v4, 0x1

    aput v2, v1, v4

    const/4 v2, 0x2

    const/4 v5, 0x6

    aput v5, v1, v2

    .line 3
    iget v2, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v2, v2, -0x7d0

    int-to-byte v2, v2

    const/4 v6, 0x3

    aput v2, v1, v6

    iget v2, v0, Landroid/text/format/Time;->month:I

    add-int/2addr v2, v4

    int-to-byte v2, v2

    const/4 v4, 0x4

    aput v2, v1, v4

    iget v2, v0, Landroid/text/format/Time;->monthDay:I

    int-to-byte v2, v2

    const/4 v4, 0x5

    aput v2, v1, v4

    iget v2, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v2, v2

    aput v2, v1, v5

    iget v0, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v0, v0

    const/4 v2, 0x7

    aput v0, v1, v2

    const/16 v0, 0x8

    aput v3, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    return-void
.end method
