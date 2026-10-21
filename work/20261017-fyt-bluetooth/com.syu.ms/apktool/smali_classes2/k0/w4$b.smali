.class public Lk0/w4$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/w4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/w4;


# direct methods
.method public constructor <init>(Lk0/w4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/w4$b;->a:Lk0/w4;

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
    iget-object v0, p0, Lk0/w4$b;->a:Lk0/w4;

    invoke-static {v0}, Lk0/w4;->u3(Lk0/w4;)I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 3
    iget-object v0, p0, Lk0/w4$b;->a:Lk0/w4;

    invoke-static {v0, v1}, Lk0/w4;->v3(Lk0/w4;I)I

    move v0, v2

    goto :goto_3

    :cond_2
    move v0, v3

    .line 4
    :goto_3
    iget-object v1, p0, Lk0/w4$b;->a:Lk0/w4;

    invoke-static {v1}, Lk0/w4;->w3(Lk0/w4;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lh0/c;->h:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v5, ""

    if-nez v1, :cond_4

    .line 5
    iget-object v1, p0, Lk0/w4$b;->a:Lk0/w4;

    sget-object v6, Lh0/c;->h:Ljava/lang/String;

    invoke-static {v1, v6}, Lk0/w4;->x3(Lk0/w4;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lk0/w4$b;->a:Lk0/w4;

    invoke-static {v1}, Lk0/w4;->w3(Lk0/w4;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 7
    iget-object v1, p0, Lk0/w4$b;->a:Lk0/w4;

    invoke-static {v1, v5}, Lk0/w4;->x3(Lk0/w4;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    :cond_3
    move v0, v2

    .line 8
    :cond_4
    :goto_4
    iget-object v1, p0, Lk0/w4$b;->a:Lk0/w4;

    invoke-static {v1}, Lk0/w4;->y3(Lk0/w4;)Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lh0/c;->j:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 9
    iget-object v1, p0, Lk0/w4$b;->a:Lk0/w4;

    sget-object v6, Lh0/c;->j:Ljava/lang/String;

    invoke-static {v1, v6}, Lk0/w4;->z3(Lk0/w4;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lk0/w4$b;->a:Lk0/w4;

    invoke-static {v1}, Lk0/w4;->y3(Lk0/w4;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    .line 11
    iget-object v1, p0, Lk0/w4$b;->a:Lk0/w4;

    invoke-static {v1, v5}, Lk0/w4;->z3(Lk0/w4;Ljava/lang/String;)Ljava/lang/String;

    :cond_5
    move v2, v0

    :cond_6
    if-eqz v2, :cond_8

    .line 12
    iget-object v0, p0, Lk0/w4$b;->a:Lk0/w4;

    invoke-static {v0}, Lk0/w4;->u3(Lk0/w4;)I

    move-result v0

    if-eqz v0, :cond_7

    .line 13
    iget-object v0, p0, Lk0/w4$b;->a:Lk0/w4;

    invoke-static {v0}, Lk0/w4;->e3(Lk0/w4;)V

    .line 14
    :cond_7
    iget-object v0, p0, Lk0/w4$b;->a:Lk0/w4;

    invoke-static {v0}, Lk0/w4;->f3(Lk0/w4;)Z

    move-result v0

    if-eq v0, v4, :cond_8

    .line 15
    iget-object v0, p0, Lk0/w4$b;->a:Lk0/w4;

    invoke-static {v0, v4}, Lk0/w4;->g3(Lk0/w4;Z)Z

    .line 16
    iget-object v0, p0, Lk0/w4$b;->a:Lk0/w4;

    invoke-static {v0, v3}, Lk0/w4;->v3(Lk0/w4;I)I

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
