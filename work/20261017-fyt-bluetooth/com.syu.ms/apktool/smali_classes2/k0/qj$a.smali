.class public Lk0/qj$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/qj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/qj;


# direct methods
.method public constructor <init>(Lk0/qj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/qj$a;->a:Lk0/qj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v1, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sVaAudioOccupeid =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lu0/b;->j4:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lk0/qj$a;->a:Lk0/qj;

    iget v1, v0, Lk0/qj;->I:I

    sget v2, Lu0/b;->j4:I

    if-eq v1, v2, :cond_3

    .line 3
    iput v2, v0, Lk0/qj;->I:I

    .line 4
    sget v1, Lu0/b;->D:I

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    const/16 v2, 0xd

    if-ne v1, v2, :cond_3

    .line 5
    :cond_0
    sget v1, Lu0/b;->j4:I

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    sget-object v1, Lk0/nt;->g:[I

    const/16 v3, 0x6f

    aget v1, v1, v3

    iput v1, v0, Lk0/qj;->J:I

    new-array v0, v2, [I

    .line 7
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array v1, v2, [I

    const/4 v2, 0x0

    const/16 v4, 0xe3

    aput v4, v1, v2

    const/4 v2, 0x2

    aput v2, v1, v3

    const/16 v4, 0xad

    aput v4, v1, v2

    const/4 v2, 0x3

    aput v3, v1, v2

    const/4 v2, 0x4

    .line 8
    iget v0, v0, Lk0/qj;->J:I

    aput v0, v1, v2

    invoke-static {v1}, Lz/k;->s([I)V

    :cond_3
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x2
        0xad
        0x1
        0x0
    .end array-data
.end method
