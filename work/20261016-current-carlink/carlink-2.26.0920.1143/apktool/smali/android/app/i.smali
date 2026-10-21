.class public final synthetic Landroid/app/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/transition/Transition;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Landroid/app/Fragment;

.field public final synthetic e:Ljava/util/ArrayList;

.field public final synthetic f:Ljava/util/ArrayList;

.field public final synthetic g:Ljava/util/ArrayList;

.field public final synthetic h:Landroid/transition/Transition;


# direct methods
.method public synthetic constructor <init>(Landroid/transition/Transition;Landroid/view/View;Landroid/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/i;->b:Landroid/transition/Transition;

    iput-object p2, p0, Landroid/app/i;->c:Landroid/view/View;

    iput-object p3, p0, Landroid/app/i;->d:Landroid/app/Fragment;

    iput-object p4, p0, Landroid/app/i;->e:Ljava/util/ArrayList;

    iput-object p5, p0, Landroid/app/i;->f:Ljava/util/ArrayList;

    iput-object p6, p0, Landroid/app/i;->g:Ljava/util/ArrayList;

    iput-object p7, p0, Landroid/app/i;->h:Landroid/transition/Transition;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Landroid/app/i;->b:Landroid/transition/Transition;

    iget-object v1, p0, Landroid/app/i;->c:Landroid/view/View;

    iget-object v2, p0, Landroid/app/i;->d:Landroid/app/Fragment;

    iget-object v3, p0, Landroid/app/i;->e:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/app/i;->f:Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/app/i;->g:Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/app/i;->h:Landroid/transition/Transition;

    invoke-static/range {v0 .. v6}, Landroid/app/FragmentTransition;->b(Landroid/transition/Transition;Landroid/view/View;Landroid/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;)V

    return-void
.end method
