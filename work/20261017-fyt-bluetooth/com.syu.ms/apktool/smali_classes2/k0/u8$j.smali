.class public Lk0/u8$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/u8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/u8;


# direct methods
.method public constructor <init>(Lk0/u8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/u8$j;->a:Lk0/u8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

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
    const/4 v6, 0x2

    packed-switch v0, :pswitch_data_0

    :cond_2
    move v0, v4

    goto :goto_2

    :pswitch_0
    move v0, v2

    goto :goto_2

    :pswitch_1
    move v0, v3

    goto :goto_2

    :pswitch_2
    move v0, v6

    goto :goto_2

    .line 2
    :pswitch_3
    iget-object v0, p0, Lk0/u8$j;->a:Lk0/u8;

    invoke-static {v0}, Lk0/u8;->f3(Lk0/u8;)Z

    move-result v0

    if-eq v5, v0, :cond_2

    move v0, v1

    .line 3
    :goto_2
    iget-object v7, p0, Lk0/u8$j;->a:Lk0/u8;

    invoke-static {v7}, Lk0/u8;->f3(Lk0/u8;)Z

    move-result v7

    if-eq v7, v5, :cond_3

    .line 4
    iget-object v0, p0, Lk0/u8$j;->a:Lk0/u8;

    invoke-static {v0, v5}, Lk0/u8;->g3(Lk0/u8;Z)Z

    move v0, v4

    :cond_3
    new-array v1, v1, [I

    const/16 v5, 0xe3

    aput v5, v1, v4

    const/16 v4, -0x3b

    aput v4, v1, v3

    aput v3, v1, v6

    aput v0, v1, v2

    .line 5
    invoke-static {v1}, Lz/k;->s([I)V

    return-void

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
