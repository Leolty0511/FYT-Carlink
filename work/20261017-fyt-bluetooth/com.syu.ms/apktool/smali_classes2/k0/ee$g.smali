.class public Lk0/ee$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ee;


# direct methods
.method public constructor <init>(Lk0/ee;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ee$g;->a:Lk0/ee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    sget v0, Lh0/c;->E:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x5

    const/4 v4, 0x0

    if-eq v0, v3, :cond_1

    const/4 v5, 0x3

    if-eq v0, v5, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v5, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v2

    :goto_1
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v1, v3

    goto :goto_2

    :pswitch_1
    move v1, v2

    goto :goto_2

    :pswitch_2
    const/4 v1, 0x2

    .line 2
    :goto_2
    :pswitch_3
    iget-object v0, p0, Lk0/ee$g;->a:Lk0/ee;

    invoke-static {v0}, Lk0/ee;->f3(Lk0/ee;)I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 3
    iget-object v0, p0, Lk0/ee$g;->a:Lk0/ee;

    invoke-static {v0, v1}, Lk0/ee;->g3(Lk0/ee;I)I

    goto :goto_3

    :cond_2
    move v2, v4

    :goto_3
    if-eqz v2, :cond_4

    .line 4
    iget-object v0, p0, Lk0/ee$g;->a:Lk0/ee;

    invoke-static {v0}, Lk0/ee;->f3(Lk0/ee;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Lk0/ee$g;->a:Lk0/ee;

    invoke-static {v0}, Lk0/ee;->f3(Lk0/ee;)I

    move-result v1

    invoke-static {v0, v1}, Lk0/ee;->h3(Lk0/ee;I)V

    .line 6
    :cond_3
    iget-object v0, p0, Lk0/ee$g;->a:Lk0/ee;

    invoke-static {v0}, Lk0/ee;->i3(Lk0/ee;)Z

    move-result v0

    if-eq v0, v5, :cond_4

    .line 7
    iget-object v0, p0, Lk0/ee$g;->a:Lk0/ee;

    invoke-static {v0, v5}, Lk0/ee;->j3(Lk0/ee;Z)Z

    .line 8
    iget-object v0, p0, Lk0/ee$g;->a:Lk0/ee;

    invoke-static {v0, v4}, Lk0/ee;->g3(Lk0/ee;I)I

    .line 9
    :cond_4
    iget-object v0, p0, Lk0/ee$g;->a:Lk0/ee;

    invoke-static {v0}, Lk0/ee;->k3(Lk0/ee;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lh0/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 10
    iget-object v0, p0, Lk0/ee$g;->a:Lk0/ee;

    sget-object v1, Lh0/c;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lk0/ee;->l3(Lk0/ee;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    iget-object v0, p0, Lk0/ee$g;->a:Lk0/ee;

    invoke-static {v0}, Lk0/ee;->k3(Lk0/ee;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lk0/ee;->m3(Lk0/ee;Ljava/lang/String;)V

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
