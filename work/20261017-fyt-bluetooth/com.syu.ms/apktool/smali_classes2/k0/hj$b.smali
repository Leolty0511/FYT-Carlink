.class public Lk0/hj$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/hj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/hj;


# direct methods
.method public constructor <init>(Lk0/hj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/hj$b;->a:Lk0/hj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->a0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget v0, Lu0/b;->f:I

    if-ne v0, v1, :cond_1

    .line 2
    sget v0, Ly0/f;->i:I

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lk0/hj$b;->a:Lk0/hj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lk0/hj;->Z2(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lk0/hj$b;->a:Lk0/hj;

    sget v1, Ly0/f;->c:I

    invoke-virtual {v0, v1}, Lk0/hj;->Z2(I)V

    :cond_1
    :goto_0
    return-void
.end method
