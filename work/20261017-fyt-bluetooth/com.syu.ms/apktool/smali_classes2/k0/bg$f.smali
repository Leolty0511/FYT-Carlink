.class public Lk0/bg$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/bg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/bg;


# direct methods
.method public constructor <init>(Lk0/bg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/bg$f;->a:Lk0/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

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
    iget-object v0, p0, Lk0/bg$f;->a:Lk0/bg;

    invoke-static {v0}, Lk0/bg;->E3(Lk0/bg;)I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 3
    iget-object v0, p0, Lk0/bg$f;->a:Lk0/bg;

    invoke-static {v0, v1}, Lk0/bg;->F3(Lk0/bg;I)I

    goto :goto_3

    :cond_2
    move v2, v3

    :goto_3
    if-eqz v2, :cond_4

    .line 4
    iget-object v0, p0, Lk0/bg$f;->a:Lk0/bg;

    invoke-static {v0}, Lk0/bg;->E3(Lk0/bg;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Lk0/bg$f;->a:Lk0/bg;

    invoke-static {v0}, Lk0/bg;->E3(Lk0/bg;)I

    move-result v1

    invoke-static {v0, v1}, Lk0/bg;->G3(Lk0/bg;I)V

    .line 6
    :cond_3
    iget-object v0, p0, Lk0/bg$f;->a:Lk0/bg;

    invoke-static {v0}, Lk0/bg;->H3(Lk0/bg;)Z

    move-result v0

    if-eq v0, v4, :cond_4

    .line 7
    iget-object v0, p0, Lk0/bg$f;->a:Lk0/bg;

    invoke-static {v0, v4}, Lk0/bg;->I3(Lk0/bg;Z)Z

    .line 8
    iget-object v0, p0, Lk0/bg$f;->a:Lk0/bg;

    invoke-static {v0, v3}, Lk0/bg;->F3(Lk0/bg;I)I

    :cond_4
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
