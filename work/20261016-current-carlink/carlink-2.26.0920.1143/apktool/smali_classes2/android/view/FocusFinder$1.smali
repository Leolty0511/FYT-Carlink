.class final Landroid/view/FocusFinder$1;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/FocusFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Landroid/view/FocusFinder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public initialValue()Landroid/view/FocusFinder;
    .locals 2

    .line 2
    new-instance v0, Landroid/view/FocusFinder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/FocusFinder;-><init>(Landroid/view/FocusFinder$1;)V

    return-object v0
.end method

.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/FocusFinder$1;->initialValue()Landroid/view/FocusFinder;

    move-result-object v0

    return-object v0
.end method
