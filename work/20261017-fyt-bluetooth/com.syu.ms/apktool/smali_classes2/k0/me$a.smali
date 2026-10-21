.class public Lk0/me$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/me;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/me;


# direct methods
.method public constructor <init>(Lk0/me;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/me$a;->a:Lk0/me;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget v0, Lu0/b;->E0:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 2
    :pswitch_0
    sget-object v0, Lk0/nt;->g:[I

    const/16 v3, 0x10

    aget v0, v0, v3

    .line 3
    iget-object v3, p0, Lk0/me$a;->a:Lk0/me;

    const/4 v4, 0x6

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v3, v4, v1}, Lk0/me;->f3(Lk0/me;II)V

    goto :goto_3

    .line 4
    :pswitch_1
    iget-object v0, p0, Lk0/me$a;->a:Lk0/me;

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lk0/me;->f3(Lk0/me;II)V

    goto :goto_3

    .line 5
    :pswitch_2
    sget-object v0, Lk0/nt;->g:[I

    const/16 v3, 0xb

    aget v0, v0, v3

    .line 6
    iget-object v3, p0, Lk0/me$a;->a:Lk0/me;

    const/4 v4, 0x4

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v3, v4, v1}, Lk0/me;->f3(Lk0/me;II)V

    goto :goto_3

    .line 7
    :pswitch_3
    iget-object v0, p0, Lk0/me$a;->a:Lk0/me;

    const/4 v1, 0x3

    invoke-static {v0, v1, v2}, Lk0/me;->f3(Lk0/me;II)V

    goto :goto_3

    .line 8
    :pswitch_4
    sget-object v0, Lk0/nt;->g:[I

    const/16 v3, 0xc

    aget v0, v0, v3

    .line 9
    iget-object v3, p0, Lk0/me$a;->a:Lk0/me;

    const/4 v4, 0x5

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v3, v4, v1}, Lk0/me;->f3(Lk0/me;II)V

    goto :goto_3

    .line 10
    :pswitch_5
    iget-object v0, p0, Lk0/me$a;->a:Lk0/me;

    invoke-static {v0, v1, v2}, Lk0/me;->f3(Lk0/me;II)V

    goto :goto_3

    .line 11
    :pswitch_6
    iget-object v0, p0, Lk0/me$a;->a:Lk0/me;

    invoke-static {v0, v1, v1}, Lk0/me;->f3(Lk0/me;II)V

    goto :goto_3

    .line 12
    :pswitch_7
    iget-object v0, p0, Lk0/me$a;->a:Lk0/me;

    invoke-static {v0, v2, v2}, Lk0/me;->f3(Lk0/me;II)V

    goto :goto_3

    .line 13
    :pswitch_8
    iget-object v0, p0, Lk0/me$a;->a:Lk0/me;

    invoke-static {v0, v2, v1}, Lk0/me;->f3(Lk0/me;II)V

    goto :goto_3

    .line 14
    :pswitch_9
    sget-object v0, Lk0/nt;->g:[I

    const/16 v3, 0x41

    aget v0, v0, v3

    .line 15
    iget-object v3, p0, Lk0/me$a;->a:Lk0/me;

    const/4 v4, 0x7

    if-ne v0, v2, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-static {v3, v4, v1}, Lk0/me;->f3(Lk0/me;II)V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0xf3
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
