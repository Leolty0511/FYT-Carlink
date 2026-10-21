.class public Lmodule/canbus/i0$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/i0;


# direct methods
.method public constructor <init>(Lmodule/canbus/i0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/i0$g;->a:Lmodule/canbus/i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lmodule/canbus/i0$g;->a:Lmodule/canbus/i0;

    invoke-static {v0}, Lmodule/canbus/i0;->B3(Lmodule/canbus/i0;)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lmodule/canbus/i0$g;->a:Lmodule/canbus/i0;

    invoke-static {v0}, Lmodule/canbus/i0;->E3(Lmodule/canbus/i0;)I

    .line 4
    iget-object v0, p0, Lmodule/canbus/i0$g;->a:Lmodule/canbus/i0;

    invoke-static {v0}, Lmodule/canbus/i0;->C3(Lmodule/canbus/i0;)I

    move-result v0

    iget-object v2, p0, Lmodule/canbus/i0$g;->a:Lmodule/canbus/i0;

    invoke-static {v2}, Lmodule/canbus/i0;->B3(Lmodule/canbus/i0;)I

    move-result v2

    div-int/2addr v2, v1

    if-ne v0, v2, :cond_1

    .line 5
    iget-object v0, p0, Lmodule/canbus/i0$g;->a:Lmodule/canbus/i0;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmodule/canbus/i0;->D3(Lmodule/canbus/i0;I)I

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lmodule/canbus/i0$g;->a:Lmodule/canbus/i0;

    iget-object v0, v0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 7
    invoke-static {}, Lmodule/canbus/i0;->F3()I

    move-result v0

    invoke-static {}, Lmodule/canbus/i0;->G3()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 8
    iget-object v0, p0, Lmodule/canbus/i0$g;->a:Lmodule/canbus/i0;

    invoke-static {v0}, Lmodule/canbus/i0;->H3(Lmodule/canbus/i0;)V

    .line 9
    :cond_2
    invoke-static {}, Lmodule/canbus/i0;->I3()I

    move-result v0

    invoke-static {}, Lmodule/canbus/i0;->J3()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 10
    iget-object v0, p0, Lmodule/canbus/i0$g;->a:Lmodule/canbus/i0;

    invoke-static {v0}, Lmodule/canbus/i0;->K3(Lmodule/canbus/i0;)V

    :cond_3
    return-void
.end method
