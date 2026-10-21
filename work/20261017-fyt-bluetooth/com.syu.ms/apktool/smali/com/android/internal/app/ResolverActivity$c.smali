.class public Lcom/android/internal/app/ResolverActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$c;->a:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/android/internal/app/ResolverActivity$c;->a:Lcom/android/internal/app/ResolverActivity;

    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity;->b(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$e;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/internal/app/ResolverActivity$e;->f(I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/android/internal/app/ResolverActivity$c;->a:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {p2, p1}, Lcom/android/internal/app/ResolverActivity;->m(Landroid/content/pm/ResolveInfo;)V

    const/4 p1, 0x1

    return p1
.end method
