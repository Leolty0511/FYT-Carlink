.class public Ly0/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Ly0/f;->Z:I

    if-nez v0, :cond_1

    .line 2
    sget v0, Lk0/nt;->v:I

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lk0/nt;->d:Lk0/lt;

    sget v1, Ly0/f;->a0:I

    invoke-virtual {v0, v1}, Lk0/lt;->Q2(I)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Ly0/f;->b:Ly0/e;

    instance-of v1, v0, Lmodule/sound/AudioDevice;

    if-nez v1, :cond_3

    .line 5
    sget v1, Ly0/f;->a0:I

    invoke-virtual {v0, v1}, Ly0/e;->h(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 6
    sget v0, Lk0/nt;->v:I

    if-eqz v0, :cond_2

    .line 7
    sget-object v0, Lk0/nt;->d:Lk0/lt;

    sget v1, Ly0/f;->a0:I

    invoke-virtual {v0, v1}, Lk0/lt;->Q2(I)V

    goto :goto_0

    .line 8
    :cond_2
    sget-object v0, Ly0/f;->b:Ly0/e;

    instance-of v1, v0, Lmodule/sound/AudioDevice;

    if-nez v1, :cond_3

    .line 9
    sget v1, Ly0/f;->a0:I

    invoke-virtual {v0, v1}, Ly0/e;->h(I)V

    :cond_3
    :goto_0
    return-void
.end method
