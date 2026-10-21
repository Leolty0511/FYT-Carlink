.class public Lk0/sl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/sl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/sl;


# direct methods
.method public constructor <init>(Lk0/sl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/sl$a;->a:Lk0/sl;

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
    iget v0, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v0, v0

    const/16 v6, 0xb

    new-array v6, v6, [I

    const/16 v7, 0xe3

    const/4 v8, 0x0

    aput v7, v6, v8

    const/16 v7, -0x7d

    aput v7, v6, v3

    const/4 v3, 0x2

    const/16 v7, 0x8

    aput v7, v6, v3

    const/4 v3, 0x3

    aput v0, v6, v3

    const/4 v0, 0x4

    aput v5, v6, v0

    const/4 v0, 0x5

    aput v4, v6, v0

    const/4 v0, 0x6

    aput v2, v6, v0

    const/4 v0, 0x7

    aput v1, v6, v0

    aput v8, v6, v7

    const/16 v0, 0x9

    aput v8, v6, v0

    const/16 v0, 0xa

    aput v8, v6, v0

    .line 8
    invoke-static {v6}, Lz/k;->s([I)V

    return-void
.end method
