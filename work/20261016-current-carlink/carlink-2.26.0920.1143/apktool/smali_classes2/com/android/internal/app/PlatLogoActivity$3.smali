.class Lcom/android/internal/app/PlatLogoActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/PlatLogoActivity;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/PlatLogoActivity;

.field final synthetic val$im:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/PlatLogoActivity;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$3;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iput-object p2, p0, Lcom/android/internal/app/PlatLogoActivity$3;->val$im:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 p1, 0x4

    .line 2
    if-eq p2, p1, :cond_2

    .line 3
    .line 4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_2

    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$3;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    .line 11
    .line 12
    iget p2, p1, Lcom/android/internal/app/PlatLogoActivity;->mKeyCount:I

    .line 13
    .line 14
    const/4 p3, 0x1

    .line 15
    add-int/2addr p2, p3

    .line 16
    iput p2, p1, Lcom/android/internal/app/PlatLogoActivity;->mKeyCount:I

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    if-le p2, v0, :cond_1

    .line 20
    .line 21
    iget p1, p1, Lcom/android/internal/app/PlatLogoActivity;->mTapCount:I

    .line 22
    .line 23
    const/4 p2, 0x5

    .line 24
    if-le p1, p2, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$3;->val$im:Landroid/widget/ImageView;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/View;->performLongClick()Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$3;->val$im:Landroid/widget/ImageView;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    return p3

    .line 38
    :cond_2
    const/4 p1, 0x0

    .line 39
    return p1
.end method
