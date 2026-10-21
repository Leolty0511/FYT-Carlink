.class public Lk0/jl$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/jl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/jl;


# direct methods
.method public constructor <init>(Lk0/jl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/jl$l;->a:Lk0/jl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/jl$l;->a:Lk0/jl;

    iget v1, v0, Lk0/jl;->P:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lk0/jl;->P:I

    const/4 v3, 0x0

    const/4 v4, 0x7

    if-le v1, v4, :cond_0

    .line 2
    iput v3, v0, Lk0/jl;->P:I

    :cond_0
    const/16 v1, 0x15

    new-array v2, v2, [I

    .line 3
    iget v0, v0, Lk0/jl;->P:I

    aput v0, v2, v3

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    return-void
.end method
