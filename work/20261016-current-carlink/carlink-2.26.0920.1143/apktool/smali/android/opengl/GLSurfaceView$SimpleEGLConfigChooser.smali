.class Landroid/opengl/GLSurfaceView$SimpleEGLConfigChooser;
.super Landroid/opengl/GLSurfaceView$ComponentSizeChooser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SimpleEGLConfigChooser"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>(Landroid/opengl/GLSurfaceView;Z)V
    .locals 8

    .line 1
    iput-object p1, p0, Landroid/opengl/GLSurfaceView$SimpleEGLConfigChooser;->this$0:Landroid/opengl/GLSurfaceView;

    .line 2
    .line 3
    const/16 v2, 0x8

    .line 4
    .line 5
    const/16 v3, 0x8

    .line 6
    .line 7
    const/16 v4, 0x8

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    const/16 p2, 0x10

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p2, 0x0

    .line 16
    :goto_0
    move v6, p2

    .line 17
    const/4 v7, 0x0

    .line 18
    move-object v0, p0

    .line 19
    move-object v1, p1

    .line 20
    invoke-direct/range {v0 .. v7}, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;-><init>(Landroid/opengl/GLSurfaceView;IIIIII)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
