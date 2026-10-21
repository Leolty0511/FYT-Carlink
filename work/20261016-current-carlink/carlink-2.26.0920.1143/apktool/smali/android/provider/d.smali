.class public final synthetic Landroid/provider/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Landroid/os/CancellationSignal;

.field public final synthetic d:Landroid/provider/FontRequest;

.field public final synthetic e:Landroid/os/Handler;

.field public final synthetic f:Landroid/provider/FontsContract$FontRequestCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/provider/FontRequest;Landroid/os/Handler;Landroid/provider/FontsContract$FontRequestCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/provider/d;->b:Landroid/content/Context;

    iput-object p2, p0, Landroid/provider/d;->c:Landroid/os/CancellationSignal;

    iput-object p3, p0, Landroid/provider/d;->d:Landroid/provider/FontRequest;

    iput-object p4, p0, Landroid/provider/d;->e:Landroid/os/Handler;

    iput-object p5, p0, Landroid/provider/d;->f:Landroid/provider/FontsContract$FontRequestCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Landroid/provider/d;->e:Landroid/os/Handler;

    iget-object v1, p0, Landroid/provider/d;->f:Landroid/provider/FontsContract$FontRequestCallback;

    iget-object v2, p0, Landroid/provider/d;->b:Landroid/content/Context;

    iget-object v3, p0, Landroid/provider/d;->c:Landroid/os/CancellationSignal;

    iget-object v4, p0, Landroid/provider/d;->d:Landroid/provider/FontRequest;

    invoke-static {v2, v3, v4, v0, v1}, Landroid/provider/FontsContract;->k(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/provider/FontRequest;Landroid/os/Handler;Landroid/provider/FontsContract$FontRequestCallback;)V

    return-void
.end method
