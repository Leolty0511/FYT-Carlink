.class public Lk0/qj$c;
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
    iput-object p1, p0, Lk0/qj$c;->a:Lk0/qj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/qj$c;->a:Lk0/qj;

    iget-byte v1, v0, Lk0/qj;->N:B

    const/4 v2, 0x1

    add-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lk0/qj;->N:B

    const/16 v3, 0x14

    if-ne v1, v3, :cond_1

    .line 2
    iget v0, v0, Lk0/qj;->h:I

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget v0, Lu0/b;->f:I

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Lu0/d;->U1(I)V

    .line 5
    iget-object v0, p0, Lk0/qj$c;->a:Lk0/qj;

    invoke-static {v0}, Lk0/qj;->n3(Lk0/qj;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
