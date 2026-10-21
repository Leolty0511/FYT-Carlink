.class public final synthetic Landroid/app/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewRootImpl$ConfigChangedCallback;


# instance fields
.field public final synthetic a:Landroid/app/ActivityThread;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ActivityThread;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/a;->a:Landroid/app/ActivityThread;

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Landroid/app/a;->a:Landroid/app/ActivityThread;

    invoke-static {v0, p1}, Landroid/app/ActivityThread;->a(Landroid/app/ActivityThread;Landroid/content/res/Configuration;)V

    return-void
.end method
