.class public Lcom/android/internal/app/RestrictionsPinActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/RestrictionsPinActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/internal/app/RestrictionsPinActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/RestrictionsPinActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/app/RestrictionsPinActivity$a;->a:Lcom/android/internal/app/RestrictionsPinActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/RestrictionsPinActivity$a;->a:Lcom/android/internal/app/RestrictionsPinActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/internal/app/RestrictionsPinActivity;->b(Lcom/android/internal/app/RestrictionsPinActivity;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/internal/app/RestrictionsPinActivity$a;->a:Lcom/android/internal/app/RestrictionsPinActivity;

    iget-object v0, v0, Lcom/android/internal/app/RestrictionsPinActivity;->f:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
