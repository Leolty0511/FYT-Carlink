.class Lcom/android/internal/app/ChooserActivity$RowScale$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity$RowScale;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity$RowScale;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ChooserActivity$RowScale;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$RowScale$2;->this$0:Lcom/android/internal/app/ChooserActivity$RowScale;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity$RowScale$2;->this$0:Lcom/android/internal/app/ChooserActivity$RowScale;

    iget-object p1, p1, Lcom/android/internal/app/ChooserActivity$RowScale;->mAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->onAnimationEnd()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity$RowScale$2;->this$0:Lcom/android/internal/app/ChooserActivity$RowScale;

    iget-object p1, p1, Lcom/android/internal/app/ChooserActivity$RowScale;->mAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->onAnimationStart()V

    return-void
.end method
