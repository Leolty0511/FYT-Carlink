.class public Lk0/cp$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/cp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/cp;


# direct methods
.method public constructor <init>(Lk0/cp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/cp$e;->a:Lk0/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2
    sget v0, Lw0/d;->j:I

    .line 3
    rem-int/lit8 v2, v0, 0x6

    const/4 v3, 0x6

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    move v2, v3

    .line 4
    :cond_0
    sget v0, Lw0/d;->h:I

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v1

    .line 5
    :goto_0
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v5

    sget-object v6, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "APP_ID_RADIO  --> band  = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "--- channel = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "--- DataRadio.sFreq = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lw0/d;->i:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    const/4 v5, 0x7

    new-array v5, v5, [I

    const/16 v6, 0xe3

    aput v6, v5, v4

    const/16 v4, -0x7d

    aput v4, v5, v1

    const/4 v1, 0x2

    const/4 v4, 0x4

    aput v4, v5, v1

    const/4 v1, 0x3

    aput v0, v5, v1

    aput v2, v5, v4

    const/4 v0, 0x5

    .line 6
    sget v1, Lw0/d;->i:I

    shr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput v2, v5, v0

    and-int/lit16 v0, v1, 0xff

    int-to-byte v0, v0

    aput v0, v5, v3

    invoke-static {v5}, Lz/k;->s([I)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10000
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
