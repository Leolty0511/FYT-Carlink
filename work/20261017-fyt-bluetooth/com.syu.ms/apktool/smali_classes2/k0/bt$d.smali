.class public Lk0/bt$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/bt;


# direct methods
.method public constructor <init>(Lk0/bt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/bt$d;->a:Lk0/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->a0:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0xe

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 3
    iget-object v0, p0, Lk0/bt$d;->a:Lk0/bt;

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lk0/bt;->a3(Lk0/bt;I)V

    goto :goto_0

    .line 4
    :pswitch_0
    iget-object v0, p0, Lk0/bt$d;->a:Lk0/bt;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lk0/bt;->a3(Lk0/bt;I)V

    goto :goto_0

    .line 5
    :pswitch_1
    iget-object v0, p0, Lk0/bt$d;->a:Lk0/bt;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lk0/bt;->a3(Lk0/bt;I)V

    goto :goto_0

    .line 6
    :pswitch_2
    iget-object v0, p0, Lk0/bt$d;->a:Lk0/bt;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lk0/bt;->a3(Lk0/bt;I)V

    goto :goto_0

    .line 7
    :pswitch_3
    iget-object v0, p0, Lk0/bt$d;->a:Lk0/bt;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lk0/bt;->a3(Lk0/bt;I)V

    goto :goto_0

    .line 8
    :pswitch_4
    iget-object v0, p0, Lk0/bt$d;->a:Lk0/bt;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lk0/bt;->a3(Lk0/bt;I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lk0/bt$d;->a:Lk0/bt;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lk0/bt;->a3(Lk0/bt;I)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lk0/bt$d;->a:Lk0/bt;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lk0/bt;->a3(Lk0/bt;I)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object v0, p0, Lk0/bt$d;->a:Lk0/bt;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lk0/bt;->a3(Lk0/bt;I)V

    goto :goto_0

    .line 12
    :cond_4
    iget-object v0, p0, Lk0/bt$d;->a:Lk0/bt;

    invoke-static {v0, v1}, Lk0/bt;->a3(Lk0/bt;I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
