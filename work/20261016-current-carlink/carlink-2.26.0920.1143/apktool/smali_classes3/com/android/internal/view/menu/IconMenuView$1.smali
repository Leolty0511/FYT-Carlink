.class Lcom/android/internal/view/menu/IconMenuView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/menu/IconMenuView;->createMoreItemView()Lcom/android/internal/view/menu/IconMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/IconMenuView;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/IconMenuView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/view/menu/IconMenuView$1;->this$0:Lcom/android/internal/view/menu/IconMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/android/internal/view/menu/IconMenuView$1;->this$0:Lcom/android/internal/view/menu/IconMenuView;

    invoke-static {p1}, Lcom/android/internal/view/menu/IconMenuView;->access$000(Lcom/android/internal/view/menu/IconMenuView;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->changeMenuMode()V

    return-void
.end method
