.class public Lk0/ma$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ma;


# direct methods
.method public constructor <init>(Lk0/ma;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ma$e;->a:Lk0/ma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lk0/ma$e;->a:Lk0/ma;

    iget v0, v0, Lk0/ma;->q:I

    sget v1, Lh0/c;->E:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x5

    const/4 v7, 0x4

    if-eq v0, v1, :cond_4

    .line 2
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v1, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "phoneState  ===   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lk0/ma$e;->a:Lk0/ma;

    iget v9, v9, Lk0/ma;->q:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "------ DataBt.sPhoneState =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Lh0/c;->E:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lk0/ma$e;->a:Lk0/ma;

    iget v1, v0, Lk0/ma;->q:I

    if-eq v1, v6, :cond_0

    if-eq v1, v7, :cond_0

    if-ne v1, v4, :cond_1

    :cond_0
    sget v8, Lh0/c;->E:I

    if-ne v8, v5, :cond_1

    goto :goto_2

    :cond_1
    if-ne v1, v4, :cond_2

    .line 4
    sget v8, Lh0/c;->E:I

    if-ne v8, v6, :cond_2

    move v3, v7

    goto :goto_2

    :cond_2
    if-ne v1, v7, :cond_3

    .line 5
    sget v1, Lh0/c;->E:I

    if-ne v1, v6, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    sget v1, Lh0/c;->E:I

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :goto_0
    :pswitch_0
    move v3, v5

    goto :goto_2

    :pswitch_1
    move v3, v2

    goto :goto_2

    :pswitch_2
    move v3, v4

    goto :goto_2

    :pswitch_3
    const/16 v1, 0x81

    goto :goto_1

    :pswitch_4
    const/16 v1, 0x80

    :goto_1
    move v3, v1

    .line 7
    :goto_2
    sget v1, Lh0/c;->E:I

    iput v1, v0, Lk0/ma;->q:I

    move v0, v3

    move v3, v2

    goto :goto_3

    :cond_4
    move v0, v3

    .line 8
    :goto_3
    iget-object v1, p0, Lk0/ma$e;->a:Lk0/ma;

    invoke-static {v1}, Lk0/ma;->d3(Lk0/ma;)Ljava/lang/String;

    move-result-object v1

    sget-object v8, Lh0/c;->h:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 9
    iget-object v1, p0, Lk0/ma$e;->a:Lk0/ma;

    sget-object v8, Lh0/c;->h:Ljava/lang/String;

    invoke-static {v1, v8}, Lk0/ma;->e3(Lk0/ma;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lk0/ma$e;->a:Lk0/ma;

    invoke-static {v1}, Lk0/ma;->d3(Lk0/ma;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    .line 11
    iget-object v1, p0, Lk0/ma$e;->a:Lk0/ma;

    const-string v2, ""

    invoke-static {v1, v2}, Lk0/ma;->e3(Lk0/ma;Ljava/lang/String;)Ljava/lang/String;

    :cond_5
    move v2, v3

    .line 12
    :cond_6
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    sget-object v3, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendCmd  ===   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "------ mphoneState =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v3, v8}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    if-eqz v2, :cond_9

    .line 13
    sget v1, Lk0/nt;->c:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_8

    .line 14
    sget v0, Lh0/c;->E:I

    if-eq v0, v5, :cond_7

    if-eq v0, v4, :cond_7

    if-eq v0, v7, :cond_7

    if-eq v0, v6, :cond_7

    new-array v0, v7, [I

    .line 15
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_4

    :cond_7
    new-array v0, v7, [I

    .line 16
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_4

    .line 17
    :cond_8
    iget-object v1, p0, Lk0/ma$e;->a:Lk0/ma;

    invoke-static {v1}, Lk0/ma;->d3(Lk0/ma;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lk0/ma;->f3(Lk0/ma;ILjava/lang/String;)V

    :cond_9
    :goto_4
    return-void

    nop

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

    :array_0
    .array-data 4
        0xe3
        0x84
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x84
        0x1
        0x80
    .end array-data
.end method
