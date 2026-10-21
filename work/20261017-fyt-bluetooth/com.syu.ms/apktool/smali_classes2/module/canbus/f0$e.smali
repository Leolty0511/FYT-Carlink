.class public Lmodule/canbus/f0$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/f0;


# direct methods
.method public constructor <init>(Lmodule/canbus/f0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/f0$e;->a:Lmodule/canbus/f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmodule/canbus/f0$e;->a:Lmodule/canbus/f0;

    iget v0, v0, Lmodule/canbus/f0;->s:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 2
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.syu.carinfo.wc.crown.wc_420_crown_AirControlAct"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Lo1/u;->s0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lo1/u;->s0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo1/u;->j0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    invoke-virtual {v0}, Lc/e;->b()Lc/e;

    .line 6
    invoke-static {}, La/i;->A()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lo1/u;->s0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo1/u;->J0(Ljava/lang/String;)I

    .line 8
    :cond_2
    :goto_0
    iget-object v0, p0, Lmodule/canbus/f0$e;->a:Lmodule/canbus/f0;

    invoke-static {v0}, Lmodule/canbus/f0;->n3(Lmodule/canbus/f0;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lmodule/canbus/f0$e;->a:Lmodule/canbus/f0;

    iget v2, v0, Lmodule/canbus/f0;->s:I

    if-lez v2, :cond_4

    sub-int/2addr v2, v1

    .line 10
    iput v2, v0, Lmodule/canbus/f0;->s:I

    :cond_4
    return-void
.end method
