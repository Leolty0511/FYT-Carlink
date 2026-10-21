.class public Lk0/aa$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/aa;


# direct methods
.method public constructor <init>(Lk0/aa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/aa$j;->a:Lk0/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    sget v0, Lh0/c;->E:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x5

    if-eq v0, v5, :cond_1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v5, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v3

    :goto_1
    packed-switch v0, :pswitch_data_0

    :cond_2
    move v1, v4

    goto :goto_2

    :pswitch_0
    move v1, v2

    goto :goto_2

    :pswitch_1
    move v1, v3

    goto :goto_2

    :pswitch_2
    const/4 v1, 0x2

    goto :goto_2

    .line 2
    :pswitch_3
    iget-object v0, p0, Lk0/aa$j;->a:Lk0/aa;

    invoke-static {v0}, Lk0/aa;->b3(Lk0/aa;)Z

    move-result v0

    if-eq v5, v0, :cond_2

    .line 3
    :goto_2
    iget-object v0, p0, Lk0/aa$j;->a:Lk0/aa;

    invoke-static {v0}, Lk0/aa;->d3(Lk0/aa;)I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 4
    iget-object v0, p0, Lk0/aa$j;->a:Lk0/aa;

    invoke-static {v0, v1}, Lk0/aa;->e3(Lk0/aa;I)I

    move v0, v3

    goto :goto_3

    :cond_3
    move v0, v4

    .line 5
    :goto_3
    iget-object v1, p0, Lk0/aa$j;->a:Lk0/aa;

    invoke-static {v1}, Lk0/aa;->f3(Lk0/aa;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lh0/c;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 6
    iget-object v1, p0, Lk0/aa$j;->a:Lk0/aa;

    sget-object v2, Lh0/c;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lk0/aa;->g3(Lk0/aa;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lk0/aa$j;->a:Lk0/aa;

    invoke-static {v1}, Lk0/aa;->f3(Lk0/aa;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    .line 8
    iget-object v1, p0, Lk0/aa$j;->a:Lk0/aa;

    const-string v2, ""

    invoke-static {v1, v2}, Lk0/aa;->g3(Lk0/aa;Ljava/lang/String;)Ljava/lang/String;

    :cond_4
    move v3, v0

    :cond_5
    if-eqz v3, :cond_7

    .line 9
    iget-object v0, p0, Lk0/aa$j;->a:Lk0/aa;

    invoke-static {v0}, Lk0/aa;->d3(Lk0/aa;)I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lk0/aa$j;->a:Lk0/aa;

    invoke-static {v0}, Lk0/aa;->d3(Lk0/aa;)I

    move-result v1

    iget-object v2, p0, Lk0/aa$j;->a:Lk0/aa;

    invoke-static {v2}, Lk0/aa;->f3(Lk0/aa;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lk0/aa;->h3(Lk0/aa;ILjava/lang/String;)V

    .line 10
    :cond_6
    iget-object v0, p0, Lk0/aa$j;->a:Lk0/aa;

    invoke-static {v0}, Lk0/aa;->b3(Lk0/aa;)Z

    move-result v0

    if-eq v0, v5, :cond_7

    .line 11
    iget-object v0, p0, Lk0/aa$j;->a:Lk0/aa;

    invoke-static {v0, v5}, Lk0/aa;->c3(Lk0/aa;Z)Z

    .line 12
    iget-object v0, p0, Lk0/aa$j;->a:Lk0/aa;

    invoke-static {v0, v4}, Lk0/aa;->e3(Lk0/aa;I)I

    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
