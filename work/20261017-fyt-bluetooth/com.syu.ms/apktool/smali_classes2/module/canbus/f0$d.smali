.class public Lmodule/canbus/f0$d;
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
    iput-object p1, p0, Lmodule/canbus/f0$d;->a:Lmodule/canbus/f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmodule/canbus/f0$d;->a:Lmodule/canbus/f0;

    iget v0, v0, Lmodule/canbus/f0;->q:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.syu.carinfo.wc.crown.wc_420_crown_AmpSetAct"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lo1/u;->k()V

    .line 4
    :cond_0
    iget-object v0, p0, Lmodule/canbus/f0$d;->a:Lmodule/canbus/f0;

    invoke-static {v0}, Lmodule/canbus/f0;->m3(Lmodule/canbus/f0;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lmodule/canbus/f0$d;->a:Lmodule/canbus/f0;

    iget v2, v0, Lmodule/canbus/f0;->q:I

    if-lez v2, :cond_2

    sub-int/2addr v2, v1

    .line 6
    iput v2, v0, Lmodule/canbus/f0;->q:I

    :cond_2
    return-void
.end method
