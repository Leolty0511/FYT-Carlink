.class public Lmodule/canbus/a$l;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "l"
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/a;


# direct methods
.method public constructor <init>(Lmodule/canbus/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/a$l;->a:Lmodule/canbus/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmodule/canbus/a;Lmodule/canbus/a$b;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lmodule/canbus/a$l;-><init>(Lmodule/canbus/a;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "com.mxnavi.mxnavi.TO_CTRL_GPS_INFO"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    :try_start_0
    const-string p1, "direction"

    .line 4
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 5
    :pswitch_0
    iget-object p1, p0, Lmodule/canbus/a$l;->a:Lmodule/canbus/a;

    const/16 p2, 0xf

    invoke-static {p1, p2}, Lmodule/canbus/a;->l3(Lmodule/canbus/a;I)V

    goto/16 :goto_0

    .line 6
    :pswitch_1
    iget-object p1, p0, Lmodule/canbus/a$l;->a:Lmodule/canbus/a;

    const/16 p2, 0xd

    invoke-static {p1, p2}, Lmodule/canbus/a;->l3(Lmodule/canbus/a;I)V

    goto/16 :goto_0

    .line 7
    :pswitch_2
    iget-object p1, p0, Lmodule/canbus/a$l;->a:Lmodule/canbus/a;

    const/16 p2, 0x9

    invoke-static {p1, p2}, Lmodule/canbus/a;->l3(Lmodule/canbus/a;I)V

    goto/16 :goto_0

    .line 8
    :pswitch_3
    iget-object p1, p0, Lmodule/canbus/a$l;->a:Lmodule/canbus/a;

    const/16 p2, 0xb

    invoke-static {p1, p2}, Lmodule/canbus/a;->l3(Lmodule/canbus/a;I)V

    goto :goto_0

    .line 9
    :pswitch_4
    iget-object p1, p0, Lmodule/canbus/a$l;->a:Lmodule/canbus/a;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lmodule/canbus/a;->l3(Lmodule/canbus/a;I)V

    goto :goto_0

    .line 10
    :pswitch_5
    iget-object p1, p0, Lmodule/canbus/a$l;->a:Lmodule/canbus/a;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lmodule/canbus/a;->l3(Lmodule/canbus/a;I)V

    goto :goto_0

    .line 11
    :pswitch_6
    iget-object p1, p0, Lmodule/canbus/a$l;->a:Lmodule/canbus/a;

    const/4 p2, 0x7

    invoke-static {p1, p2}, Lmodule/canbus/a;->l3(Lmodule/canbus/a;I)V

    goto :goto_0

    .line 12
    :pswitch_7
    iget-object p1, p0, Lmodule/canbus/a$l;->a:Lmodule/canbus/a;

    const/4 p2, 0x5

    invoke-static {p1, p2}, Lmodule/canbus/a;->l3(Lmodule/canbus/a;I)V

    goto :goto_0

    .line 13
    :pswitch_8
    iget-object p1, p0, Lmodule/canbus/a$l;->a:Lmodule/canbus/a;

    const/16 p2, 0xe

    invoke-static {p1, p2}, Lmodule/canbus/a;->l3(Lmodule/canbus/a;I)V

    goto :goto_0

    .line 14
    :pswitch_9
    iget-object p1, p0, Lmodule/canbus/a$l;->a:Lmodule/canbus/a;

    const/16 p2, 0xa

    invoke-static {p1, p2}, Lmodule/canbus/a;->l3(Lmodule/canbus/a;I)V

    goto :goto_0

    .line 15
    :pswitch_a
    iget-object p1, p0, Lmodule/canbus/a$l;->a:Lmodule/canbus/a;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lmodule/canbus/a;->l3(Lmodule/canbus/a;I)V

    goto :goto_0

    .line 16
    :pswitch_b
    iget-object p1, p0, Lmodule/canbus/a$l;->a:Lmodule/canbus/a;

    const/4 p2, 0x6

    invoke-static {p1, p2}, Lmodule/canbus/a;->l3(Lmodule/canbus/a;I)V

    goto :goto_0

    .line 17
    :pswitch_c
    iget-object p1, p0, Lmodule/canbus/a$l;->a:Lmodule/canbus/a;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lmodule/canbus/a;->l3(Lmodule/canbus/a;I)V

    goto :goto_0

    .line 18
    :pswitch_d
    iget-object p1, p0, Lmodule/canbus/a$l;->a:Lmodule/canbus/a;

    const/16 p2, 0xc

    invoke-static {p1, p2}, Lmodule/canbus/a;->l3(Lmodule/canbus/a;I)V

    goto :goto_0

    .line 19
    :pswitch_e
    iget-object p1, p0, Lmodule/canbus/a$l;->a:Lmodule/canbus/a;

    const/16 p2, 0x8

    invoke-static {p1, p2}, Lmodule/canbus/a;->l3(Lmodule/canbus/a;I)V

    goto :goto_0

    .line 20
    :pswitch_f
    iget-object p1, p0, Lmodule/canbus/a$l;->a:Lmodule/canbus/a;

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lmodule/canbus/a;->l3(Lmodule/canbus/a;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p2, "com.mxnavi.mxnavi.TO_CTRL_TURNING_INFO"

    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
