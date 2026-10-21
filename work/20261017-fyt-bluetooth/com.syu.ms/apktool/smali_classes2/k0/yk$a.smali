.class public Lk0/yk$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/yk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/yk;


# direct methods
.method public constructor <init>(Lk0/yk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/yk$a;->a:Lk0/yk;

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

    .line 3
    iget-object v1, p0, Lk0/yk$a;->a:Lk0/yk;

    invoke-static {v1}, Lk0/yk;->a3(Lk0/yk;)I

    move-result v1

    iget v2, v0, Landroid/text/format/Time;->hour:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lk0/yk$a;->a:Lk0/yk;

    invoke-static {v1}, Lk0/yk;->c3(Lk0/yk;)I

    move-result v1

    iget v2, v0, Landroid/text/format/Time;->minute:I

    if-eq v1, v2, :cond_1

    :cond_0
    const/16 v1, 0xd

    new-array v1, v1, [I

    const/16 v2, 0xe3

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, 0xa

    aput v4, v1, v2

    const/4 v2, 0x2

    const/16 v5, -0x35

    aput v5, v1, v2

    const/4 v2, 0x3

    aput v3, v1, v2

    const/4 v2, 0x4

    .line 4
    iget v5, v0, Landroid/text/format/Time;->hour:I

    aput v5, v1, v2

    const/4 v2, 0x5

    iget v5, v0, Landroid/text/format/Time;->minute:I

    aput v5, v1, v2

    const/4 v2, 0x6

    aput v3, v1, v2

    const/4 v2, 0x7

    aput v3, v1, v2

    const/16 v2, 0x8

    aput v3, v1, v2

    const/16 v2, 0x9

    aput v3, v1, v2

    aput v3, v1, v4

    const/16 v2, 0xb

    aput v3, v1, v2

    const/16 v2, 0xc

    aput v3, v1, v2

    invoke-static {v1}, Lz/k;->s([I)V

    .line 5
    iget-object v1, p0, Lk0/yk$a;->a:Lk0/yk;

    iget v2, v0, Landroid/text/format/Time;->hour:I

    invoke-static {v1, v2}, Lk0/yk;->b3(Lk0/yk;I)I

    .line 6
    iget-object v1, p0, Lk0/yk$a;->a:Lk0/yk;

    iget v0, v0, Landroid/text/format/Time;->minute:I

    invoke-static {v1, v0}, Lk0/yk;->d3(Lk0/yk;I)I

    :cond_1
    return-void
.end method
