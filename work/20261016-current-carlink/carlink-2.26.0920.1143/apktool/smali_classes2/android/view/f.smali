.class public final synthetic Landroid/view/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/view/SurfaceView$3;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceView$3;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/f;->b:Landroid/view/SurfaceView$3;

    iput-boolean p2, p0, Landroid/view/f;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/view/f;->b:Landroid/view/SurfaceView$3;

    iget-boolean v1, p0, Landroid/view/f;->c:Z

    invoke-static {v0, v1}, Landroid/view/SurfaceView$3;->a(Landroid/view/SurfaceView$3;Z)V

    return-void
.end method
