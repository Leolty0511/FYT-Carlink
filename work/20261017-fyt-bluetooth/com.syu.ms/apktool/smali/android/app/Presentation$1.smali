.class final Landroid/app/Presentation$1;
.super Landroid/view/ContextThemeWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/Presentation;->createPresentationContext(Landroid/content/Context;Landroid/view/Display;I)Landroid/content/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$displayWindowManager:Landroid/view/WindowManagerImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/view/WindowManagerImpl;)V
    .locals 0

    .line 1
    iput-object p3, p0, Landroid/app/Presentation$1;->val$displayWindowManager:Landroid/view/WindowManagerImpl;

    invoke-direct {p0, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string/jumbo v0, "window"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Landroid/app/Presentation$1;->val$displayWindowManager:Landroid/view/WindowManagerImpl;

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
