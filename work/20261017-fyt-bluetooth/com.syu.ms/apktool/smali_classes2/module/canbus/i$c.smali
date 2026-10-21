.class public Lmodule/canbus/i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/i;


# direct methods
.method public constructor <init>(Lmodule/canbus/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/i$c;->a:Lmodule/canbus/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->f2:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    iget-object v0, p0, Lmodule/canbus/i$c;->a:Lmodule/canbus/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmodule/canbus/i;->f3(Lmodule/canbus/i;I)V

    goto :goto_0

    .line 3
    :pswitch_1
    iget-object v0, p0, Lmodule/canbus/i$c;->a:Lmodule/canbus/i;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lmodule/canbus/i;->f3(Lmodule/canbus/i;I)V

    goto :goto_0

    .line 4
    :pswitch_2
    iget-object v0, p0, Lmodule/canbus/i$c;->a:Lmodule/canbus/i;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lmodule/canbus/i;->f3(Lmodule/canbus/i;I)V

    goto :goto_0

    .line 5
    :pswitch_3
    iget-object v0, p0, Lmodule/canbus/i$c;->a:Lmodule/canbus/i;

    const/16 v1, 0x15

    invoke-static {v0, v1}, Lmodule/canbus/i;->f3(Lmodule/canbus/i;I)V

    goto :goto_0

    .line 6
    :pswitch_4
    iget-object v0, p0, Lmodule/canbus/i$c;->a:Lmodule/canbus/i;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lmodule/canbus/i;->f3(Lmodule/canbus/i;I)V

    goto :goto_0

    .line 7
    :pswitch_5
    iget-object v0, p0, Lmodule/canbus/i$c;->a:Lmodule/canbus/i;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lmodule/canbus/i;->f3(Lmodule/canbus/i;I)V

    goto :goto_0

    .line 8
    :pswitch_6
    iget-object v0, p0, Lmodule/canbus/i$c;->a:Lmodule/canbus/i;

    const/16 v1, 0xd

    invoke-static {v0, v1}, Lmodule/canbus/i;->f3(Lmodule/canbus/i;I)V

    goto :goto_0

    .line 9
    :pswitch_7
    iget-object v0, p0, Lmodule/canbus/i$c;->a:Lmodule/canbus/i;

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lmodule/canbus/i;->f3(Lmodule/canbus/i;I)V

    goto :goto_0

    .line 10
    :pswitch_8
    iget-object v0, p0, Lmodule/canbus/i$c;->a:Lmodule/canbus/i;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lmodule/canbus/i;->f3(Lmodule/canbus/i;I)V

    goto :goto_0

    .line 11
    :pswitch_9
    iget-object v0, p0, Lmodule/canbus/i$c;->a:Lmodule/canbus/i;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lmodule/canbus/i;->f3(Lmodule/canbus/i;I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
