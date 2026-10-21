.class public Lk0/ye$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ye;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ye;


# direct methods
.method public constructor <init>(Lk0/ye;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ye$b;->a:Lk0/ye;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/ye$b;->a:Lk0/ye;

    iget v1, v0, Lk0/ye;->j:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 2
    iput v2, v0, Lk0/ye;->j:I

    .line 3
    invoke-static {v0}, Lk0/ye;->a3(Lk0/ye;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/ye$b;->a:Lk0/ye;

    invoke-static {v0}, Lk0/ye;->a3(Lk0/ye;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lk0/ye$b;->a:Lk0/ye;

    iget v0, v0, Lk0/ye;->j:I

    if-lez v0, :cond_1

    .line 6
    invoke-static {}, Ll0/c0;->u0()V

    :cond_1
    return-void
.end method
