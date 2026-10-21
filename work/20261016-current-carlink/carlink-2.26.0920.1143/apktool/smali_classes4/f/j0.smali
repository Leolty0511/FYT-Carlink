.class public final Lf/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/sink/audio/AudioPlayer$Callback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 7

    .line 1
    const-string v0, "AHU.MAIN_ACTIVITY"

    .line 2
    .line 3
    const-string v1, "***************************** System onStart"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, v0, Lcom/syu/carlink/CarLinkService;->l:Lo/e;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    const/16 v3, 0x9e

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    new-array v4, v0, [I

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    aput v0, v4, v5

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v6, 0x0

    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {v1 .. v6}, Lo/e;->c(II[I[F[Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final onStop()V
    .locals 7

    .line 1
    const-string v0, "AHU.MAIN_ACTIVITY"

    .line 2
    .line 3
    const-string v1, "***************************** System onStart"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, v0, Lcom/syu/carlink/CarLinkService;->l:Lo/e;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    const/16 v3, 0x9e

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    new-array v4, v0, [I

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    aput v0, v4, v0

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v6, 0x0

    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {v1 .. v6}, Lo/e;->c(II[I[F[Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
