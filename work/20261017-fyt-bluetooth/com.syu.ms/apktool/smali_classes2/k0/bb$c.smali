.class public Lk0/bb$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/bb;


# direct methods
.method public constructor <init>(Lk0/bb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/bb$c;->a:Lk0/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/bb$c;->a:Lk0/bb;

    iget v1, v0, Lk0/bb;->g:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 2
    iput v2, v0, Lk0/bb;->g:I

    .line 3
    invoke-static {v0}, Lk0/bb;->b3(Lk0/bb;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/bb$c;->a:Lk0/bb;

    invoke-static {v0}, Lk0/bb;->b3(Lk0/bb;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lk0/bb$c;->a:Lk0/bb;

    iget v0, v0, Lk0/bb;->g:I

    if-lez v0, :cond_1

    .line 6
    invoke-static {}, Ll0/c0;->x0()V

    :cond_1
    return-void
.end method
