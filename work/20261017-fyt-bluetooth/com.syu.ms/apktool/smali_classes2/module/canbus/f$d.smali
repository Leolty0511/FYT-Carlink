.class public Lmodule/canbus/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/f;


# direct methods
.method public constructor <init>(Lmodule/canbus/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/f$d;->a:Lmodule/canbus/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    sget v0, Lh0/c;->E:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    :goto_1
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v2

    goto :goto_2

    :pswitch_1
    move v0, v1

    goto :goto_2

    :pswitch_2
    const/4 v0, 0x2

    .line 2
    :goto_2
    iget-object v4, p0, Lmodule/canbus/f$d;->a:Lmodule/canbus/f;

    invoke-static {v4}, Lmodule/canbus/f;->x3(Lmodule/canbus/f;)I

    move-result v4

    if-eq v4, v0, :cond_2

    .line 3
    iget-object v4, p0, Lmodule/canbus/f$d;->a:Lmodule/canbus/f;

    invoke-static {v4, v0}, Lmodule/canbus/f;->y3(Lmodule/canbus/f;I)I

    move v0, v1

    goto :goto_3

    :cond_2
    move v0, v2

    .line 4
    :goto_3
    iget-object v4, p0, Lmodule/canbus/f$d;->a:Lmodule/canbus/f;

    invoke-static {v4}, Lmodule/canbus/f;->z3(Lmodule/canbus/f;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lh0/c;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 5
    iget-object v4, p0, Lmodule/canbus/f$d;->a:Lmodule/canbus/f;

    sget-object v5, Lh0/c;->h:Ljava/lang/String;

    invoke-static {v4, v5}, Lmodule/canbus/f;->A3(Lmodule/canbus/f;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    iget-object v4, p0, Lmodule/canbus/f$d;->a:Lmodule/canbus/f;

    invoke-static {v4}, Lmodule/canbus/f;->z3(Lmodule/canbus/f;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    .line 7
    iget-object v1, p0, Lmodule/canbus/f$d;->a:Lmodule/canbus/f;

    const-string v4, ""

    invoke-static {v1, v4}, Lmodule/canbus/f;->A3(Lmodule/canbus/f;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    move v1, v0

    :cond_4
    if-eqz v1, :cond_5

    .line 8
    iget-object v0, p0, Lmodule/canbus/f$d;->a:Lmodule/canbus/f;

    invoke-static {v0}, Lmodule/canbus/f;->x3(Lmodule/canbus/f;)I

    move-result v1

    iget-object v4, p0, Lmodule/canbus/f$d;->a:Lmodule/canbus/f;

    invoke-static {v4}, Lmodule/canbus/f;->z3(Lmodule/canbus/f;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lmodule/canbus/f;->B3(Lmodule/canbus/f;ILjava/lang/String;)V

    .line 9
    iget-object v0, p0, Lmodule/canbus/f$d;->a:Lmodule/canbus/f;

    invoke-static {v0}, Lmodule/canbus/f;->C3(Lmodule/canbus/f;)Z

    move-result v0

    if-eq v0, v3, :cond_5

    .line 10
    iget-object v0, p0, Lmodule/canbus/f$d;->a:Lmodule/canbus/f;

    invoke-static {v0, v3}, Lmodule/canbus/f;->D3(Lmodule/canbus/f;Z)Z

    .line 11
    iget-object v0, p0, Lmodule/canbus/f$d;->a:Lmodule/canbus/f;

    invoke-static {v0, v2}, Lmodule/canbus/f;->y3(Lmodule/canbus/f;I)I

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
