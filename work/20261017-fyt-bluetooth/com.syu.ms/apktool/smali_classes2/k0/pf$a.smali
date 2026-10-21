.class public Lk0/pf$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/pf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/pf;


# direct methods
.method public constructor <init>(Lk0/pf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/pf$a;->a:Lk0/pf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

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
    iget v0, v0, Landroid/text/format/Time;->second:I

    int-to-byte v0, v0

    const/16 v7, 0xb

    new-array v7, v7, [B

    const/4 v8, 0x0

    const/16 v9, 0x53

    aput-byte v9, v7, v8

    const/16 v8, 0x57

    aput-byte v8, v7, v3

    const/4 v3, 0x2

    const/16 v8, -0x80

    aput-byte v8, v7, v3

    const/4 v3, 0x3

    const/4 v8, 0x7

    aput-byte v8, v7, v3

    const/4 v3, 0x4

    const/4 v9, 0x6

    aput-byte v9, v7, v3

    const/4 v3, 0x5

    aput-byte v1, v7, v3

    aput-byte v2, v7, v9

    aput-byte v4, v7, v8

    const/16 v1, 0x8

    aput-byte v5, v7, v1

    const/16 v1, 0x9

    aput-byte v6, v7, v1

    const/16 v1, 0xa

    aput-byte v0, v7, v1

    .line 9
    invoke-static {v7}, Lk0/pf;->c3([B)V

    return-void
.end method
