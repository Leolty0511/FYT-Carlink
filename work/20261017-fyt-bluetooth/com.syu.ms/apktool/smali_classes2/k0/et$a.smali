.class public Lk0/et$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/et;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/et;


# direct methods
.method public constructor <init>(Lk0/et;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/et$a;->a:Lk0/et;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    :try_start_0
    invoke-static {}, Ly0/j;->a3()Ly0/j;

    move-result-object v0

    const/16 v1, 0x16

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4, v4}, Lbase/b;->Z0(I[I[F[Ljava/lang/String;)V

    const-string v0, "tag"

    const-string v1, "-------\u7533\u8bf7\u64ad\u653e\u63d0\u793a\u97f3---"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lk0/et$a;->a:Lk0/et;

    iget v1, v0, Lk0/et;->u:I

    if-ne v1, v2, :cond_0

    .line 4
    iget-object v3, v0, Lk0/et;->t:Landroid/media/SoundPool;

    sget v4, Lu0/b;->K3:I

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I

    const-string v0, "sound"

    const-string v1, "\u64ad\u653e\u63d0\u793a\u97f3---"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    iget-object v0, p0, Lk0/et$a;->a:Lk0/et;

    iget v1, v0, Lk0/et;->u:I

    add-int/2addr v1, v2

    iput v1, v0, Lk0/et;->u:I

    const/4 v0, 0x3

    if-le v1, v0, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
