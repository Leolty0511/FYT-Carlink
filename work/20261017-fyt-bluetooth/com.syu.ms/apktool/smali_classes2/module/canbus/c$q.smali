.class public Lmodule/canbus/c$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/c;


# direct methods
.method public constructor <init>(Lmodule/canbus/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/c$q;->a:Lmodule/canbus/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lk0/nt;->c:I

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_0

    const/16 v1, 0x43

    if-eq v0, v1, :cond_0

    const/16 v1, 0x46

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 2
    :cond_0
    :pswitch_0
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    sget v0, Lu0/b;->o:I

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lmodule/canbus/c$q;->a:Lmodule/canbus/c;

    iget-object v1, v0, Lk0/lt;->a:Lk0/mt;

    iget v1, v1, Lk0/mt;->l:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 5
    iget v0, v0, Lmodule/canbus/c;->k0:I

    if-ne v0, v2, :cond_2

    .line 6
    invoke-static {}, Lo1/u;->a0()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lmodule/canbus/c$q;->a:Lmodule/canbus/c;

    invoke-static {v0, v2}, Lmodule/canbus/c;->v3(Lmodule/canbus/c;Z)Z

    .line 8
    invoke-static {}, Lo1/u;->z()I

    goto :goto_0

    .line 9
    :cond_1
    iget v0, v0, Lmodule/canbus/c;->k0:I

    if-ne v0, v2, :cond_2

    .line 10
    invoke-static {}, Lo1/u;->V()Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    iget-object v0, p0, Lmodule/canbus/c$q;->a:Lmodule/canbus/c;

    invoke-static {v0, v2}, Lmodule/canbus/c;->v3(Lmodule/canbus/c;Z)Z

    .line 12
    invoke-static {}, Lo1/u;->j()I

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
