.class public Lk0/jl$p;
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
    iput-object p1, p0, Lk0/jl$p;->a:Lk0/jl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/jl$p;->a:Lk0/jl;

    invoke-static {v0}, Lk0/jl;->t3(Lk0/jl;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    return-void
.end method
