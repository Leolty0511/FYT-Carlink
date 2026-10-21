.class public Lk0/wl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/wl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/wl;


# direct methods
.method public constructor <init>(Lk0/wl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/wl$a;->a:Lk0/wl;

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

    const/16 v1, 0x9

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/16 v2, 0x87

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v2, 0x2

    const/4 v4, 0x6

    aput v4, v1, v2

    .line 3
    iget v2, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v2, v2, -0x7d0

    const/4 v5, 0x3

    aput v2, v1, v5

    iget v2, v0, Landroid/text/format/Time;->month:I

    add-int/2addr v2, v3

    const/4 v3, 0x4

    aput v2, v1, v3

    iget v2, v0, Landroid/text/format/Time;->monthDay:I

    const/4 v3, 0x5

    aput v2, v1, v3

    iget v2, v0, Landroid/text/format/Time;->hour:I

    aput v2, v1, v4

    iget v2, v0, Landroid/text/format/Time;->minute:I

    const/4 v3, 0x7

    aput v2, v1, v3

    iget v0, v0, Landroid/text/format/Time;->second:I

    const/16 v2, 0x8

    aput v0, v1, v2

    invoke-static {v1}, Lz/k;->s([I)V

    return-void
.end method
