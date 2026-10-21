.class public Lk0/x3$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/x3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/x3;


# direct methods
.method public constructor <init>(Lk0/x3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/x3$h;->a:Lk0/x3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget v0, Lu0/b;->E0:I

    const/16 v1, 0xf3

    if-eq v0, v1, :cond_1

    const/16 v1, 0xf8

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    iget-object v0, p0, Lk0/x3$h;->a:Lk0/x3;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lk0/x3;->e3(Lk0/x3;I)V

    goto :goto_0

    .line 3
    :pswitch_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.syu.canbus"

    const-string v3, "com.syu.carinfo.air.Air_Activity_All_Toyota_prado_HP"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "onstar"

    const-string v2, "on"

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x200001

    and-int/2addr v1, v2

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 8
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :pswitch_2
    iget-object v0, p0, Lk0/x3$h;->a:Lk0/x3;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lk0/x3;->e3(Lk0/x3;I)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lk0/x3$h;->a:Lk0/x3;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lk0/x3;->e3(Lk0/x3;I)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lk0/x3$h;->a:Lk0/x3;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lk0/x3;->e3(Lk0/x3;I)V

    :catch_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xfa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
