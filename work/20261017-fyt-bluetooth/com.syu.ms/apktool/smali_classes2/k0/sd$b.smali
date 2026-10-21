.class public Lk0/sd$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/sd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/sd;


# direct methods
.method public constructor <init>(Lk0/sd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/sd$b;->a:Lk0/sd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    sget v0, Lh0/c;->E:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x5

    if-eq v0, v4, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v4, 0x4

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v2

    :goto_1
    packed-switch v0, :pswitch_data_0

    :goto_2
    move v1, v3

    goto :goto_3

    :pswitch_0
    const/4 v1, 0x2

    goto :goto_3

    :pswitch_1
    move v1, v2

    goto :goto_3

    .line 2
    :pswitch_2
    iget-object v0, p0, Lk0/sd$b;->a:Lk0/sd;

    invoke-static {v0}, Lk0/sd;->g3(Lk0/sd;)Z

    goto :goto_2

    .line 3
    :goto_3
    :pswitch_3
    iget-object v0, p0, Lk0/sd$b;->a:Lk0/sd;

    invoke-static {v0}, Lk0/sd;->i3(Lk0/sd;)I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Lk0/sd$b;->a:Lk0/sd;

    invoke-static {v0, v1}, Lk0/sd;->j3(Lk0/sd;I)I

    move v0, v2

    goto :goto_4

    :cond_2
    move v0, v3

    .line 5
    :goto_4
    iget-object v5, p0, Lk0/sd$b;->a:Lk0/sd;

    invoke-static {v5}, Lk0/sd;->k3(Lk0/sd;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lh0/c;->h:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 6
    iget-object v5, p0, Lk0/sd$b;->a:Lk0/sd;

    sget-object v6, Lh0/c;->h:Ljava/lang/String;

    invoke-static {v5, v6}, Lk0/sd;->l3(Lk0/sd;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    iget-object v5, p0, Lk0/sd$b;->a:Lk0/sd;

    invoke-static {v5}, Lk0/sd;->k3(Lk0/sd;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    .line 8
    iget-object v2, p0, Lk0/sd$b;->a:Lk0/sd;

    const-string v5, ""

    invoke-static {v2, v5}, Lk0/sd;->l3(Lk0/sd;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    move v2, v0

    :cond_4
    if-eqz v2, :cond_6

    .line 9
    iget-object v0, p0, Lk0/sd$b;->a:Lk0/sd;

    invoke-static {v0}, Lk0/sd;->i3(Lk0/sd;)I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lk0/sd$b;->a:Lk0/sd;

    invoke-static {v0}, Lk0/sd;->k3(Lk0/sd;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lk0/sd;->m3(Lk0/sd;ILjava/lang/String;)V

    .line 10
    :cond_5
    iget-object v0, p0, Lk0/sd$b;->a:Lk0/sd;

    invoke-static {v0}, Lk0/sd;->g3(Lk0/sd;)Z

    move-result v0

    if-eq v0, v4, :cond_6

    .line 11
    iget-object v0, p0, Lk0/sd$b;->a:Lk0/sd;

    invoke-static {v0, v4}, Lk0/sd;->h3(Lk0/sd;Z)Z

    .line 12
    iget-object v0, p0, Lk0/sd$b;->a:Lk0/sd;

    invoke-static {v0, v3}, Lk0/sd;->j3(Lk0/sd;I)I

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
