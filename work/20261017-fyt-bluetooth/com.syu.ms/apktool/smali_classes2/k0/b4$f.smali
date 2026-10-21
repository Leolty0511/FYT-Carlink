.class public Lk0/b4$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/b4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/b4;


# direct methods
.method public constructor <init>(Lk0/b4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/b4$f;->a:Lk0/b4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    sget v0, Lh0/c;->E:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x5

    if-eq v0, v4, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v4, 0x4

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    :goto_1
    const/16 v5, 0x80

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v1, v5

    goto :goto_2

    :pswitch_1
    const/4 v1, 0x2

    goto :goto_2

    :pswitch_2
    move v1, v3

    goto :goto_2

    :pswitch_3
    const/16 v1, 0x81

    .line 2
    :goto_2
    :pswitch_4
    iget-object v0, p0, Lk0/b4$f;->a:Lk0/b4;

    invoke-static {v0}, Lk0/b4;->q3(Lk0/b4;)I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 3
    iget-object v0, p0, Lk0/b4$f;->a:Lk0/b4;

    invoke-static {v0, v1}, Lk0/b4;->r3(Lk0/b4;I)I

    move v0, v3

    goto :goto_3

    :cond_2
    move v0, v2

    .line 4
    :goto_3
    iget-object v1, p0, Lk0/b4$f;->a:Lk0/b4;

    invoke-static {v1}, Lk0/b4;->s3(Lk0/b4;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lh0/c;->h:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 5
    iget-object v1, p0, Lk0/b4$f;->a:Lk0/b4;

    sget-object v5, Lh0/c;->h:Ljava/lang/String;

    invoke-static {v1, v5}, Lk0/b4;->t3(Lk0/b4;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lk0/b4$f;->a:Lk0/b4;

    invoke-static {v1}, Lk0/b4;->s3(Lk0/b4;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 7
    iget-object v1, p0, Lk0/b4$f;->a:Lk0/b4;

    const-string v3, ""

    invoke-static {v1, v3}, Lk0/b4;->t3(Lk0/b4;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    move v3, v0

    :cond_4
    if-eqz v3, :cond_6

    .line 8
    iget-object v0, p0, Lk0/b4$f;->a:Lk0/b4;

    invoke-static {v0}, Lk0/b4;->q3(Lk0/b4;)I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lk0/b4$f;->a:Lk0/b4;

    invoke-static {v0}, Lk0/b4;->q3(Lk0/b4;)I

    move-result v1

    iget-object v3, p0, Lk0/b4$f;->a:Lk0/b4;

    invoke-static {v3}, Lk0/b4;->s3(Lk0/b4;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lk0/b4;->e3(Lk0/b4;ILjava/lang/String;)V

    .line 9
    :cond_5
    iget-object v0, p0, Lk0/b4$f;->a:Lk0/b4;

    invoke-static {v0}, Lk0/b4;->f3(Lk0/b4;)Z

    move-result v0

    if-eq v0, v4, :cond_6

    .line 10
    iget-object v0, p0, Lk0/b4$f;->a:Lk0/b4;

    invoke-static {v0, v4}, Lk0/b4;->g3(Lk0/b4;Z)Z

    .line 11
    iget-object v0, p0, Lk0/b4$f;->a:Lk0/b4;

    invoke-static {v0, v2}, Lk0/b4;->r3(Lk0/b4;I)I

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
