.class public Lcom/android/internal/view/menu/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/menu/d;->setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/internal/view/menu/d;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/view/menu/d$a;->a:Lcom/android/internal/view/menu/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionProviderVisibilityChanged(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/internal/view/menu/d$a;->a:Lcom/android/internal/view/menu/d;

    invoke-static {p1}, Lcom/android/internal/view/menu/d;->a(Lcom/android/internal/view/menu/d;)Lcom/android/internal/view/menu/c;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/view/menu/d$a;->a:Lcom/android/internal/view/menu/d;

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/c;->C(Lcom/android/internal/view/menu/d;)V

    return-void
.end method
