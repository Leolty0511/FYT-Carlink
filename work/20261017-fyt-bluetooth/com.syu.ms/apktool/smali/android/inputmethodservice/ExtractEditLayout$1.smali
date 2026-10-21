.class Landroid/inputmethodservice/ExtractEditLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/ExtractEditLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/inputmethodservice/ExtractEditLayout;


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/ExtractEditLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/inputmethodservice/ExtractEditLayout$1;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout$1;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    iget-object v1, v0, Landroid/inputmethodservice/ExtractEditLayout;->mActionMode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Lcom/android/internal/view/menu/e;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Landroid/inputmethodservice/ExtractEditLayout$1;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    iget-object v2, v2, Landroid/inputmethodservice/ExtractEditLayout;->mActionMode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

    iget-object v2, v2, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mMenu:Lcom/android/internal/view/menu/c;

    invoke-direct {v1, v0, v2, p1}, Lcom/android/internal/view/menu/e;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/c;Landroid/view/View;)V

    invoke-virtual {v1}, Lcom/android/internal/view/menu/e;->r()V

    :cond_0
    return-void
.end method
