.class public final synthetic Landroid/app/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewRootImpl$ActivityConfigCallback;
.implements Landroid/view/Window$OnWindowSwipeDismissedCallback;


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroid/app/b;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;I)V
    .locals 1

    iget-object v0, p0, Landroid/app/b;->a:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-static {v0, p1, p2}, Landroid/app/ActivityThread$ActivityClientRecord;->a(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;I)V

    return-void
.end method

.method public final onWindowSwipeDismissed()V
    .locals 1

    iget-object v0, p0, Landroid/app/b;->a:Ljava/lang/Object;

    check-cast v0, Landroid/app/Dialog;

    invoke-static {v0}, Landroid/app/Dialog;->a(Landroid/app/Dialog;)V

    return-void
.end method
