.class public Li1/w$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li1/w;


# direct methods
.method public constructor <init>(Li1/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li1/w$c;->a:Li1/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    sget v0, Lu0/b;->I2:I

    .line 2
    iget-object v1, p0, Li1/w$c;->a:Li1/w;

    iget v1, v1, Li1/w;->c:I

    const/4 v2, 0x2

    .line 3
    div-int/2addr v1, v2

    if-gez v0, :cond_0

    move v0, v1

    :cond_0
    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v3, 0x42fe0000    # 127.0f

    mul-float/2addr v0, v3

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    const/high16 v1, 0x43000000    # 128.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    move v0, v1

    :cond_1
    const/4 v1, 0x0

    if-gez v0, :cond_2

    move v0, v1

    .line 4
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "============== DataMain.sSteerAngle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lu0/b;->I2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Device1"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v3, p0, Li1/w$c;->a:Li1/w;

    iget v4, v3, Li1/w;->j:I

    if-eq v4, v0, :cond_3

    .line 6
    iput v0, v3, Li1/w;->j:I

    .line 7
    sget-boolean v4, Li1/w;->G:Z

    if-eqz v4, :cond_3

    const/16 v4, 0xa

    new-array v4, v4, [I

    const/4 v5, 0x3

    aput v5, v4, v1

    const/4 v1, 0x1

    const/16 v6, 0x8

    aput v6, v4, v1

    iget v1, v3, Li1/w;->g:I

    aput v1, v4, v2

    iget v1, v3, Li1/w;->h:I

    aput v1, v4, v5

    const/4 v1, 0x4

    iget v2, v3, Li1/w;->i:I

    aput v2, v4, v1

    const/4 v1, 0x5

    aput v0, v4, v1

    const/4 v0, 0x6

    iget v1, v3, Li1/w;->k:I

    aput v1, v4, v0

    const/4 v0, 0x7

    iget v1, v3, Li1/w;->l:I

    aput v1, v4, v0

    iget v0, v3, Li1/w;->n:I

    aput v0, v4, v6

    const/16 v0, 0x9

    iget v1, v3, Li1/w;->o:I

    aput v1, v4, v0

    invoke-virtual {v3, v4}, Li1/w;->h([I)V

    :cond_3
    return-void
.end method
