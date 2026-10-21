.class public Lk0/rc$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/rc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/rc;


# direct methods
.method public constructor <init>(Lk0/rc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/rc$k;->a:Lk0/rc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Ll0/c0;->m()V

    .line 2
    sget v0, Lk0/nt;->a:I

    const v1, 0x340176

    if-eq v0, v1, :cond_0

    const v1, 0x3d0176

    if-eq v0, v1, :cond_0

    const v1, 0x350176

    if-eq v0, v1, :cond_0

    const v1, 0x360176

    if-eq v0, v1, :cond_0

    const v1, 0x370176

    if-eq v0, v1, :cond_0

    const v1, 0x380176

    if-eq v0, v1, :cond_0

    const v1, 0x390176

    if-eq v0, v1, :cond_0

    const v1, 0x3a0176

    if-eq v0, v1, :cond_0

    const v1, 0x3b0176

    if-eq v0, v1, :cond_0

    const v1, 0x4b0176

    if-ne v0, v1, :cond_6

    .line 3
    :cond_0
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v1, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataMain.sAppId 1111 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lu0/b;->D:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "--------- AppID_pre = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lk0/rc$k;->a:Lk0/rc;

    iget v3, v3, Lk0/rc;->p:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lk0/rc$k;->a:Lk0/rc;

    iget v0, v0, Lk0/rc;->p:I

    sget v1, Lu0/b;->D:I

    if-eq v0, v1, :cond_6

    const/16 v2, 0xb

    const/4 v3, 0x4

    if-eq v1, v2, :cond_1

    new-array v0, v3, [I

    .line 5
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    if-ne v1, v2, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/16 v2, 0xf

    if-ne v0, v2, :cond_5

    .line 6
    :cond_2
    sget-object v0, Lk0/nt;->g:[I

    const/16 v2, 0x1a4

    aget v4, v0, v2

    if-ne v4, v1, :cond_3

    new-array v0, v3, [I

    .line 7
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 8
    :cond_3
    aget v0, v0, v2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    new-array v0, v3, [I

    .line 9
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    new-array v0, v3, [I

    .line 10
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    .line 11
    :cond_5
    :goto_0
    iget-object v0, p0, Lk0/rc$k;->a:Lk0/rc;

    sget v1, Lu0/b;->D:I

    iput v1, v0, Lk0/rc;->p:I

    :cond_6
    return-void

    :array_0
    .array-data 4
        0xe3
        0xcf
        0x1
        0x4
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xcf
        0x1
        0x2
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xcf
        0x1
        0x3
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xcf
        0x1
        0x1
    .end array-data
.end method
