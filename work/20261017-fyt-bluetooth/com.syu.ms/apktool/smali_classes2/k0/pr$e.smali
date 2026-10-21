.class public Lk0/pr$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/pr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/pr;


# direct methods
.method public constructor <init>(Lk0/pr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/pr$e;->a:Lk0/pr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, La/i;->r(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lk0/pr$e;->a:Lk0/pr;

    const/4 v1, 0x7

    const-string v2, "NAVI"

    invoke-static {v0, v1, v2}, Lk0/pr;->n3(Lk0/pr;BLjava/lang/String;)V

    goto/16 :goto_0

    .line 4
    :cond_0
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lk0/pr$e;->a:Lk0/pr;

    const/4 v1, 0x6

    const-string v2, "AUX"

    invoke-static {v0, v1, v2}, Lk0/pr;->n3(Lk0/pr;BLjava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x2

    const/4 v2, 0x4

    if-ne v0, v1, :cond_2

    .line 6
    sget v0, Lh0/c;->E:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lk0/pr$e;->a:Lk0/pr;

    const-string v1, "\u901a\u8bdd\u4e2d"

    invoke-static {v0, v2, v1}, Lk0/pr;->n3(Lk0/pr;BLjava/lang/String;)V

    goto/16 :goto_0

    .line 8
    :pswitch_1
    iget-object v0, p0, Lk0/pr$e;->a:Lk0/pr;

    const-string v1, "\u6765\u7535..."

    invoke-static {v0, v2, v1}, Lk0/pr;->n3(Lk0/pr;BLjava/lang/String;)V

    goto :goto_0

    .line 9
    :pswitch_2
    iget-object v0, p0, Lk0/pr$e;->a:Lk0/pr;

    const-string v1, "\u62e8\u53f7\u4e2d"

    invoke-static {v0, v2, v1}, Lk0/pr;->n3(Lk0/pr;BLjava/lang/String;)V

    goto :goto_0

    .line 10
    :pswitch_3
    iget-object v0, p0, Lk0/pr$e;->a:Lk0/pr;

    const-string v1, "\u84dd\u7259\u5df2\u7ecf\u94fe\u63a5"

    invoke-static {v0, v2, v1}, Lk0/pr;->n3(Lk0/pr;BLjava/lang/String;)V

    goto :goto_0

    .line 11
    :pswitch_4
    iget-object v0, p0, Lk0/pr$e;->a:Lk0/pr;

    const-string v1, "\u84dd\u7259\u914d\u5bf9\u4e2d"

    invoke-static {v0, v2, v1}, Lk0/pr;->n3(Lk0/pr;BLjava/lang/String;)V

    goto :goto_0

    .line 12
    :pswitch_5
    iget-object v0, p0, Lk0/pr$e;->a:Lk0/pr;

    const-string v1, "\u84dd\u7259\u672a\u8fde\u63a5"

    invoke-static {v0, v2, v1}, Lk0/pr;->n3(Lk0/pr;BLjava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 13
    iget-object v0, p0, Lk0/pr$e;->a:Lk0/pr;

    const-string v1, "\u84dd\u7259\u97f3\u4e50"

    invoke-static {v0, v2, v1}, Lk0/pr;->n3(Lk0/pr;BLjava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v2, 0x8

    if-ne v0, v2, :cond_4

    .line 14
    iget-object v0, p0, Lk0/pr$e;->a:Lk0/pr;

    sget-object v2, Lu0/b;->i3:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lk0/pr;->n3(Lk0/pr;BLjava/lang/String;)V

    goto :goto_0

    :cond_4
    const/16 v1, 0x9

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5

    .line 15
    iget-object v0, p0, Lk0/pr$e;->a:Lk0/pr;

    const-string v1, "Video"

    invoke-static {v0, v2, v1}, Lk0/pr;->n3(Lk0/pr;BLjava/lang/String;)V

    goto :goto_0

    :cond_5
    const/16 v1, 0xa

    if-ne v0, v1, :cond_6

    .line 16
    iget-object v0, p0, Lk0/pr$e;->a:Lk0/pr;

    const-string v1, "Media"

    invoke-static {v0, v2, v1}, Lk0/pr;->n3(Lk0/pr;BLjava/lang/String;)V

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 17
    iget-object v0, p0, Lk0/pr$e;->a:Lk0/pr;

    invoke-static {v0}, Lk0/pr;->o3(Lk0/pr;)V

    goto :goto_0

    .line 18
    :cond_7
    sget v0, Lu0/b;->a0:I

    if-ne v0, v1, :cond_8

    .line 19
    iget-object v0, p0, Lk0/pr$e;->a:Lk0/pr;

    const-string v1, "None"

    invoke-static {v0, v2, v1}, Lk0/pr;->n3(Lk0/pr;BLjava/lang/String;)V

    :cond_8
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
