.class public Lk0/up$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/up;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/up;


# direct methods
.method public constructor <init>(Lk0/up;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/up$b;->a:Lk0/up;

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

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/16 v2, 0xb2

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v2, 0x2

    const/4 v4, 0x6

    aput v4, v1, v2

    .line 3
    iget v5, v0, Landroid/text/format/Time;->second:I

    shl-int/2addr v5, v2

    and-int/lit16 v5, v5, 0xfc

    const/4 v6, 0x3

    aput v5, v1, v6

    iget v5, v0, Landroid/text/format/Time;->minute:I

    shl-int/2addr v5, v2

    and-int/lit16 v5, v5, 0xfc

    const/4 v6, 0x4

    aput v5, v1, v6

    iget v5, v0, Landroid/text/format/Time;->hour:I

    shl-int/2addr v5, v2

    and-int/lit16 v5, v5, 0xfc

    const/4 v6, 0x5

    aput v5, v1, v6

    iget v5, v0, Landroid/text/format/Time;->monthDay:I

    shl-int/2addr v5, v2

    and-int/lit16 v5, v5, 0xfc

    aput v5, v1, v4

    iget v4, v0, Landroid/text/format/Time;->month:I

    add-int/2addr v4, v3

    shl-int/lit8 v3, v4, 0x2

    and-int/lit16 v3, v3, 0xfc

    const/4 v4, 0x7

    aput v3, v1, v4

    iget v0, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v0, v0, -0x7d0

    shl-int/2addr v0, v2

    and-int/lit16 v0, v0, 0xfc

    const/16 v2, 0x8

    aput v0, v1, v2

    invoke-static {v1}, Lz/k;->s([I)V

    return-void
.end method
