.class public final synthetic Landroid/app/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/util/ArrayMap;

.field public final synthetic c:Landroid/transition/TransitionSet;

.field public final synthetic d:Landroid/app/FragmentTransition$FragmentContainerTransition;

.field public final synthetic e:Ljava/util/ArrayList;

.field public final synthetic f:Landroid/view/View;

.field public final synthetic g:Landroid/app/Fragment;

.field public final synthetic h:Landroid/app/Fragment;

.field public final synthetic i:Z

.field public final synthetic j:Ljava/util/ArrayList;

.field public final synthetic k:Landroid/transition/Transition;

.field public final synthetic l:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArrayMap;Landroid/transition/TransitionSet;Landroid/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Landroid/app/Fragment;Landroid/app/Fragment;ZLjava/util/ArrayList;Landroid/transition/Transition;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/j;->b:Landroid/util/ArrayMap;

    iput-object p2, p0, Landroid/app/j;->c:Landroid/transition/TransitionSet;

    iput-object p3, p0, Landroid/app/j;->d:Landroid/app/FragmentTransition$FragmentContainerTransition;

    iput-object p4, p0, Landroid/app/j;->e:Ljava/util/ArrayList;

    iput-object p5, p0, Landroid/app/j;->f:Landroid/view/View;

    iput-object p6, p0, Landroid/app/j;->g:Landroid/app/Fragment;

    iput-object p7, p0, Landroid/app/j;->h:Landroid/app/Fragment;

    iput-boolean p8, p0, Landroid/app/j;->i:Z

    iput-object p9, p0, Landroid/app/j;->j:Ljava/util/ArrayList;

    iput-object p10, p0, Landroid/app/j;->k:Landroid/transition/Transition;

    iput-object p11, p0, Landroid/app/j;->l:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Landroid/app/j;->b:Landroid/util/ArrayMap;

    iget-object v1, p0, Landroid/app/j;->c:Landroid/transition/TransitionSet;

    iget-object v2, p0, Landroid/app/j;->d:Landroid/app/FragmentTransition$FragmentContainerTransition;

    iget-object v3, p0, Landroid/app/j;->e:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/app/j;->f:Landroid/view/View;

    iget-object v5, p0, Landroid/app/j;->g:Landroid/app/Fragment;

    iget-object v6, p0, Landroid/app/j;->h:Landroid/app/Fragment;

    iget-boolean v7, p0, Landroid/app/j;->i:Z

    iget-object v8, p0, Landroid/app/j;->j:Ljava/util/ArrayList;

    iget-object v9, p0, Landroid/app/j;->k:Landroid/transition/Transition;

    iget-object v10, p0, Landroid/app/j;->l:Landroid/graphics/Rect;

    invoke-static/range {v0 .. v10}, Landroid/app/FragmentTransition;->a(Landroid/util/ArrayMap;Landroid/transition/TransitionSet;Landroid/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Landroid/app/Fragment;Landroid/app/Fragment;ZLjava/util/ArrayList;Landroid/transition/Transition;Landroid/graphics/Rect;)V

    return-void
.end method
