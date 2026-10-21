.class public Lg/j$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lg/j;


# direct methods
.method public constructor <init>(Lg/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/j$d;->b:Lg/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lg/j$d;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget v0, p0, Lg/j$d;->a:I

    sget v1, Lu0/b;->n4:I

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iput v1, p0, Lg/j$d;->a:I

    if-nez v1, :cond_1

    .line 3
    new-instance v0, Lj1/c;

    const-string/jumbo v1, "setParameter"

    invoke-direct {v0, v1}, Lj1/c;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {}, La/f;->f()Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj1/c;->g(Ljava/lang/Object;)Lj1/c;

    move-result-object v0

    const-class v1, Landroid/media/AudioManager;

    .line 5
    invoke-virtual {v0, v1}, Lj1/c;->e(Ljava/lang/Class;)Lj1/c;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "handleFm"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "0"

    aput-object v3, v1, v2

    .line 6
    invoke-virtual {v0, v1}, Lj1/c;->d([Ljava/lang/Object;)Lj1/c;

    move-result-object v0

    invoke-virtual {v0}, Lj1/c;->a()Ljava/lang/Object;

    :cond_1
    return-void
.end method
