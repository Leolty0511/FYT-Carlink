.class public Lk0/hd$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/hd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/hd;


# direct methods
.method public constructor <init>(Lk0/hd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/hd$h;->a:Lk0/hd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    sget v0, Lh0/c;->E:I

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_1

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v6, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v5

    :goto_1
    if-eqz v6, :cond_2

    const/4 v7, 0x7

    goto :goto_2

    :cond_2
    const/16 v7, 0xb

    :goto_2
    const/4 v8, 0x6

    const/4 v9, 0x2

    packed-switch v0, :pswitch_data_0

    move v0, v4

    goto :goto_3

    :pswitch_0
    move v0, v9

    goto :goto_3

    :pswitch_1
    move v0, v5

    goto :goto_3

    :pswitch_2
    move v0, v3

    goto :goto_3

    .line 2
    :pswitch_3
    iget-object v0, p0, Lk0/hd$h;->a:Lk0/hd;

    invoke-static {v0}, Lk0/hd;->m3(Lk0/hd;)Z

    move-result v0

    if-eq v6, v0, :cond_3

    move v0, v8

    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_3

    :pswitch_4
    move v0, v1

    .line 3
    :goto_3
    iget-object v10, p0, Lk0/hd$h;->a:Lk0/hd;

    invoke-static {v10}, Lk0/hd;->m3(Lk0/hd;)Z

    move-result v10

    if-eq v10, v6, :cond_4

    .line 4
    iget-object v0, p0, Lk0/hd$h;->a:Lk0/hd;

    invoke-static {v0, v6}, Lk0/hd;->n3(Lk0/hd;Z)Z

    move v0, v4

    .line 5
    :cond_4
    sget v6, Lk0/nt;->a:I

    const v10, 0x40189

    const/16 v11, 0xe3

    if-ne v6, v10, :cond_5

    new-array v1, v1, [I

    aput v11, v1, v4

    aput v8, v1, v5

    const/16 v4, 0x9

    aput v4, v1, v9

    int-to-byte v4, v7

    aput v4, v1, v3

    int-to-byte v0, v0

    aput v0, v1, v2

    .line 6
    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_4

    :cond_5
    new-array v1, v2, [I

    aput v11, v1, v4

    const/16 v2, -0x3b

    aput v2, v1, v5

    aput v5, v1, v9

    aput v0, v1, v3

    .line 7
    invoke-static {v1}, Lz/k;->s([I)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
