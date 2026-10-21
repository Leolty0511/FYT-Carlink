.class public Lk0/j8$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/j8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/j8;


# direct methods
.method public constructor <init>(Lk0/j8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/j8$c;->a:Lk0/j8;

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
    iget v1, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v1, v1

    .line 4
    iget v2, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v2, v2

    .line 5
    iget v3, v0, Landroid/text/format/Time;->second:I

    int-to-byte v3, v3

    const/16 v4, 0x9

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0xe3

    aput v6, v4, v5

    const/16 v5, 0xa6

    const/4 v6, 0x1

    aput v5, v4, v6

    const/4 v5, 0x2

    const/4 v7, 0x6

    aput v7, v4, v5

    .line 6
    iget v5, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v5, v5, -0x7e4

    const/4 v8, 0x3

    aput v5, v4, v8

    iget v5, v0, Landroid/text/format/Time;->month:I

    add-int/2addr v5, v6

    const/4 v6, 0x4

    aput v5, v4, v6

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    const/4 v5, 0x5

    aput v0, v4, v5

    aput v1, v4, v7

    const/4 v0, 0x7

    aput v2, v4, v0

    const/16 v0, 0x8

    aput v3, v4, v0

    invoke-static {v4}, Lz/k;->s([I)V

    return-void
.end method
