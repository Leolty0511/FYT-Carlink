.class public Lk0/k0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/k0;


# direct methods
.method public constructor <init>(Lk0/k0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/k0$a;->a:Lk0/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    sget v0, Lh0/c;->E:I

    const/4 v1, 0x3

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v6, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v5

    :goto_1
    const/4 v7, 0x2

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    move v0, v3

    goto :goto_2

    :pswitch_1
    move v0, v5

    goto :goto_4

    :pswitch_2
    move v8, v5

    move v0, v7

    goto :goto_5

    :pswitch_3
    move v0, v4

    :goto_2
    move v8, v5

    goto :goto_5

    :goto_3
    move v0, v4

    :goto_4
    move v8, v0

    .line 2
    :goto_5
    iget-object v9, p0, Lk0/k0$a;->a:Lk0/k0;

    invoke-static {v9}, Lk0/k0;->b3(Lk0/k0;)I

    move-result v9

    if-eq v9, v0, :cond_2

    .line 3
    iget-object v9, p0, Lk0/k0$a;->a:Lk0/k0;

    invoke-static {v9, v0}, Lk0/k0;->c3(Lk0/k0;I)I

    new-array v2, v2, [I

    const/16 v9, 0xe3

    aput v9, v2, v4

    const/16 v9, 0xc5

    aput v9, v2, v5

    aput v7, v2, v7

    aput v4, v2, v1

    shl-int/lit8 v1, v8, 0x4

    or-int/2addr v0, v1

    aput v0, v2, v3

    .line 4
    invoke-static {v2}, Lz/k;->s([I)V

    move v0, v5

    goto :goto_6

    :cond_2
    move v0, v4

    .line 5
    :goto_6
    iget-object v1, p0, Lk0/k0$a;->a:Lk0/k0;

    invoke-static {v1}, Lk0/k0;->d3(Lk0/k0;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lh0/c;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 6
    iget-object v1, p0, Lk0/k0$a;->a:Lk0/k0;

    sget-object v2, Lh0/c;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lk0/k0;->e3(Lk0/k0;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lk0/k0$a;->a:Lk0/k0;

    invoke-static {v1}, Lk0/k0;->d3(Lk0/k0;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 8
    iget-object v1, p0, Lk0/k0$a;->a:Lk0/k0;

    const-string v2, ""

    invoke-static {v1, v2}, Lk0/k0;->e3(Lk0/k0;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    move v5, v0

    :cond_4
    if-eqz v5, :cond_5

    .line 9
    iget-object v0, p0, Lk0/k0$a;->a:Lk0/k0;

    invoke-static {v0}, Lk0/k0;->f3(Lk0/k0;)Z

    move-result v0

    if-eq v0, v6, :cond_5

    .line 10
    iget-object v0, p0, Lk0/k0$a;->a:Lk0/k0;

    invoke-static {v0, v6}, Lk0/k0;->g3(Lk0/k0;Z)Z

    .line 11
    iget-object v0, p0, Lk0/k0$a;->a:Lk0/k0;

    invoke-static {v0, v4}, Lk0/k0;->c3(Lk0/k0;I)I

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
