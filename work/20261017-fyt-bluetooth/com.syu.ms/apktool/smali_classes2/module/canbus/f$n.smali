.class public Lmodule/canbus/f$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/f;


# direct methods
.method public constructor <init>(Lmodule/canbus/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/f$n;->a:Lmodule/canbus/f;

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
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    .line 4
    iget-object v2, p0, Lmodule/canbus/f$n;->a:Lmodule/canbus/f;

    invoke-static {v2}, Lmodule/canbus/f;->q3(Lmodule/canbus/f;)I

    move-result v2

    iget v3, v0, Landroid/text/format/Time;->hour:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lmodule/canbus/f$n;->a:Lmodule/canbus/f;

    invoke-static {v2}, Lmodule/canbus/f;->s3(Lmodule/canbus/f;)I

    move-result v2

    iget v3, v0, Landroid/text/format/Time;->minute:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lmodule/canbus/f$n;->a:Lmodule/canbus/f;

    invoke-static {v2}, Lmodule/canbus/f;->u3(Lmodule/canbus/f;)I

    move-result v2

    if-eq v2, v1, :cond_1

    :cond_0
    const/4 v2, 0x7

    new-array v2, v2, [I

    const/16 v3, 0xe3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    const/16 v5, -0x38

    aput v5, v2, v3

    const/4 v3, 0x2

    const/4 v5, 0x4

    aput v5, v2, v3

    const/4 v3, 0x3

    .line 5
    iget v6, v0, Landroid/text/format/Time;->minute:I

    aput v6, v2, v3

    iget v3, v0, Landroid/text/format/Time;->hour:I

    aput v3, v2, v5

    const/4 v3, 0x5

    aput v1, v2, v3

    const/4 v3, 0x6

    aput v4, v2, v3

    invoke-static {v2}, Lz/k;->s([I)V

    .line 6
    iget-object v2, p0, Lmodule/canbus/f$n;->a:Lmodule/canbus/f;

    iget v3, v0, Landroid/text/format/Time;->hour:I

    invoke-static {v2, v3}, Lmodule/canbus/f;->r3(Lmodule/canbus/f;I)I

    .line 7
    iget-object v2, p0, Lmodule/canbus/f$n;->a:Lmodule/canbus/f;

    iget v0, v0, Landroid/text/format/Time;->minute:I

    invoke-static {v2, v0}, Lmodule/canbus/f;->t3(Lmodule/canbus/f;I)I

    .line 8
    iget-object v0, p0, Lmodule/canbus/f$n;->a:Lmodule/canbus/f;

    invoke-static {v0, v1}, Lmodule/canbus/f;->v3(Lmodule/canbus/f;I)I

    :cond_1
    return-void
.end method
