.class public Lk0/in$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/in;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/in;


# direct methods
.method public constructor <init>(Lk0/in;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/in$a;->a:Lk0/in;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    new-instance v0, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 3
    iget v1, v0, Landroid/text/format/Time;->year:I

    and-int/lit16 v2, v1, 0xff

    const/16 v3, 0x8

    shr-int/2addr v1, v3

    and-int/lit8 v1, v1, 0xf

    .line 4
    iget v4, v0, Landroid/text/format/Time;->month:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    int-to-byte v4, v4

    .line 5
    iget v6, v0, Landroid/text/format/Time;->monthDay:I

    int-to-byte v6, v6

    .line 6
    iget v7, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v7, v7

    .line 7
    iget v0, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v0, v0

    const/16 v8, 0x9

    new-array v8, v8, [I

    const/16 v9, 0xe3

    const/4 v10, 0x0

    aput v9, v8, v10

    const/16 v9, 0xc8

    aput v9, v8, v5

    const/4 v5, 0x2

    const/4 v9, 0x6

    aput v9, v8, v5

    const/4 v5, 0x3

    aput v2, v8, v5

    const/4 v2, 0x4

    shl-int/2addr v4, v2

    and-int/lit16 v4, v4, 0xf0

    or-int/2addr v1, v4

    aput v1, v8, v2

    const/4 v1, 0x5

    aput v6, v8, v1

    aput v7, v8, v9

    const/4 v1, 0x7

    aput v0, v8, v1

    aput v10, v8, v3

    .line 8
    invoke-static {v8}, Lz/k;->s([I)V

    return-void
.end method
