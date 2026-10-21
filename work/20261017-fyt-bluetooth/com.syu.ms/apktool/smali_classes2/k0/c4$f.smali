.class public Lk0/c4$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/c4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/c4;


# direct methods
.method public constructor <init>(Lk0/c4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/c4$f;->a:Lk0/c4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget v0, Lu0/b;->f2:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2
    :pswitch_1
    iget-object v0, p0, Lk0/c4$f;->a:Lk0/c4;

    invoke-static {v0, v1}, Lk0/c4;->j3(Lk0/c4;I)V

    goto :goto_0

    .line 3
    :pswitch_2
    iget-object v0, p0, Lk0/c4$f;->a:Lk0/c4;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lk0/c4;->j3(Lk0/c4;I)V

    goto :goto_0

    .line 4
    :pswitch_3
    sget-object v0, Lk0/nt;->g:[I

    const/16 v2, 0xc

    aget v3, v0, v2

    if-nez v3, :cond_0

    .line 5
    iget-object v0, p0, Lk0/c4$f;->a:Lk0/c4;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lk0/c4;->j3(Lk0/c4;I)V

    goto :goto_0

    .line 6
    :cond_0
    aget v0, v0, v2

    if-ne v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Lk0/c4$f;->a:Lk0/c4;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lk0/c4;->j3(Lk0/c4;I)V

    goto :goto_0

    .line 8
    :pswitch_4
    sget v0, Lk0/nt;->c:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 9
    iget-object v0, p0, Lk0/c4$f;->a:Lk0/c4;

    const/16 v1, 0x11

    invoke-static {v0, v1}, Lk0/c4;->j3(Lk0/c4;I)V

    goto :goto_0

    .line 10
    :pswitch_5
    iget-object v0, p0, Lk0/c4$f;->a:Lk0/c4;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lk0/c4;->j3(Lk0/c4;I)V

    goto :goto_0

    .line 11
    :pswitch_6
    iget-object v0, p0, Lk0/c4$f;->a:Lk0/c4;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lk0/c4;->j3(Lk0/c4;I)V

    goto :goto_0

    .line 12
    :pswitch_7
    iget-object v0, p0, Lk0/c4$f;->a:Lk0/c4;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lk0/c4;->j3(Lk0/c4;I)V

    goto :goto_0

    .line 13
    :pswitch_8
    iget-object v0, p0, Lk0/c4$f;->a:Lk0/c4;

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lk0/c4;->j3(Lk0/c4;I)V

    goto :goto_0

    .line 14
    :pswitch_9
    iget-object v0, p0, Lk0/c4$f;->a:Lk0/c4;

    const/16 v1, 0x15

    invoke-static {v0, v1}, Lk0/c4;->j3(Lk0/c4;I)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
