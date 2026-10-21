.class public Lk0/ap$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ap;


# direct methods
.method public constructor <init>(Lk0/ap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ap$a;->a:Lk0/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1
    new-instance v0, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    const/4 v1, 0x7

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/16 v4, 0xe3

    aput v4, v2, v3

    const/4 v5, 0x1

    const/16 v6, 0x9a

    aput v6, v2, v5

    const/4 v7, 0x2

    const/4 v8, 0x4

    aput v8, v2, v7

    const/16 v9, 0x11

    const/4 v10, 0x3

    aput v9, v2, v10

    .line 3
    iget v9, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v9, v9

    aput v9, v2, v8

    iget v9, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v9, v9

    const/4 v11, 0x5

    aput v9, v2, v11

    iget v9, v0, Landroid/text/format/Time;->second:I

    int-to-byte v9, v9

    const/4 v12, 0x6

    aput v9, v2, v12

    invoke-static {v2}, Lz/k;->s([I)V

    const/16 v2, 0x8

    new-array v2, v2, [I

    aput v4, v2, v3

    aput v6, v2, v5

    aput v8, v2, v7

    const/16 v3, 0x13

    aput v3, v2, v10

    .line 4
    iget v3, v0, Landroid/text/format/Time;->year:I

    shr-int/lit8 v4, v3, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput v4, v2, v8

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v11

    iget v3, v0, Landroid/text/format/Time;->month:I

    add-int/2addr v3, v5

    int-to-byte v3, v3

    aput v3, v2, v12

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    int-to-byte v0, v0

    aput v0, v2, v1

    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method
