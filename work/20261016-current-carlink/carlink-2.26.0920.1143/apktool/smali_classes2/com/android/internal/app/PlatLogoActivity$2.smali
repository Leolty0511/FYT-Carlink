.class Lcom/android/internal/app/PlatLogoActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iput-object p2, p0, Lcom/android/internal/app/PlatLogoActivity$2;->val$im:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$2;->val$im:Landroid/widget/ImageView;

    .line 2
    .line 3
    new-instance v0, Lcom/android/internal/app/PlatLogoActivity$2$1;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/android/internal/app/PlatLogoActivity$2$1;-><init>(Lcom/android/internal/app/PlatLogoActivity$2;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    .line 12
    .line 13
    iget v0, p1, Lcom/android/internal/app/PlatLogoActivity;->mTapCount:I

    .line 14
    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    iput v0, p1, Lcom/android/internal/app/PlatLogoActivity;->mTapCount:I

    .line 18
    .line 19
    return-void
.end method
