.class public final Landroid/media/VolumeShaper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/VolumeShaper$State;,
        Landroid/media/VolumeShaper$Operation;,
        Landroid/media/VolumeShaper$Configuration;
    }
.end annotation


# instance fields
.field private mId:I

.field private final mWeakPlayerBase:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/PlayerBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/media/VolumeShaper$Configuration;Landroid/media/PlayerBase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/media/VolumeShaper;->mWeakPlayerBase:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    new-instance p2, Landroid/media/VolumeShaper$Operation$Builder;

    .line 12
    .line 13
    invoke-direct {p2}, Landroid/media/VolumeShaper$Operation$Builder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/media/VolumeShaper$Operation$Builder;->defer()Landroid/media/VolumeShaper$Operation$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p2}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/media/VolumeShaper;->applyPlayer(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iput p1, p0, Landroid/media/VolumeShaper;->mId:I

    .line 29
    .line 30
    return-void
.end method

.method private applyPlayer(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/VolumeShaper;->mWeakPlayerBase:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/media/PlayerBase;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Landroid/media/PlayerBase;->playerApplyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-gez p1, :cond_1

    .line 18
    .line 19
    const/16 p2, -0x26

    .line 20
    .line 21
    if-ne p1, p2, :cond_0

    .line 22
    .line 23
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string/jumbo p2, "player or VolumeShaper deallocated"

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    const-string/jumbo v0, "invalid configuration or operation: "

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p2

    .line 45
    :cond_1
    return p1

    .line 46
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string/jumbo p2, "player deallocated"

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string/jumbo p2, "uninitialized shaper"

    .line 58
    .line 59
    .line 60
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1
.end method

.method private getStatePlayer(I)Landroid/media/VolumeShaper$State;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/VolumeShaper;->mWeakPlayerBase:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/media/PlayerBase;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/media/PlayerBase;->playerGetVolumeShaperState(I)Landroid/media/VolumeShaper$State;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string/jumbo v0, "shaper cannot be found"

    .line 23
    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string/jumbo v0, "player deallocated"

    .line 32
    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    const-string/jumbo v0, "uninitialized shaper"

    .line 41
    .line 42
    .line 43
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1
.end method


# virtual methods
.method public apply(Landroid/media/VolumeShaper$Operation;)V
    .locals 2

    new-instance v0, Landroid/media/VolumeShaper$Configuration;

    iget v1, p0, Landroid/media/VolumeShaper;->mId:I

    invoke-direct {v0, v1}, Landroid/media/VolumeShaper$Configuration;-><init>(I)V

    invoke-direct {p0, v0, p1}, Landroid/media/VolumeShaper;->applyPlayer(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I

    return-void
.end method

.method public close()V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroid/media/VolumeShaper$Configuration;

    .line 2
    .line 3
    iget v1, p0, Landroid/media/VolumeShaper;->mId:I

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/media/VolumeShaper$Configuration;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroid/media/VolumeShaper$Operation$Builder;

    .line 9
    .line 10
    invoke-direct {v1}, Landroid/media/VolumeShaper$Operation$Builder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/media/VolumeShaper$Operation$Builder;->terminate()Landroid/media/VolumeShaper$Operation$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {p0, v0, v1}, Landroid/media/VolumeShaper;->applyPlayer(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    :catch_0
    iget-object v0, p0, Landroid/media/VolumeShaper;->mWeakPlayerBase:Ljava/lang/ref/WeakReference;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Landroid/media/VolumeShaper;->close()V

    return-void
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Landroid/media/VolumeShaper;->mId:I

    return v0
.end method

.method public getVolume()F
    .locals 1

    iget v0, p0, Landroid/media/VolumeShaper;->mId:I

    invoke-direct {p0, v0}, Landroid/media/VolumeShaper;->getStatePlayer(I)Landroid/media/VolumeShaper$State;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/VolumeShaper$State;->getVolume()F

    move-result v0

    return v0
.end method

.method public replace(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;Z)V
    .locals 1

    .line 1
    new-instance v0, Landroid/media/VolumeShaper$Operation$Builder;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Landroid/media/VolumeShaper$Operation$Builder;-><init>(Landroid/media/VolumeShaper$Operation;)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/media/VolumeShaper;->mId:I

    .line 7
    .line 8
    invoke-virtual {v0, p2, p3}, Landroid/media/VolumeShaper$Operation$Builder;->replace(IZ)Landroid/media/VolumeShaper$Operation$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p2}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/media/VolumeShaper;->applyPlayer(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iput p1, p0, Landroid/media/VolumeShaper;->mId:I

    .line 21
    .line 22
    return-void
.end method
