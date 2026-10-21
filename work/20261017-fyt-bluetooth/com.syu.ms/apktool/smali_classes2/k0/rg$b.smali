.class public Lk0/rg$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/rg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/rg;


# direct methods
.method public constructor <init>(Lk0/rg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/rg$b;->a:Lk0/rg;

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

    .line 3
    iget v1, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v1, v1

    .line 4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 5
    iget-object v4, p0, Lk0/rg$b;->a:Lk0/rg;

    invoke-static {v4}, Lk0/rg;->a3(Lk0/rg;)I

    move-result v4

    if-ne v4, v1, :cond_0

    iget-object v4, p0, Lk0/rg$b;->a:Lk0/rg;

    invoke-static {v4}, Lk0/rg;->c3(Lk0/rg;)I

    move-result v4

    if-eq v4, v2, :cond_1

    .line 6
    :cond_0
    iget-object v4, p0, Lk0/rg$b;->a:Lk0/rg;

    invoke-static {v4, v1}, Lk0/rg;->b3(Lk0/rg;I)I

    .line 7
    iget-object v4, p0, Lk0/rg$b;->a:Lk0/rg;

    invoke-static {v4, v2}, Lk0/rg;->d3(Lk0/rg;I)I

    .line 8
    iget v0, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v0, v0

    const/4 v4, 0x6

    new-array v4, v4, [I

    const/16 v5, 0xe3

    const/4 v6, 0x0

    aput v5, v4, v6

    const/16 v5, -0x68

    aput v5, v4, v3

    const/4 v3, 0x2

    const/4 v5, 0x3

    aput v5, v4, v3

    shl-int/lit8 v2, v2, 0x7

    and-int/lit16 v2, v2, 0x80

    and-int/lit8 v0, v0, 0x7f

    or-int/2addr v0, v2

    aput v0, v4, v5

    const/4 v0, 0x4

    aput v1, v4, v0

    const/4 v0, 0x5

    aput v6, v4, v0

    .line 9
    invoke-static {v4}, Lz/k;->s([I)V

    :cond_1
    return-void
.end method
