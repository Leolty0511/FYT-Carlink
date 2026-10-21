.class public Ln0/u;
.super Ln0/c4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln0/u$c;
    }
.end annotation


# instance fields
.field public A:Ln0/u$c;

.field public B:Ljava/lang/Runnable;

.field public final C:Ljava/lang/String;

.field public z:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln0/c4;-><init>()V

    .line 2
    new-instance v0, Ln0/u$a;

    invoke-direct {v0, p0}, Ln0/u$a;-><init>(Ln0/u;)V

    iput-object v0, p0, Ln0/u;->z:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Ln0/u$b;

    invoke-direct {v0, p0}, Ln0/u$b;-><init>(Ln0/u;)V

    iput-object v0, p0, Ln0/u;->B:Ljava/lang/Runnable;

    const-string v0, "com.mxnavi.mxnavi.SEND_SOURCE_DATA_TO_MXNAVI"

    .line 4
    iput-object v0, p0, Ln0/u;->C:Ljava/lang/String;

    return-void
.end method

.method public static synthetic S3(Ln0/u;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ln0/u;->U3()V

    return-void
.end method


# virtual methods
.method public C3()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln0/c4;->C3()V

    .line 2
    sget-object v0, Ly0/g;->a:Lo1/y;

    iget-object v1, p0, Ln0/u;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Ln0/u;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Ln0/u;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Ln0/u;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v1, p0, Ln0/u;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v1, p0, Ln0/u;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->w:Lo1/y;

    iget-object v1, p0, Ln0/u;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lu0/c;->u:Lo1/y;

    iget-object v1, p0, Ln0/u;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Ln0/u;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Lw0/e;->d:Lo1/y;

    iget-object v1, p0, Ln0/u;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 12
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Ln0/u;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public P2()V
    .locals 3

    .line 1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    .line 2
    sget-object v0, Lu0/b;->t4:[I

    aput v2, v0, v1

    .line 3
    invoke-static {}, Ly0/d;->r()V

    .line 4
    invoke-static {}, Ly0/d;->x()V

    const-string v0, "/dev/ttyS0"

    .line 5
    invoke-static {v0}, Lz/k;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lz/a;->w:Lo1/i0;

    const-string v2, "/dev/snd/sound_spectrogram"

    invoke-virtual {v0, v2}, Lo1/i0;->a(Ljava/lang/String;)I

    .line 7
    invoke-static {}, Lz/k;->c()V

    const/4 v0, 0x0

    .line 8
    sput v0, Lo0/e;->g:I

    .line 9
    sget-object v0, Ly0/b;->b:[I

    const/16 v2, 0xf

    aput v1, v0, v2

    .line 10
    sget-object v0, Ly0/f;->z0:[I

    const/4 v1, 0x1

    aput v1, v0, v2

    :goto_0
    return-void
.end method

.method public final T3()V
    .locals 3

    .line 1
    new-instance v0, Ln0/u$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ln0/u$c;-><init>(Ln0/u;Ln0/u$a;)V

    iput-object v0, p0, Ln0/u;->A:Ln0/u$c;

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.mxnavi.mxnavi.MXNAVI_SWTICH_TO_CTL"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.mxnavi.mxnavi.MXNAVI_CHANGE_SRC_TYPE"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.mxnavi.mxnavi.MXNAVI_CHANGE_RADIO_FREQ"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.mxnavi.mxnavi.MXNAVI_PLAY_INFO"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.mxnavi.mxnavi.CMD_NAVI_STARTED"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    iget-object v2, p0, Ln0/u;->A:Ln0/u$c;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final U3()V
    .locals 13

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mxnavi.mxnavi.SEND_SOURCE_DATA_TO_MXNAVI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    sget v1, Lu0/b;->D:I

    .line 3
    sget v2, Lw0/d;->i:I

    .line 4
    sget v3, Lw0/d;->h:I

    const/4 v4, 0x3

    const/4 v5, 0x0

    const-string v6, "SrcName"

    const-string v7, "SrcFlag"

    const/4 v8, 0x1

    const/16 v9, 0x8

    if-eq v1, v8, :cond_5

    if-eq v1, v4, :cond_4

    if-eq v1, v9, :cond_0

    const/16 v1, 0xf

    .line 5
    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_4

    :cond_0
    const/4 v1, 0x2

    .line 7
    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "MP3"

    .line 8
    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    sget-object v2, Lu0/b;->i3:Ljava/lang/String;

    const-string v3, "MediaName"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    sget-object v2, Lu0/b;->j3:Ljava/lang/String;

    const-string v3, "MediaAuthorName"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    sget v2, Lu0/b;->r3:I

    const-string v3, "TrackCount"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 12
    sget v2, Lu0/b;->s3:I

    const-string v3, "TrackIndex"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    sget v2, Lu0/b;->n3:I

    const-string v3, "PlayMode"

    if-eqz v2, :cond_3

    if-eq v2, v8, :cond_2

    if-eq v2, v1, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17
    :goto_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_4

    :cond_4
    const/4 v1, 0x4

    .line 18
    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "BT MUSIC"

    .line 19
    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 21
    :cond_5
    invoke-virtual {v0, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "RADIO"

    .line 22
    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-array v4, v9, [J

    .line 24
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, ", "

    const-string v8, "RadioList"

    const-string v10, "RadioFreq"

    const/high16 v11, 0x10000

    if-ltz v3, :cond_8

    if-ge v3, v11, :cond_8

    .line 25
    sget-object v3, Lw0/d;->d:[I

    if-eqz v3, :cond_7

    array-length v3, v3

    if-lt v3, v9, :cond_7

    :goto_1
    if-ge v5, v9, :cond_6

    .line 26
    sget-object v3, Lw0/d;->d:[I

    aget v11, v3, v5

    int-to-long v11, v11

    aput-wide v11, v4, v5

    .line 27
    aget v3, v3, v5

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 28
    :cond_6
    invoke-virtual {v1, v8, v4}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    :cond_7
    int-to-long v2, v2

    .line 29
    invoke-virtual {v0, v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_3

    :cond_8
    if-lt v3, v11, :cond_b

    const/high16 v11, 0x20000

    if-gt v3, v11, :cond_b

    .line 30
    sget-object v3, Lw0/d;->e:[I

    if-eqz v3, :cond_a

    array-length v3, v3

    if-lt v3, v9, :cond_a

    :goto_2
    if-ge v5, v9, :cond_9

    .line 31
    sget-object v3, Lw0/d;->e:[I

    aget v11, v3, v5

    mul-int/lit8 v11, v11, 0xa

    int-to-long v11, v11

    aput-wide v11, v4, v5

    .line 32
    aget v3, v3, v5

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 33
    :cond_9
    invoke-virtual {v1, v8, v4}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    :cond_a
    mul-int/lit8 v2, v2, 0xa

    int-to-long v2, v2

    .line 34
    invoke-virtual {v0, v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 35
    :cond_b
    :goto_3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 36
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    :goto_4
    return-void
.end method

.method public b3()V
    .locals 4

    .line 1
    invoke-static {}, Lg/f;->l()V

    .line 2
    invoke-static {}, Lg/e;->g()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 3
    sget-object v0, Ly0/b;->b:[I

    const/16 v3, 0xf

    aput v1, v0, v3

    .line 4
    sget-object v0, Ly0/f;->z0:[I

    aput v2, v0, v3

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lg/e;->g()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 6
    sget-object v0, Lu0/b;->t4:[I

    const/4 v2, 0x6

    aput v2, v0, v1

    :cond_1
    :goto_0
    return-void
.end method

.method public j3()V
    .locals 3

    const-string v0, "JYT"

    .line 1
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lu0/b;->V3:Z

    const/16 v0, 0x21

    .line 3
    sput v0, Lm1/a;->d:I

    const/4 v0, 0x3

    .line 4
    sput v0, Lp0/b;->g:I

    .line 5
    invoke-super {p0}, Ln0/c4;->j3()V

    .line 6
    sget-object v0, Ly0/g;->a:Lo1/y;

    iget-object v1, p0, Ln0/u;->z:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    invoke-virtual {p0}, Ln0/u;->T3()V

    .line 8
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Ln0/u;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Ln0/u;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Ln0/u;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v1, p0, Ln0/u;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v1, p0, Ln0/u;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lu0/c;->w:Lo1/y;

    iget-object v1, p0, Ln0/u;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Lu0/c;->u:Lo1/y;

    iget-object v1, p0, Ln0/u;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Ln0/u;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget-object v0, Lw0/e;->d:Lo1/y;

    iget-object v1, p0, Ln0/u;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 17
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Ln0/u;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 18
    sget-object v0, Le/c;->D:Lo1/v;

    invoke-virtual {v0}, Lo1/v;->b()V

    .line 19
    invoke-static {}, Le/a;->f()Lo1/o;

    move-result-object v1

    const/16 v2, -0x1f4

    invoke-virtual {v0, v1, v2}, Lo1/v;->a(Lo1/o;I)V

    return-void
.end method
