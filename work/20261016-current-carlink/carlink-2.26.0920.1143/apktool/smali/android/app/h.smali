.class public final synthetic Landroid/app/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/app/Fragment;

.field public final synthetic c:Landroid/app/Fragment;

.field public final synthetic d:Z

.field public final synthetic e:Landroid/util/ArrayMap;

.field public final synthetic f:Landroid/view/View;

.field public final synthetic g:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/h;->b:Landroid/app/Fragment;

    iput-object p2, p0, Landroid/app/h;->c:Landroid/app/Fragment;

    iput-boolean p3, p0, Landroid/app/h;->d:Z

    iput-object p4, p0, Landroid/app/h;->e:Landroid/util/ArrayMap;

    iput-object p5, p0, Landroid/app/h;->f:Landroid/view/View;

    iput-object p6, p0, Landroid/app/h;->g:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Landroid/app/h;->b:Landroid/app/Fragment;

    iget-object v1, p0, Landroid/app/h;->c:Landroid/app/Fragment;

    iget-boolean v2, p0, Landroid/app/h;->d:Z

    iget-object v3, p0, Landroid/app/h;->e:Landroid/util/ArrayMap;

    iget-object v4, p0, Landroid/app/h;->f:Landroid/view/View;

    iget-object v5, p0, Landroid/app/h;->g:Landroid/graphics/Rect;

    invoke-static/range {v0 .. v5}, Landroid/app/FragmentTransition;->d(Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method
