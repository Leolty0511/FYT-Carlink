.class public Lk0/ll$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ll;


# direct methods
.method public constructor <init>(Lk0/ll;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ll$n;->a:Lk0/ll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v1, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appId_prev =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lk0/ll;->r0:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "////////DataMain.sAppId =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lu0/b;->D:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "////////caraudio =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lk0/ll$n;->a:Lk0/ll;

    iget v3, v3, Lk0/ll;->P:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 2
    sget v0, Lk0/ll;->r0:I

    sget v1, Lu0/b;->D:I

    if-eq v0, v1, :cond_4

    if-eqz v1, :cond_3

    const/16 v0, 0xd

    if-eq v1, v0, :cond_3

    const/4 v0, 0x2

    if-eq v1, v0, :cond_3

    .line 3
    iget-object v1, p0, Lk0/ll$n;->a:Lk0/ll;

    iget v2, v1, Lk0/ll;->P:I

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 4
    sget v2, Lk0/nt;->c:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    const/4 v5, 0x3

    if-eq v2, v5, :cond_1

    const/16 v6, 0xa

    if-ne v2, v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    new-array v1, v1, [I

    const/16 v2, 0xe3

    aput v2, v1, v3

    const/16 v2, 0x98

    aput v2, v1, v4

    const/4 v2, 0x4

    aput v2, v1, v0

    aput v3, v1, v5

    .line 5
    invoke-static {}, Lk0/ll;->i3()I

    move-result v0

    aput v0, v1, v2

    const/4 v0, 0x5

    aput v3, v1, v0

    const/4 v0, 0x6

    aput v3, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    invoke-static {v1, v4}, Lk0/ll;->h3(Lk0/ll;Z)V

    .line 7
    :cond_2
    :goto_1
    iget-object v0, p0, Lk0/ll$n;->a:Lk0/ll;

    iget-boolean v1, v0, Lk0/ll;->v:Z

    if-eqz v1, :cond_3

    .line 8
    invoke-static {v0, v3}, Lk0/ll;->e3(Lk0/ll;Z)V

    .line 9
    :cond_3
    sget v0, Lu0/b;->D:I

    sput v0, Lk0/ll;->r0:I

    :cond_4
    return-void
.end method
