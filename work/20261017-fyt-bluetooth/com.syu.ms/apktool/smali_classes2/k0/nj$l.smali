.class public Lk0/nj$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/nj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/nj;


# direct methods
.method public constructor <init>(Lk0/nj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/nj$l;->a:Lk0/nj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/nj$l;->a:Lk0/nj;

    iget-byte v1, v0, Lk0/nj;->H:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, v0, Lk0/nj;->H:B

    const/16 v2, 0x14

    if-ne v1, v2, :cond_1

    .line 2
    iget v0, v0, Lk0/nj;->h:I

    const/16 v1, 0x81

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget v0, Lu0/b;->f:I

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Lu0/d;->U1(I)V

    .line 5
    iget-object v0, p0, Lk0/nj$l;->a:Lk0/nj;

    invoke-static {v0}, Lk0/nj;->k3(Lk0/nj;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
